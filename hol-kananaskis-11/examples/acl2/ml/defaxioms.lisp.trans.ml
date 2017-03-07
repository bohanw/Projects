
val _ = current_package :=
 implode(map chr (cons 65 (cons 67 (cons 76 (cons 50 nil)))));

val _ = sexp.acl2_list_ref := [

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "IFF") (mkpair (
mkpair (mksym "ACL2" "P") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "P") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "Q") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" 
"Q") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BOOLEANP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "P") (mkpair (mksym "ACL2" "Q") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mksym "ACL2" "P") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym 
"ACL2" "Q") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "P") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "P") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "HIDE") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LIST-MACRO") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "CONS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"LIST-MACRO") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "AND-MACRO") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "IF") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"AND-MACRO") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "OR-MACRO") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "IF") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"OR-MACRO") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "INTEGER-ABS") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "XXXJOIN") (
mkpair (mkpair (mksym "ACL2" "FN") (mkpair (mksym "ACL2" "ARGS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "ARGS") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "FN") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ARGS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "XXXJOIN") (mkpair (mksym "ACL2" "FN") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ARGS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "FN") (mkpair (mksym "ACL2" "ARGS") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LEN") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"LEN") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LENGTH") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "LEN") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "LEN") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ACL2-COUNT") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "ACL2" "ACL2-COUNT") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "ACL2-COUNT") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "INTEGER-ABS") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym 
"ACL2" "INTEGER-ABS") (mkpair (mkpair (mksym "COMMON-LISP" "NUMERATOR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "ACL2" "ACL2-COUNT") (mkpair (mkpair (mksym 
"COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ACL2-COUNT") (mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COND-CLAUSESP") (
mkpair (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "TRUE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "ACL2" "LEN") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "3" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "COND-CLAUSESP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "CLAUSES") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COND-MACRO") (
mkpair (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "IF") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "CLAUSES") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" "COND-MACRO") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "CLAUSES") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EQLABLEP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EQLABLE-LISTP") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "EQLABLEP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "EQLABLE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "L") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MAKE-CHARACTER-LIST") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"MAKE-CHARACTER-LIST") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"MAKE-CHARACTER-LIST") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EQLABLE-ALISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "EQLABLEP") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"EQLABLE-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ALISTP") (mkpair (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ACONS") (
mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "DATUM") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "DATUM") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MUST-BE-EQUAL") (
mkpair (mkpair (mksym "ACL2" "LOGIC") (mkpair (mksym "ACL2" "EXEC") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "LOGIC") (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MEMBER-EQUAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "UNION-EQUAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "UNION-EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "UNION-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SUBSETP-EQUAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "SUBSETP-EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SYMBOL-LISTP") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "NULL") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MEMBER-EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SUBSETP-EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "SUBSETP-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SYMBOL-ALISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASSOC-EQUAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"ASSOC-EQ-EQUAL-ALISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ-EQUAL-ALISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASSOC-EQ-EQUAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ-EQUAL") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"NO-DUPLICATESP-EQUAL") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"NO-DUPLICATESP-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRIP-CARS") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "STRIP-CARS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "EQL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "=") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "/=") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ZP") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ZIP") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "=") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "NTH") (
mkpair (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym 
"ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "CHAR") (
mkpair (mkpair (mksym "ACL2" "S") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (
mksym "ACL2" "S") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PROPER-CONSP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "IMPROPER-CONSP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"CONJUGATE") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (mkpair (mkpair (mksym 
"COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mkpair (mksym 
"COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PROG2$") (mkpair (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TIME$") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FIX") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FORCE") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"IMMEDIATE-FORCE-MODEP") (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (chars_to_string (cons 83 (
cons 101 (cons 101 (cons 32 (cons 58 (cons 68 (cons 79 (cons 67 (cons 32 (
cons 105 (cons 109 (cons 109 (cons 101 (cons 100 (cons 105 (cons 97 (cons 116 (
cons 101 (cons 45 (cons 102 (cons 111 (cons 114 (cons 99 (cons 101 (cons 45 (
cons 109 (cons 111 (cons 100 (cons 101 (cons 112 (cons 46 nil))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CASE-SPLIT") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SYNP") (mkpair (
mkpair (mksym "ACL2" "VARS") (mkpair (mksym "ACL2" "FORM") (mkpair (mksym 
"ACL2" "TERM") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "MEMBER") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "NO-DUPLICATESP") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "NO-DUPLICATESP") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ASSOC") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"ASSOC") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"R-EQLABLE-ALISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "EQLABLEP") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "R-EQLABLE-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "RASSOC") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"RASSOC") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RASSOC-EQUAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"RASSOC-EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "R-SYMBOL-ALISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"R-SYMBOL-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RASSOC-EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"RASSOC-EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"STANDARD-CHAR-P") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 10) (mkpair (mkchr 32) (mkpair (
mkchr 33) (mkpair (mkchr 34) (mkpair (mkchr 35) (mkpair (mkchr 36) (mkpair (
mkchr 37) (mkpair (mkchr 38) (mkpair (mkchr 39) (mkpair (mkchr 40) (mkpair (
mkchr 41) (mkpair (mkchr 42) (mkpair (mkchr 43) (mkpair (mkchr 44) (mkpair (
mkchr 45) (mkpair (mkchr 46) (mkpair (mkchr 47) (mkpair (mkchr 48) (mkpair (
mkchr 49) (mkpair (mkchr 50) (mkpair (mkchr 51) (mkpair (mkchr 52) (mkpair (
mkchr 53) (mkpair (mkchr 54) (mkpair (mkchr 55) (mkpair (mkchr 56) (mkpair (
mkchr 57) (mkpair (mkchr 58) (mkpair (mkchr 59) (mkpair (mkchr 60) (mkpair (
mkchr 61) (mkpair (mkchr 62) (mkpair (mkchr 63) (mkpair (mkchr 64) (mkpair (
mkchr 65) (mkpair (mkchr 66) (mkpair (mkchr 67) (mkpair (mkchr 68) (mkpair (
mkchr 69) (mkpair (mkchr 70) (mkpair (mkchr 71) (mkpair (mkchr 72) (mkpair (
mkchr 73) (mkpair (mkchr 74) (mkpair (mkchr 75) (mkpair (mkchr 76) (mkpair (
mkchr 77) (mkpair (mkchr 78) (mkpair (mkchr 79) (mkpair (mkchr 80) (mkpair (
mkchr 81) (mkpair (mkchr 82) (mkpair (mkchr 83) (mkpair (mkchr 84) (mkpair (
mkchr 85) (mkpair (mkchr 86) (mkpair (mkchr 87) (mkpair (mkchr 88) (mkpair (
mkchr 89) (mkpair (mkchr 90) (mkpair (mkchr 91) (mkpair (mkchr 92) (mkpair (
mkchr 93) (mkpair (mkchr 94) (mkpair (mkchr 95) (mkpair (mkchr 96) (mkpair (
mkchr 97) (mkpair (mkchr 98) (mkpair (mkchr 99) (mkpair (mkchr 100) (mkpair (
mkchr 101) (mkpair (mkchr 102) (mkpair (mkchr 103) (mkpair (mkchr 104) (
mkpair (mkchr 105) (mkpair (mkchr 106) (mkpair (mkchr 107) (mkpair (mkchr 108) (
mkpair (mkchr 109) (mkpair (mkchr 110) (mkpair (mkchr 111) (mkpair (mkchr 112) (
mkpair (mkchr 113) (mkpair (mkchr 114) (mkpair (mkchr 115) (mkpair (mkchr 116) (
mkpair (mkchr 117) (mkpair (mkchr 118) (mkpair (mkchr 119) (mkpair (mkchr 120) (
mkpair (mkchr 121) (mkpair (mkchr 122) (mkpair (mkchr 123) (mkpair (mkchr 124) (
mkpair (mkchr 125) (mkpair (mkchr 126) (mksym "COMMON-LISP" "NIL"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STANDARD-CHAR-LISTP") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "STANDARD-CHAR-P") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"STANDARD-CHAR-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CHARACTER-LISTP") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "CHARACTER-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "STRING") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (
mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "STRING") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"ALPHA-CHAR-P") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 97) (mkpair (mkchr 98) (mkpair (
mkchr 99) (mkpair (mkchr 100) (mkpair (mkchr 101) (mkpair (mkchr 102) (mkpair (
mkchr 103) (mkpair (mkchr 104) (mkpair (mkchr 105) (mkpair (mkchr 106) (
mkpair (mkchr 107) (mkpair (mkchr 108) (mkpair (mkchr 109) (mkpair (mkchr 110) (
mkpair (mkchr 111) (mkpair (mkchr 112) (mkpair (mkchr 113) (mkpair (mkchr 114) (
mkpair (mkchr 115) (mkpair (mkchr 116) (mkpair (mkchr 117) (mkpair (mkchr 118) (
mkpair (mkchr 119) (mkpair (mkchr 120) (mkpair (mkchr 121) (mkpair (mkchr 122) (
mkpair (mkchr 65) (mkpair (mkchr 66) (mkpair (mkchr 67) (mkpair (mkchr 68) (
mkpair (mkchr 69) (mkpair (mkchr 70) (mkpair (mkchr 71) (mkpair (mkchr 72) (
mkpair (mkchr 73) (mkpair (mkchr 74) (mkpair (mkchr 75) (mkpair (mkchr 76) (
mkpair (mkchr 77) (mkpair (mkchr 78) (mkpair (mkchr 79) (mkpair (mkchr 80) (
mkpair (mkchr 81) (mkpair (mkchr 82) (mkpair (mkchr 83) (mkpair (mkchr 84) (
mkpair (mkchr 85) (mkpair (mkchr 86) (mkpair (mkchr 87) (mkpair (mkchr 88) (
mkpair (mkchr 89) (mkpair (mkchr 90) (mksym "COMMON-LISP" "NIL"))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"UPPER-CASE-P") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 65) (mkpair (mkchr 66) (mkpair (
mkchr 67) (mkpair (mkchr 68) (mkpair (mkchr 69) (mkpair (mkchr 70) (mkpair (
mkchr 71) (mkpair (mkchr 72) (mkpair (mkchr 73) (mkpair (mkchr 74) (mkpair (
mkchr 75) (mkpair (mkchr 76) (mkpair (mkchr 77) (mkpair (mkchr 78) (mkpair (
mkchr 79) (mkpair (mkchr 80) (mkpair (mkchr 81) (mkpair (mkchr 82) (mkpair (
mkchr 83) (mkpair (mkchr 84) (mkpair (mkchr 85) (mkpair (mkchr 86) (mkpair (
mkchr 87) (mkpair (mkchr 88) (mkpair (mkchr 89) (mkpair (mkchr 90) (mksym 
"COMMON-LISP" "NIL"))))))))))))))))))))))))))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"LOWER-CASE-P") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 97) (mkpair (mkchr 98) (mkpair (
mkchr 99) (mkpair (mkchr 100) (mkpair (mkchr 101) (mkpair (mkchr 102) (mkpair (
mkchr 103) (mkpair (mkchr 104) (mkpair (mkchr 105) (mkpair (mkchr 106) (
mkpair (mkchr 107) (mkpair (mkchr 108) (mkpair (mkchr 109) (mkpair (mkchr 110) (
mkpair (mkchr 111) (mkpair (mkchr 112) (mkpair (mkchr 113) (mkpair (mkchr 114) (
mkpair (mkchr 115) (mkpair (mkchr 116) (mkpair (mkchr 117) (mkpair (mkchr 118) (
mkpair (mkchr 119) (mkpair (mkchr 120) (mkpair (mkchr 121) (mkpair (mkchr 122) (
mksym "COMMON-LISP" "NIL"))))))))))))))))))))))))))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"CHAR-UPCASE") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "PAIR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "PAIR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkpair (mkchr 97) (mkchr 65)) (mkpair (
mkpair (mkchr 98) (mkchr 66)) (mkpair (mkpair (mkchr 99) (mkchr 67)) (mkpair (
mkpair (mkchr 100) (mkchr 68)) (mkpair (mkpair (mkchr 101) (mkchr 69)) (
mkpair (mkpair (mkchr 102) (mkchr 70)) (mkpair (mkpair (mkchr 103) (mkchr 71)) (
mkpair (mkpair (mkchr 104) (mkchr 72)) (mkpair (mkpair (mkchr 105) (mkchr 73)) (
mkpair (mkpair (mkchr 106) (mkchr 74)) (mkpair (mkpair (mkchr 107) (mkchr 75)) (
mkpair (mkpair (mkchr 108) (mkchr 76)) (mkpair (mkpair (mkchr 109) (mkchr 77)) (
mkpair (mkpair (mkchr 110) (mkchr 78)) (mkpair (mkpair (mkchr 111) (mkchr 79)) (
mkpair (mkpair (mkchr 112) (mkchr 80)) (mkpair (mkpair (mkchr 113) (mkchr 81)) (
mkpair (mkpair (mkchr 114) (mkchr 82)) (mkpair (mkpair (mkchr 115) (mkchr 83)) (
mkpair (mkpair (mkchr 116) (mkchr 84)) (mkpair (mkpair (mkchr 117) (mkchr 85)) (
mkpair (mkpair (mkchr 118) (mkchr 86)) (mkpair (mkpair (mkchr 119) (mkchr 87)) (
mkpair (mkpair (mkchr 120) (mkchr 88)) (mkpair (mkpair (mkchr 121) (mkchr 89)) (
mkpair (mkpair (mkchr 122) (mkchr 90)) (mksym "COMMON-LISP" "NIL"))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"CHAR-DOWNCASE") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" 
"PAIR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkpair (mkchr 65) (mkchr 97)) (mkpair (
mkpair (mkchr 66) (mkchr 98)) (mkpair (mkpair (mkchr 67) (mkchr 99)) (mkpair (
mkpair (mkchr 68) (mkchr 100)) (mkpair (mkpair (mkchr 69) (mkchr 101)) (
mkpair (mkpair (mkchr 70) (mkchr 102)) (mkpair (mkpair (mkchr 71) (mkchr 103)) (
mkpair (mkpair (mkchr 72) (mkchr 104)) (mkpair (mkpair (mkchr 73) (mkchr 105)) (
mkpair (mkpair (mkchr 74) (mkchr 106)) (mkpair (mkpair (mkchr 75) (mkchr 107)) (
mkpair (mkpair (mkchr 76) (mkchr 108)) (mkpair (mkpair (mkchr 77) (mkchr 109)) (
mkpair (mkpair (mkchr 78) (mkchr 110)) (mkpair (mkpair (mkchr 79) (mkchr 111)) (
mkpair (mkpair (mkchr 80) (mkchr 112)) (mkpair (mkpair (mkchr 81) (mkchr 113)) (
mkpair (mkpair (mkchr 82) (mkchr 114)) (mkpair (mkpair (mkchr 83) (mkchr 115)) (
mkpair (mkpair (mkchr 84) (mkchr 116)) (mkpair (mkpair (mkchr 85) (mkchr 117)) (
mkpair (mkpair (mkchr 86) (mkchr 118)) (mkpair (mkpair (mkchr 87) (mkchr 119)) (
mkpair (mkpair (mkchr 88) (mkchr 120)) (mkpair (mkpair (mkchr 89) (mkchr 121)) (
mkpair (mkpair (mkchr 90) (mkchr 122)) (mksym "COMMON-LISP" "NIL"))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STRING-DOWNCASE1") (mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-DOWNCASE") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"STRING-DOWNCASE1") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"STRING-DOWNCASE") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (mksym 
"ACL2" "STRING-DOWNCASE1") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRING-UPCASE1") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CHAR-UPCASE") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "STRING-UPCASE1") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"STRING-UPCASE") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (mksym 
"ACL2" "STRING-UPCASE1") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OUR-DIGIT-CHAR-P") (mkpair (mkpair (mksym "ACL2" "CH") (mkpair (mksym "ACL2" 
"RADIX") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "L") (mkpair (mksym 
"ACL2" "RADIX") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym 
"ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "RADIX") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (
mksym "ACL2" "CH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mkpair (mkchr 48) (mknum "0" "1" "0" "1")) (mkpair (mkpair (mkchr 49) (
mknum "1" "1" "0" "1")) (mkpair (mkpair (mkchr 50) (mknum "2" "1" "0" "1")) (
mkpair (mkpair (mkchr 51) (mknum "3" "1" "0" "1")) (mkpair (mkpair (mkchr 52) (
mknum "4" "1" "0" "1")) (mkpair (mkpair (mkchr 53) (mknum "5" "1" "0" "1")) (
mkpair (mkpair (mkchr 54) (mknum "6" "1" "0" "1")) (mkpair (mkpair (mkchr 55) (
mknum "7" "1" "0" "1")) (mkpair (mkpair (mkchr 56) (mknum "8" "1" "0" "1")) (
mkpair (mkpair (mkchr 57) (mknum "9" "1" "0" "1")) (mkpair (mkpair (mkchr 97) (
mknum "10" "1" "0" "1")) (mkpair (mkpair (mkchr 98) (mknum "11" "1" "0" "1")) (
mkpair (mkpair (mkchr 99) (mknum "12" "1" "0" "1")) (mkpair (mkpair (mkchr 
100) (mknum "13" "1" "0" "1")) (mkpair (mkpair (mkchr 101) (mknum "14" "1" 
"0" "1")) (mkpair (mkpair (mkchr 102) (mknum "15" "1" "0" "1")) (mkpair (
mkpair (mkchr 103) (mknum "16" "1" "0" "1")) (mkpair (mkpair (mkchr 104) (
mknum "17" "1" "0" "1")) (mkpair (mkpair (mkchr 105) (mknum "18" "1" "0" "1")) (
mkpair (mkpair (mkchr 106) (mknum "19" "1" "0" "1")) (mkpair (mkpair (mkchr 
107) (mknum "20" "1" "0" "1")) (mkpair (mkpair (mkchr 108) (mknum "21" "1" 
"0" "1")) (mkpair (mkpair (mkchr 109) (mknum "22" "1" "0" "1")) (mkpair (
mkpair (mkchr 110) (mknum "23" "1" "0" "1")) (mkpair (mkpair (mkchr 111) (
mknum "24" "1" "0" "1")) (mkpair (mkpair (mkchr 112) (mknum "25" "1" "0" "1")) (
mkpair (mkpair (mkchr 113) (mknum "26" "1" "0" "1")) (mkpair (mkpair (mkchr 
114) (mknum "27" "1" "0" "1")) (mkpair (mkpair (mkchr 115) (mknum "28" "1" 
"0" "1")) (mkpair (mkpair (mkchr 116) (mknum "29" "1" "0" "1")) (mkpair (
mkpair (mkchr 117) (mknum "30" "1" "0" "1")) (mkpair (mkpair (mkchr 118) (
mknum "31" "1" "0" "1")) (mkpair (mkpair (mkchr 119) (mknum "32" "1" "0" "1")) (
mkpair (mkpair (mkchr 120) (mknum "33" "1" "0" "1")) (mkpair (mkpair (mkchr 
121) (mknum "34" "1" "0" "1")) (mkpair (mkpair (mkchr 122) (mknum "35" "1" 
"0" "1")) (mkpair (mkpair (mkchr 65) (mknum "10" "1" "0" "1")) (mkpair (
mkpair (mkchr 66) (mknum "11" "1" "0" "1")) (mkpair (mkpair (mkchr 67) (mknum 
"12" "1" "0" "1")) (mkpair (mkpair (mkchr 68) (mknum "13" "1" "0" "1")) (
mkpair (mkpair (mkchr 69) (mknum "14" "1" "0" "1")) (mkpair (mkpair (mkchr 70) (
mknum "15" "1" "0" "1")) (mkpair (mkpair (mkchr 71) (mknum "16" "1" "0" "1")) (
mkpair (mkpair (mkchr 72) (mknum "17" "1" "0" "1")) (mkpair (mkpair (mkchr 73) (
mknum "18" "1" "0" "1")) (mkpair (mkpair (mkchr 74) (mknum "19" "1" "0" "1")) (
mkpair (mkpair (mkchr 75) (mknum "20" "1" "0" "1")) (mkpair (mkpair (mkchr 76) (
mknum "21" "1" "0" "1")) (mkpair (mkpair (mkchr 77) (mknum "22" "1" "0" "1")) (
mkpair (mkpair (mkchr 78) (mknum "23" "1" "0" "1")) (mkpair (mkpair (mkchr 79) (
mknum "24" "1" "0" "1")) (mkpair (mkpair (mkchr 80) (mknum "25" "1" "0" "1")) (
mkpair (mkpair (mkchr 81) (mknum "26" "1" "0" "1")) (mkpair (mkpair (mkchr 82) (
mknum "27" "1" "0" "1")) (mkpair (mkpair (mkchr 83) (mknum "28" "1" "0" "1")) (
mkpair (mkpair (mkchr 84) (mknum "29" "1" "0" "1")) (mkpair (mkpair (mkchr 85) (
mknum "30" "1" "0" "1")) (mkpair (mkpair (mkchr 86) (mknum "31" "1" "0" "1")) (
mkpair (mkpair (mkchr 87) (mknum "32" "1" "0" "1")) (mkpair (mkpair (mkchr 88) (
mknum "33" "1" "0" "1")) (mkpair (mkpair (mkchr 89) (mknum "34" "1" "0" "1")) (
mkpair (mkpair (mkchr 90) (mknum "35" "1" "0" "1")) (mksym "COMMON-LISP" 
"NIL"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"RADIX") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"CHAR-EQUAL") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR-DOWNCASE") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CHAR-DOWNCASE") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ATOM-LISTP") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "ATOM-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "IFIX") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RFIX") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "REALFIX") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "NFIX") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRING-EQUAL1") (
mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mkpair (
mksym "ACL2" "I") (mkpair (mksym "ACL2" "MAXIMUM") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "I") (mkpair (mksym "ACL2" "STR2") (mkpair (mksym "ACL2" "STR1") (
mkpair (mksym "ACL2" "MAXIMUM") (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (mkpair (
mkpair (mksym "ACL2" "IFIX") (mkpair (mksym "ACL2" "MAXIMUM") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR") (mkpair (mksym "ACL2" "STR1") (
mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CHAR") (mkpair (mksym "ACL2" "STR2") (mkpair (mksym 
"ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "STRING-EQUAL1") (mkpair (mksym "ACL2" "STR1") (
mkpair (mksym "ACL2" "STR2") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "MAXIMUM") (mksym "COMMON-LISP" "NIL")))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "NFIX") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STR2") (mkpair (mksym "ACL2" "STR1") (mkpair (mksym 
"ACL2" "MAXIMUM") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"STRING-EQUAL") (mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" 
"STR2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "LEN1") (mkpair (mksym 
"ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "=") (mkpair (mksym "ACL2" "LEN1") (mkpair (mkpair (mksym 
"COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "STR2") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"STRING-EQUAL1") (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "LEN1") (mksym 
"COMMON-LISP" "NIL")))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "STR1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" 
"STR2") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STANDARD-STRING-ALISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "STANDARD-CHAR-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "STANDARD-STRING-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"ASSOC-STRING-EQUAL") (mkpair (mkpair (mksym "ACL2" "STR") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "STRING-EQUAL") (mkpair (mksym "ACL2" "STR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ASSOC-STRING-EQUAL") (
mkpair (mksym "ACL2" "STR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "NATP") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym 
"ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POSP") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O-FINP") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O-FIRST-EXPT") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "O-FINP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O-FIRST-COEFF") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "O-FINP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O-RST") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O<G") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "ACL2" "O-FIRST-COEFF") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "O<G") (mkpair (mkpair (mksym "ACL2" "O-FIRST-EXPT") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "O<G") (mkpair (mkpair (mksym "ACL2" "O-RST") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O<") (mkpair (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "O-FINP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" "O-FINP") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" 
"O-FINP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "O-FINP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"O-FIRST-EXPT") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "O-FIRST-EXPT") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "O<") (mkpair (mkpair (
mksym "ACL2" "O-FIRST-EXPT") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "O-FIRST-EXPT") (mkpair (mksym "ACL2" 
"Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (mkpair (mksym "ACL2" 
"O-FIRST-COEFF") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "O-FIRST-COEFF") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "ACL2" "O-FIRST-COEFF") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "O-FIRST-COEFF") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "O<") (mkpair (mkpair (mksym "ACL2" "O-RST") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "O-RST") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "O-P") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "O-FINP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"NATP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "O-P") (
mkpair (mkpair (mksym "ACL2" "O-FIRST-EXPT") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "O-FIRST-EXPT") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "POSP") (mkpair (mkpair (mksym "ACL2" "O-FIRST-COEFF") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "O-P") (mkpair (mkpair (mksym "ACL2" "O-RST") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "O<") (mkpair (mkpair (mksym "ACL2" "O-FIRST-EXPT") (
mkpair (mkpair (mksym "ACL2" "O-RST") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "O-FIRST-EXPT") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAKE-ORD") (
mkpair (mkpair (mksym "ACL2" "FE") (mkpair (mksym "ACL2" "FCO") (mkpair (
mksym "ACL2" "RST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "FE") (mkpair (mksym "ACL2" "FCO") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "RST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LIST*-MACRO") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "CONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "LIST*-MACRO") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "HARD-ERROR") (
mkpair (mkpair (mksym "ACL2" "CTX") (mkpair (mksym "ACL2" "STR") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ILLEGAL") (
mkpair (mkpair (mksym "ACL2" "CTX") (mkpair (mksym "ACL2" "STR") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "HARD-ERROR") (mkpair (mksym "ACL2" "CTX") (mkpair (mksym "ACL2" "STR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "KEYWORDP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 75 (cons 69 (cons 89 (cons 87 (cons 79 (cons 82 (cons 
68 nil))))))))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MEMBER-SYMBOL-NAME") (mkpair (mkpair (mksym "ACL2" "STR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "STR") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "L") (mkpair (mkpair (mksym "ACL2" "MEMBER-SYMBOL-NAME") (mkpair (
mksym "ACL2" "STR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BINARY-APPEND") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-APPEND") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRING-APPEND") (
mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (
mkpair (mksym "ACL2" "BINARY-APPEND") (mkpair (mkpair (mksym "COMMON-LISP" 
"COERCE") (mkpair (mksym "ACL2" "STR1") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mksym "ACL2" "STR2") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRING-LISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "STRING-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STRING-APPEND-LST") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string nil)) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "STRING-APPEND") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"STRING-APPEND-LST") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "REMOVE") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "REMOVE") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "REMOVE") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PAIRLIS$") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "PAIRLIS$") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"REMOVE-DUPLICATES-EQL") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "REMOVE-DUPLICATES-EQL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "REMOVE-DUPLICATES-EQL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"REMOVE-DUPLICATES") (mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (
mksym "ACL2" "REMOVE-DUPLICATES-EQL") (mkpair (mkpair (mksym "COMMON-LISP" 
"COERCE") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "REMOVE-DUPLICATES-EQL") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"REMOVE-DUPLICATES-EQUAL") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "REMOVE-DUPLICATES-EQUAL") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"REMOVE-DUPLICATES-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "IDENTITY") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"REVAPPEND") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mkpair (mkpair (mksym 
"COMMON-LISP" "REVAPPEND") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "REVERSE") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "COMMON-LISP" 
"REVAPPEND") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym 
"ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"STRING") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "REVAPPEND") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"SET-DIFFERENCE-EQ") (mkpair (mkpair (mksym "ACL2" "L1") (mkpair (mksym 
"ACL2" "L2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"SET-DIFFERENCE-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L2") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "SET-DIFFERENCE-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRIP-CDRS") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "STRIP-CDRS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MUTUAL-RECURSION-GUARDP") (mkpair (mkpair (mksym "ACL2" "RST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "RST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "RST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "RST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "RST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "RST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFUND") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"MUTUAL-RECURSION-GUARDP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "RST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"COLLECT-CADRS-WHEN-CAR-EQ") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "COLLECT-CADRS-WHEN-CAR-EQ") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "COLLECT-CADRS-WHEN-CAR-EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "XD-NAME") (
mkpair (mkpair (mksym "ACL2" "EVENT-TYPE") (mkpair (mksym "ACL2" "NAME") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "EVENT-TYPE") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "DEFUND") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "DEFUND") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "NAME") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "EVENT-TYPE") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "DEFTHMD") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "DEFTHMD") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "ILLEGAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "XD-NAME") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 85 (cons 110 (cons 101 (cons 120 (cons 112 (cons 101 (
cons 99 (cons 116 (cons 101 (cons 100 (cons 32 (cons 101 (cons 118 (cons 101 (
cons 110 (cons 116 (cons 45 (cons 116 (cons 121 (cons 112 (cons 101 (cons 32 (
cons 102 (cons 111 (cons 114 (cons 32 (cons 120 (cons 100 (cons 45 (cons 110 (
cons 97 (cons 109 (cons 101 (cons 44 (cons 32 (cons 37 (cons 120 (cons 48 nil)))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 48) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "EVENT-TYPE") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFUND-NAME-LIST") (mkpair (mkpair (mksym "ACL2" "DEFUNS") (mkpair (mksym 
"ACL2" "ACC") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "DEFUNS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "REVERSE") (mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "DEFUND-NAME-LIST") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "DEFUNS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "DEFUNS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "DEFUND") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "XD-NAME") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "DEFUND") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "DEFUNS") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "DEFUNS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "ACL2" "MUTUAL-RECURSION") (mkpair (mkpair (mksym 
"COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PSEUDO-TERM-LISTP") (mkpair (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "PSEUDO-TERMP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "PSEUDO-TERM-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"PSEUDO-TERMP") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"ACL2" "PSEUDO-TERM-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "LENGTH") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "3" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"PSEUDO-TERMP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"LENGTH") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "LENGTH") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"PSEUDO-TERM-LIST-LISTP") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "PSEUDO-TERM-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "PSEUDO-TERM-LIST-LISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ADD-TO-SET-EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "LST") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ADD-TO-SET-EQL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"LST") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "QUOTEP") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "KWOTE") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "QUOTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FN-SYMB") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "ACL2" "MUTUAL-RECURSION") (mkpair (mkpair (mksym 
"COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ALL-VARS1-LST") (mkpair (mkpair (
mksym "ACL2" "LST") (mkpair (mksym "ACL2" "ANS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ANS") (mkpair (mkpair (mksym "ACL2" "ALL-VARS1-LST") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ALL-VARS1") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ANS") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ALL-VARS1") (mkpair (mkpair (
mksym "ACL2" "TERM") (mkpair (mksym "ACL2" "ANS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "TERM") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "ADD-TO-SET-EQ") (mkpair (mksym "ACL2" 
"TERM") (mkpair (mksym "ACL2" "ANS") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "TERM") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "ANS") (mkpair (mkpair (mksym 
"ACL2" "ALL-VARS1-LST") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "TERM") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"ANS") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ALL-VARS") (
mkpair (mkpair (mksym "ACL2" "TERM") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "ALL-VARS1") (mkpair (mksym "ACL2" "TERM") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "INTERSECTP-EQ") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "INTERSECTP-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"INTERSECTP-EQUAL") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "INTERSECTP-EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MAKE-FMT-BINDINGS") (mkpair (mkpair (mksym "ACL2" "CHARS") (mkpair (mksym 
"ACL2" "FORMS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "FORMS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "CONS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "CONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "CHARS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "FORMS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"MAKE-FMT-BINDINGS") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "CHARS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "FORMS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ER-PROGN-FN") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "MV-LET") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mksym "ACL2" "ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-ERP") (mkpair (mksym 
"ACL2" "ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-VAL") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"IF") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-ERP") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "ACL2" "MV") (mkpair (mksym 
"ACL2" "ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-ERP") (mkpair (mksym "ACL2" 
"ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-VAL") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"CHECK-VARS-NOT-FREE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mksym "ACL2" "ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-ERP") (mkpair (mksym 
"ACL2" "ER-PROGN-NOT-TO-BE-USED-ELSEWHERE-VAL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "ACL2" "ER-PROGN-FN") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"LEGAL-CASE-CLAUSESP") (mkpair (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "TL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "EQLABLEP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "EQLABLEP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "TL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "EQLABLE-LISTP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "OTHERWISE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" "LEGAL-CASE-CLAUSESP") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CASE-TEST") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "PAT") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "PAT") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "EQL") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "PAT") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "MEMBER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "PAT") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CASE-LIST") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "OTHERWISE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"CASE-LIST") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" "CASE-TEST") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "CASE-LIST") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CASE-LIST-CHECK") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "OTHERWISE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "CHECK-VARS-NOT-FREE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkpair (mksym "ACL2" "CASE-DO-NOT-USE-ELSEWHERE") (mksym 
"COMMON-LISP" "NIL")) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "CASE-LIST-CHECK") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "CASE-TEST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "CASE-DO-NOT-USE-ELSEWHERE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "CHECK-VARS-NOT-FREE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkpair (mksym "ACL2" "CASE-DO-NOT-USE-ELSEWHERE") (mksym 
"COMMON-LISP" "NIL")) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"CASE-LIST-CHECK") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"POSITION-EQUAL-AC") (mkpair (mkpair (mksym "ACL2" "ITEM") (mkpair (mksym 
"ACL2" "LST") (mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" 
"ITEM") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "ACC") (mkpair (mkpair (mksym "ACL2" "POSITION-EQUAL-AC") (
mkpair (mksym "ACL2" "ITEM") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "ACC") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POSITION-AC") (
mkpair (mkpair (mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (
mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "ITEM") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"ACC") (mkpair (mkpair (mksym "ACL2" "POSITION-AC") (mkpair (mksym "ACL2" 
"ITEM") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ACC") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POSITION-EQUAL") (
mkpair (mkpair (mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "POSITION-AC") (mkpair (
mksym "ACL2" "ITEM") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (
mksym "ACL2" "LST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "ACL2" "POSITION-EQUAL-AC") (mkpair (mksym 
"ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POSITION-EQ-AC") (
mkpair (mkpair (mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (
mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "ITEM") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"ACC") (mkpair (mkpair (mksym "ACL2" "POSITION-EQ-AC") (mkpair (mksym "ACL2" 
"ITEM") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ACC") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POSITION-EQ") (
mkpair (mkpair (mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "POSITION-EQ-AC") (
mkpair (mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "POSITION") (
mkpair (mkpair (mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "POSITION-AC") (mkpair (
mksym "ACL2" "ITEM") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (
mksym "ACL2" "LST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "ACL2" "POSITION-AC") (mkpair (mksym "ACL2" 
"ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "=") (mkpair (mkpair (mksym "ACL2" "NFIX") (
mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "=") (mkpair (mkpair (mksym "ACL2" "NFIX") (mkpair (mksym 
"ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"<") (mkpair (mkpair (mksym "ACL2" "IFIX") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" 
"UNARY--") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LEGAL-LET*-P") (
mkpair (mkpair (mksym "ACL2" "BINDINGS") (mkpair (mksym "ACL2" "IGNORE-VARS") (
mkpair (mksym "ACL2" "IGNORED-SEEN") (mkpair (mksym "ACL2" "TOP-FORM") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "BINDINGS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "IGNORE-VARS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "IGNORE-VARS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "HARD-ERROR") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "LET*") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 65 (cons 108 (cons 108 (cons 32 (cons 118 (cons 97 (
cons 114 (cons 105 (cons 97 (cons 98 (cons 108 (cons 101 (cons 115 (cons 32 (
cons 100 (cons 101 (cons 99 (cons 108 (cons 97 (cons 114 (cons 101 (cons 100 (
cons 32 (cons 73 (cons 71 (cons 78 (cons 79 (cons 82 (cons 69 (cons 100 (cons 
32 (cons 105 (cons 110 (cons 32 (cons 97 (cons 32 (cons 76 (cons 69 (cons 84 (
cons 42 (cons 32 (cons 102 (cons 111 (cons 114 (cons 109 (cons 32 (cons 109 (
cons 117 (cons 115 (cons 116 (cons 32 (cons 126 (cons 10 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 98 (cons 
101 (cons 32 (cons 98 (cons 111 (cons 117 (cons 110 (cons 100 (cons 44 (cons 
32 (cons 98 (cons 117 (cons 116 (cons 32 (cons 126 (cons 38 (cons 48 (cons 32 (
cons 126 (cons 35 (cons 48 (cons 126 (cons 91 (cons 105 (cons 115 (cons 126 (
cons 47 (cons 97 (cons 114 (cons 101 (cons 126 (cons 93 (cons 32 (cons 110 (
cons 111 (cons 116 (cons 32 (cons 98 (cons 111 (cons 117 (cons 110 (cons 100 (
cons 32 (cons 105 (cons 110 (cons 32 (cons 116 (cons 104 (cons 101 (cons 32 (
cons 126 (cons 10 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 102 (cons 111 (cons 114 (cons 109 (cons 32 (cons 
126 (cons 120 (cons 49 (cons 46 nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 48) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "IGNORE-VARS") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 49) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "TOP-FORM") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "IGNORED-SEEN") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "HARD-ERROR") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LET*") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mk_chars_str (chars_to_string (cons 65 (cons 32 (cons 118 (cons 97 (cons 114 (
cons 105 (cons 97 (cons 98 (cons 108 (cons 101 (cons 32 (cons 98 (cons 111 (
cons 117 (cons 110 (cons 100 (cons 32 (cons 116 (cons 119 (cons 105 (cons 99 (
cons 101 (cons 32 (cons 105 (cons 110 (cons 32 (cons 97 (cons 32 (cons 76 (
cons 69 (cons 84 (cons 42 (cons 32 (cons 102 (cons 111 (cons 114 (cons 109 (
cons 32 (cons 109 (cons 97 (cons 121 (cons 32 (cons 110 (cons 111 (cons 116 (
cons 32 (cons 98 (cons 101 (cons 32 (cons 126 (cons 10 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 100 (cons 101 (cons 99 (cons 108 (cons 97 (
cons 114 (cons 101 (cons 100 (cons 32 (cons 105 (cons 103 (cons 110 (cons 111 (
cons 114 (cons 101 (cons 100 (cons 46 (cons 32 (cons 32 (cons 72 (cons 111 (
cons 119 (cons 101 (cons 118 (cons 101 (cons 114 (cons 44 (cons 32 (cons 116 (
cons 104 (cons 101 (cons 32 (cons 118 (cons 97 (cons 114 (cons 105 (cons 97 (
cons 98 (cons 108 (cons 101 (cons 32 (cons 126 (cons 120 (cons 48 (cons 32 (
cons 105 (cons 115 (cons 32 (cons 98 (cons 111 (cons 117 (cons 110 (cons 100 (
cons 32 (cons 105 (cons 110 (cons 32 (cons 126 (cons 10 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 116 (cons 104 (cons 101 (cons 32 (cons 102 (
cons 111 (cons 114 (cons 109 (cons 32 (cons 126 (cons 120 (cons 49 (cons 32 (
cons 97 (cons 110 (cons 100 (cons 32 (cons 121 (cons 101 (cons 116 (cons 32 (
cons 105 (cons 115 (cons 32 (cons 100 (cons 101 (cons 99 (cons 108 (cons 97 (
cons 114 (cons 101 (cons 100 (cons 32 (cons 105 (cons 103 (cons 110 (cons 111 (
cons 114 (cons 101 (cons 100 (cons 46 nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 48) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 49) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "TOP-FORM") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"IGNORE-VARS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"LEGAL-LET*-P") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "REMOVE") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"IGNORE-VARS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"IGNORED-SEEN") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"TOP-FORM") (mksym "COMMON-LISP" "NIL")))))) (mkpair (mkpair (mksym "ACL2" 
"LEGAL-LET*-P") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"IGNORE-VARS") (mkpair (mksym "ACL2" "IGNORED-SEEN") (mkpair (mksym "ACL2" 
"TOP-FORM") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LET*-MACRO") (
mkpair (mkpair (mksym "ACL2" "BINDINGS") (mkpair (mksym "ACL2" "IGNORE-VARS") (
mkpair (mksym "ACL2" "BODY") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "BINDINGS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "LET") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "BINDINGS") (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "IGNORE-VARS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "DECLARE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "IGNORE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "IGNORE-VARS") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "BODY") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "BODY") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LET") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"COMMON-LISP" "REST") (mkpair (mksym "ACL2" "IGNORE-VARS") (mkpair (mksym 
"ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "IGNORE-VARS") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "DECLARE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "IGNORE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "COMMON-LISP" "REST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "COMMON-LISP" "REST") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "LET*-MACRO") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "REMOVE") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "IGNORE-VARS") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "BODY") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" 
"IGNORE-VARS") (mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "FLOOR") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "D") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (
mksym "ACL2" "D") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "D") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "ACL2" "UNARY--") (
mkpair (mkpair (mksym "ACL2" "NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mkpair (
mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "D") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (
mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"N") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "NUMERATOR") (mkpair (mksym "ACL2" "Q") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "CEILING") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "D") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (
mksym "ACL2" "D") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "ACL2" 
"NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mksym "ACL2" "N") (mkpair (mksym 
"ACL2" "D") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"UNARY--") (mkpair (mkpair (mksym "ACL2" "NONNEGATIVE-INTEGER-QUOTIENT") (
mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "D") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym "ACL2" "Q") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"NUMERATOR") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" "I") (mkpair (
mkpair (mksym "ACL2" "UNARY-/") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "TRUNCATE") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "D") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (
mksym "ACL2" "D") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "D") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "UNARY--") (mkpair (mkpair (mksym "ACL2" 
"NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mkpair (mksym "ACL2" "UNARY--") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"D") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym 
"ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NUMERATOR") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (mksym 
"ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ROUND") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "Q") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mksym "ACL2" "Q") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "FL") (mkpair (mksym 
"ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "REMAINDER") (mkpair (
mksym "ACL2" "FL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "2" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "REMAINDER") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "FL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "REMAINDER") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "2" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "FL") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" 
"FL") (mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "FL") (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mksym "ACL2" "FL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "Q") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym 
"ACL2" "FL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "FL") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "FLOOR") (mkpair (
mksym "ACL2" "Q") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"CL") (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"REMAINDER") (mkpair (mksym "ACL2" "CL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "-1" "2" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"REMAINDER") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "CL") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "REMAINDER") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "2" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "CL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "CL") (mkpair (mkpair (mksym "ACL2" 
"UNARY-/") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "CL") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" 
"CL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "Q") (mkpair (mkpair (mksym "ACL2" 
"UNARY--") (mkpair (mksym "ACL2" "CL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "CL") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CEILING") (mkpair (mksym "ACL2" "Q") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "Q") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (mksym 
"ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "MOD") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mkpair (
mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "COMMON-LISP" "FLOOR") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "REM") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mkpair (
mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "COMMON-LISP" "TRUNCATE") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "EVENP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" 
"UNARY-/") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ODDP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"EVENP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ZEROP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "PLUSP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "MINUSP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "MIN") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "MAX") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "Y") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ABS") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"MINUSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "SIGNUM") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"ZEROP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "MINUSP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGNOT") (
mkpair (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "ACL2" "UNARY--") (
mkpair (mkpair (mksym "ACL2" "IFIX") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "EXPT") (
mkpair (mkpair (mksym "ACL2" "R") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ZIP") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (mkpair (mksym "ACL2" 
"FIX") (mkpair (mksym "ACL2" "R") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"I") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "R") (mkpair (mkpair (mksym "COMMON-LISP" "EXPT") (
mkpair (mksym "ACL2" "R") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "ACL2" 
"UNARY-/") (mkpair (mksym "ACL2" "R") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EXPT") (mkpair (mksym "ACL2" "R") (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGCOUNT") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZIP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "LOGCOUNT") (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EVENP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "LOGCOUNT") (mkpair (mkpair (mksym "ACL2" 
"NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "LOGCOUNT") (mkpair (mkpair (
mksym "ACL2" "NONNEGATIVE-INTEGER-QUOTIENT") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "NTHCDR") (
mkpair (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" 
"NTHCDR") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "N") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LAST") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"L") (mkpair (mkpair (mksym "COMMON-LISP" "LAST") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGBITP") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "ODDP") (mkpair (
mkpair (mksym "COMMON-LISP" "FLOOR") (mkpair (mkpair (mksym "ACL2" "IFIX") (
mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EXPT") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "NFIX") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "ASH") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "C") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "FLOOR") (mkpair (
mkpair (mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "ACL2" "IFIX") (
mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EXPT") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "C") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "THE-ERROR") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "CHAR<") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "CHAR>") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "CHAR<=") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHAR-CODE") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "CHAR>=") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHAR-CODE") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STRING<-L") (
mkpair (mkpair (mksym "ACL2" "L1") (mkpair (mksym "ACL2" "L2") (mkpair (mksym 
"ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L2") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "STRING<-L") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "I") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CHAR<") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "STRING<") (
mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "STRING<-L") (mkpair (
mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "STR1") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "STR2") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "STRING>") (
mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "STRING<") (
mkpair (mksym "ACL2" "STR2") (mkpair (mksym "ACL2" "STR1") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "STRING<=") (
mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "STR1") (mkpair (
mksym "ACL2" "STR2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "STR1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "STRING<") (mkpair (mksym 
"ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "STRING>=") (
mkpair (mkpair (mksym "ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "STR1") (mkpair (
mksym "ACL2" "STR2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "STR1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "STRING>") (mkpair (mksym 
"ACL2" "STR1") (mkpair (mksym "ACL2" "STR2") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SYMBOL-<") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" "Y1") (mkpair (mksym 
"ACL2" "Y") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRING<") (mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" 
"Y1") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"STRING<") (mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" "Y1") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X1") (mkpair (
mksym "ACL2" "Y1") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "STRING<") (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOL-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SUBSTITUTE-AC") (
mkpair (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" "OLD") (mkpair (
mksym "ACL2" "SEQ") (mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "SEQ") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "REVERSE") (mkpair (mksym "ACL2" "ACC") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "OLD") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "SEQ") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "SUBSTITUTE-AC") (mkpair (mksym "ACL2" "NEW") (mkpair (mksym 
"ACL2" "OLD") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "SEQ") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" 
"ACC") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))) (
mkpair (mkpair (mksym "ACL2" "SUBSTITUTE-AC") (mkpair (mksym "ACL2" "NEW") (
mkpair (mksym "ACL2" "OLD") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "SEQ") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "SEQ") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "ACC") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"SUBSTITUTE") (mkpair (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" 
"OLD") (mkpair (mksym "ACL2" "SEQ") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "SEQ") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "ACL2" 
"SUBSTITUTE-AC") (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" "OLD") (
mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "SEQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"LIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "SUBSTITUTE-AC") (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" 
"OLD") (mkpair (mksym "ACL2" "SEQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "SUBSETP") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "SUBSETP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "SUBLIS") (
mkpair (mkpair (mksym "ACL2" "ALIST") (mkpair (mksym "ACL2" "TREE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "TREE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" "TREE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mksym "ACL2" "PAIR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"TREE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "TREE") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "TREE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "SUBLIS") (mkpair (
mksym "ACL2" "ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "TREE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "SUBLIS") (mkpair (mksym "ACL2" "ALIST") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TREE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "SUBST") (
mkpair (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" "OLD") (mkpair (
mksym "ACL2" "TREE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "OLD") (mkpair (mksym "ACL2" "TREE") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "NEW") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "TREE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "TREE") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "SUBST") (
mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" "OLD") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TREE") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"SUBST") (mkpair (mksym "ACL2" "NEW") (mkpair (mksym "ACL2" "OLD") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TREE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WORLDP") (mkpair (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "ALIST") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "WORLDP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PUTPROP") (
mkpair (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "KEY") (mkpair (
mksym "ACL2" "VALUE") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "SYMB") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "KEY") (mkpair (
mksym "ACL2" "VALUE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GETPROP-DEFAULT") (
mkpair (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "KEY") (mkpair (
mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"DEFAULT") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FGETPROP") (
mkpair (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "KEY") (mkpair (
mksym "ACL2" "DEFAULT") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "DEFAULT") (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "SYMB") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "ANS") (
mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "ANS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "ACL2-PROPERTY-UNBOUND") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "DEFAULT") (mkpair (mksym 
"ACL2" "ANS") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"DEFAULT") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"FGETPROP") (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "KEY") (
mkpair (mksym "ACL2" "DEFAULT") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SGETPROP") (
mkpair (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "KEY") (mkpair (
mksym "ACL2" "DEFAULT") (mkpair (mksym "ACL2" "WORLD-NAME") (mkpair (mksym 
"ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL")))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "DEFAULT") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "SYMB") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "ANS") (mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "ANS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "ACL2-PROPERTY-UNBOUND") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "DEFAULT") (mkpair (mksym "ACL2" "ANS") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "SGETPROP") (mkpair (mksym "ACL2" "SYMB") (
mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "DEFAULT") (mkpair (mksym 
"ACL2" "WORLD-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ADD-PAIR") (
mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VALUE") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VALUE") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" 
"VALUE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" 
"KEY") (mkpair (mksym "ACL2" "VALUE") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ADD-PAIR") (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VALUE") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"REMOVE-FIRST-PAIR") (mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "KEY") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "REMOVE-FIRST-PAIR") (mkpair (mksym "ACL2" "KEY") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "TRUE-LIST-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GETPROPS1") (
mkpair (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "ACL2-PROPERTY-UNBOUND") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "GETPROPS1") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"GETPROPS1") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GETPROPS") (
mkpair (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "WORLD-NAME") (
mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "SYMB") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "ALIST") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "ACL2-PROPERTY-UNBOUND") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "REMOVE-FIRST-PAIR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "GETPROPS") (
mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "WORLD-NAME") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym 
"ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "GETPROPS") (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" 
"WORLD-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "HAS-PROPSP1") (
mkpair (mkpair (mksym "ACL2" "ALIST") (mkpair (mksym "ACL2" "EXCEPTIONS") (
mkpair (mksym "ACL2" "KNOWN-UNBOUND") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"ACL2-PROPERTY-UNBOUND") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "ACL2-PROPERTY-UNBOUND") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "EXCEPTIONS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"EXCEPTIONS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"KNOWN-UNBOUND") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "ACL2" "HAS-PROPSP1") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "EXCEPTIONS") (mkpair (mksym "ACL2" "KNOWN-UNBOUND") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "HAS-PROPSP") (
mkpair (mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "EXCEPTIONS") (
mkpair (mksym "ACL2" "WORLD-NAME") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mkpair (mksym "ACL2" "KNOWN-UNBOUND") (mksym "COMMON-LISP" "NIL")))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mksym "ACL2" "SYMB") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "SYMB") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "EXCEPTIONS") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "EXCEPTIONS") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "KNOWN-UNBOUND") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "ACL2" "HAS-PROPSP") (mkpair (mksym "ACL2" 
"SYMB") (mkpair (mksym "ACL2" "EXCEPTIONS") (mkpair (mksym "ACL2" 
"WORLD-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"KNOWN-UNBOUND") (mksym "COMMON-LISP" "NIL"))))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "ACL2-PROPERTY-UNBOUND") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "HAS-PROPSP") (
mkpair (mksym "ACL2" "SYMB") (mkpair (mksym "ACL2" "EXCEPTIONS") (mkpair (
mksym "ACL2" "WORLD-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "WORLD-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "WORLD-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "KNOWN-UNBOUND") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EXTEND-WORLD") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RETRACT-WORLD") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GLOBAL-VAL") (
mkpair (mkpair (mksym "ACL2" "VAR") (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (
mksym "ACL2" "VAR") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "GLOBAL-VALUE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "KEYWORD" "ERROR") (
mkpair (mk_chars_str (chars_to_string (cons 71 (cons 76 (cons 79 (cons 66 (
cons 65 (cons 76 (cons 45 (cons 86 (cons 65 (cons 76 (cons 32 (cons 100 (cons 
105 (cons 100 (cons 110 (cons 39 (cons 116 (cons 32 (cons 102 (cons 105 (cons 
110 (cons 100 (cons 32 (cons 97 (cons 32 (cons 118 (cons 97 (cons 108 (cons 
117 (cons 101 (cons 46 (cons 32 (cons 32 (cons 73 (cons 110 (cons 105 (cons 
116 (cons 105 (cons 97 (cons 108 (cons 105 (cons 122 (cons 101 (cons 32 (cons 
116 (cons 104 (cons 105 (cons 115 (cons 32 (cons 126 (cons 10 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (
cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 32 (cons 
32 (cons 32 (cons 32 (cons 115 (cons 121 (cons 109 (cons 98 (cons 111 (cons 
108 (cons 32 (cons 105 (cons 110 (cons 32 (cons 80 (cons 82 (cons 73 (cons 77 (
cons 79 (cons 82 (cons 68 (cons 73 (cons 65 (cons 76 (cons 45 (cons 87 (cons 
79 (cons 82 (cons 76 (cons 68 (cons 45 (cons 71 (cons 76 (cons 79 (cons 66 (
cons 65 (cons 76 (cons 83 (cons 46 nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"FUNCTION-SYMBOLP") (mkpair (mkpair (mksym "ACL2" "SYM") (mkpair (mksym 
"ACL2" "WRLD") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "ACL2" "FGETPROP") (mkpair (mksym "ACL2" "SYM") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "FORMALS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"SET-DIFFERENCE-EQUAL") (mkpair (mkpair (mksym "ACL2" "L1") (mkpair (mksym 
"ACL2" "L2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "MEMBER-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "SET-DIFFERENCE-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "SET-DIFFERENCE-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"BOUNDED-INTEGER-ALISTP") (mkpair (mkpair (mksym "ACL2" "L") (mkpair (mksym 
"ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "KEY") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym 
"ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"BOUNDED-INTEGER-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"KEYWORD-VALUE-LISTP") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "KEYWORDP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "KEYWORD-VALUE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (
mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (
mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ARRAY1P") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "NAME") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "HEADER-KEYWORD-LIST") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "KEYWORD-VALUE-LISTP") (mkpair (mksym "ACL2" 
"HEADER-KEYWORD-LIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (
mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"LENGTH") (mkpair (mksym "ACL2" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "DIMENSIONS") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "2147483647" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BOUNDED-INTEGER-ALISTP") (
mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "HEADER-KEYWORD-LIST") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "HEADER-KEYWORD-LIST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"BOUNDED-INTEGER-ALISTP2") (mkpair (mkpair (mksym "ACL2" "L") (mkpair (mksym 
"ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym 
"ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "I1") (mkpair (mksym "ACL2" "J1") (mkpair (mksym "ACL2" 
"J") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "I1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "J1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "I1") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "I1") (mkpair (mksym "ACL2" "I") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "J1") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "J1") (mkpair (mksym 
"ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"KEY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "J") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"BOUNDED-INTEGER-ALISTP2") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"I") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASSOC2") (mkpair (
mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQL") (mkpair (mksym "ACL2" "J") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ASSOC2") (mkpair (mksym 
"ACL2" "I") (mkpair (mksym "ACL2" "J") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ARRAY2P") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "NAME") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "HEADER-KEYWORD-LIST") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "KEYWORD-VALUE-LISTP") (mkpair (mksym "ACL2" 
"HEADER-KEYWORD-LIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (
mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"LENGTH") (mkpair (mksym "ACL2" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "D1") (
mkpair (mksym "ACL2" "D2") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" 
"MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "D1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "D2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "D1") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"D2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "D1") (mkpair (mksym "ACL2" "D2") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2147483647" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "BOUNDED-INTEGER-ALISTP2") (mkpair (mksym "ACL2" "L") (mkpair (
mksym "ACL2" "D1") (mkpair (mksym "ACL2" "D2") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (
mksym "COMMON-LISP" "NIL")))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "HEADER-KEYWORD-LIST") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"HEADER-KEYWORD-LIST") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "HEADER") (mkpair (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "PROG2$") (mkpair (mksym "ACL2" "NAME") (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DIMENSIONS") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "HEADER") (mkpair (mksym 
"ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "HEADER") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DEFAULT") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DEFAULT") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "HEADER") (mkpair (mksym 
"ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "AREF1") (mkpair (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" 
"N") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "DEFAULT") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym 
"ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COMPRESS11") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (
mksym "ACL2" "I") (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "DEFAULT") (
mksym "COMMON-LISP" "NIL")))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (
mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"PAIR") (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "I") (mkpair (mksym 
"ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "DEFAULT") (
mksym "COMMON-LISP" "NIL"))))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mksym "ACL2" 
"PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "DEFAULT") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "COMPRESS11") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "L") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" 
"I") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" 
"1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "N") (mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL"))))))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "PAIR") (
mkpair (mkpair (mksym "ACL2" "COMPRESS11") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "DEFAULT") (mksym 
"COMMON-LISP" "NIL"))))))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "N") (mkpair (mksym 
"ACL2" "I") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL")))))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COMPRESS1") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "HEADER") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"COMPRESS11") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "DEFAULT") (mkpair (mksym "ACL2" 
"NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASET1") (mkpair (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"L") (mkpair (mksym "ACL2" "NAME") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "ACL2" "MAXIMUM-LENGTH") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"COMPRESS1") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "N") (
mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "NAME") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "AREF2") (mkpair (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" 
"I") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "DEFAULT") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "ASSOC2") (mkpair (mksym "ACL2" "I") (
mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COMPRESS211") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (
mksym "ACL2" "I") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "J") (
mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL"))))))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "J") (mkpair (mkpair (
mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" "J") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "L") (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "DEFAULT") (mksym 
"COMMON-LISP" "NIL")))))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (mksym "ACL2" 
"PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "DEFAULT") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "COMPRESS211") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "L") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" 
"DEFAULT") (mksym "COMMON-LISP" "NIL")))))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "PAIR") (mkpair (mkpair (mksym 
"ACL2" "COMPRESS211") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (
mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "DEFAULT") (mksym 
"COMMON-LISP" "NIL")))))))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "ASSOC2") (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym 
"ACL2" "J") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "L") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" 
"DEFAULT") (mksym "COMMON-LISP" "NIL"))))))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COMPRESS21") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (
mksym "ACL2" "N") (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (
mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL"))))))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-APPEND") (mkpair (
mkpair (mksym "ACL2" "COMPRESS211") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "L") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "DEFAULT") (mksym 
"COMMON-LISP" "NIL")))))))) (mkpair (mkpair (mksym "ACL2" "COMPRESS21") (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (
mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "J") (mkpair (mksym "ACL2" "DEFAULT") (mksym "COMMON-LISP" "NIL")))))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "COMPRESS2") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "HEADER") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"COMPRESS21") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "DEFAULT") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASET2") (mkpair (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" 
"I") (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "VAL") (mksym 
"COMMON-LISP" "NIL")))))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "NAME") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "ACL2" 
"MAXIMUM-LENGTH") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "COMPRESS2") (mkpair (mksym "ACL2" 
"NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "NAME") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FLUSH-COMPRESS") (
mkpair (mkpair (mksym "ACL2" "NAME") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CDRN") (mkpair (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ZP") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" "CDRN") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "CDR") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MV-NTH") (mkpair (
mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"MV-NTH") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAKE-MV-NTHS") (
mkpair (mkpair (mksym "ACL2" "ARGS") (mkpair (mksym "ACL2" "CALL") (mkpair (
mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ARGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "ARGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"MV-NTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "CALL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"MAKE-MV-NTHS") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "ARGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "CALL") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "I") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "UPDATE-NTH") (
mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" 
"KEY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "KEY") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "VAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-NTH-ARRAY") (mkpair (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" 
"KEY") (mkpair (mksym "ACL2" "VAL") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (
mksym "ACL2" "J") (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (mksym 
"ACL2" "KEY") (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "32-BIT-INTEGERP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "2147483647" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2147483647" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RATIONAL-LISTP") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "RATIONAL-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "INTEGER-LISTP") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "INTEGER-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-LISTP") (mkpair (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "32-BIT-INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "32-BIT-INTEGER-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "ST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-OPEN-INPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "ST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-OPEN-OUTPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GLOBAL-TABLE") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-GLOBAL-TABLE") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "T-STACK") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "3" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "UPDATE-T-STACK") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "3" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ST") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" "ST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "4" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "4" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BIG-CLOCK-ENTRY") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "5" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-BIG-CLOCK-ENTRY") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"5" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "IDATES") (mkpair (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "6" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "UPDATE-IDATES") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "6" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "ST") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RUN-TIMES") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "7" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-RUN-TIMES") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"7" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FILE-CLOCK") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "8" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-FILE-CLOCK") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"8" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READABLE-FILES") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "9" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WRITTEN-FILES") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "10" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-WRITTEN-FILES") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"10" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-FILES") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "11" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-READ-FILES") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"11" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WRITEABLE-FILES") (
mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "12" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"LIST-ALL-PACKAGE-NAMES-LST") (mkpair (mkpair (mksym "ACL2" "ST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "13" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-LIST-ALL-PACKAGE-NAMES-LST") (mkpair (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "13" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"USER-STOBJ-ALIST1") (mkpair (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "14" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-USER-STOBJ-ALIST1") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "ST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum 
"14" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "ST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ALL-BOUNDP") (
mkpair (mkpair (mksym "ACL2" "ALIST1") (mkpair (mksym "ACL2" "ALIST2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "ALIST1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ALIST2") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "ALL-BOUNDP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "ALIST2") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "SYMBOL-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TIMER-ALISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "RATIONAL-LISTP") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "TIMER-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TYPED-IO-LISTP") (
mkpair (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "TYP") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "TYP") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "CHARACTER") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "TYP") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "BYTE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"<") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "256" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "TYP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "OBJECT") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "ACL2" "TYPED-IO-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "TYP") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "OPEN-CHANNEL1") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "HEADER") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "HEADER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "4" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mksym "KEYWORD" "CHARACTER") (mkpair (mksym "KEYWORD" "BYTE") (mkpair (
mksym "KEYWORD" "OBJECT") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "HEADER") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TYPED-IO-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-CHANNEL-LISTP") (mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "OPEN-CHANNEL1") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-CHANNEL-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "OPEN-CHANNEL-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FILE-CLOCK-P") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "NATP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READABLE-FILE") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "KEY") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "KEY") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "3" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "KEY") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "KEYWORD" "CHARACTER") (mkpair (
mksym "KEYWORD" "BYTE") (mkpair (mksym "KEYWORD" "OBJECT") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "TYPED-IO-LISTP") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"READABLE-FILES-LISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "READABLE-FILE") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "READABLE-FILES-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"READABLE-FILES-P") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "READABLE-FILES-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WRITTEN-FILE") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "KEY") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "KEY") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "4" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "KEY") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "KEY") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "KEYWORD" "CHARACTER") (mkpair (
mksym "KEYWORD" "BYTE") (mkpair (mksym "KEYWORD" "OBJECT") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "TYPED-IO-LISTP") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"WRITTEN-FILE-LISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WRITTEN-FILE") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "WRITTEN-FILE-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WRITTEN-FILES-P") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "WRITTEN-FILE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"READ-FILE-LISTP1") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "4" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "KEYWORD" 
"CHARACTER") (mkpair (mksym "KEYWORD" "BYTE") (mkpair (mksym "KEYWORD" 
"OBJECT") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-FILE-LISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "READ-FILE-LISTP1") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "READ-FILE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-FILES-P") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "READ-FILE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"WRITABLE-FILE-LISTP1") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"LENGTH") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "3" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym 
"KEYWORD" "CHARACTER") (mkpair (mksym "KEYWORD" "BYTE") (mkpair (mksym 
"KEYWORD" "OBJECT") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"WRITABLE-FILE-LISTP") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "WRITABLE-FILE-LISTP1") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "WRITABLE-FILE-LISTP") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"WRITEABLE-FILES-P") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "WRITABLE-FILE-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STATE-P1") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "15" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym 
"ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "ALL-BOUNDP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkpair (mksym "ACL2" 
"ACCUMULATED-TTREE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "ACCUMULATED-WARNINGS") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "ACL2-VERSION") (mk_chars_str (chars_to_string (cons 65 (cons 67 (
cons 76 (cons 50 (cons 32 (cons 86 (cons 101 (cons 114 (cons 115 (cons 105 (
cons 111 (cons 110 (cons 32 (cons 50 (cons 46 (cons 57 (cons 46 (cons 51 nil))))))))))))))))))))) (
mkpair (mkpair (mksym "ACL2" "AXIOMSP") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "BDDNOTES") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "CERTIFY-BOOK-FILE") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "CONNECTED-BOOK-DIRECTORY") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "CURRENT-PACKAGE") (mk_chars_str (
chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil))))))) (mkpair (
mkpair (mksym "ACL2" "DEFAXIOMS-OKP-CERT") (mksym "COMMON-LISP" "T")) (mkpair (
mkpair (mksym "ACL2" "ERROR-TRACE-STACK") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "EVISCERATE-HIDE-TERMS") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "FMT-HARD-RIGHT-MARGIN") (mknum "77" 
"1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "FMT-SOFT-RIGHT-MARGIN") (mknum 
"65" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "GSTACKP") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "GUARD-CHECKING-ON") (
mksym "COMMON-LISP" "T")) (mkpair (mkpair (mksym "ACL2" "IN-CERTIFY-BOOK-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "IN-LOCAL-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "IN-PROVE-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"INCLUDE-BOOK-ALIST-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "INFIXP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "INHIBIT-OUTPUT-LST") (mkpair (mksym "ACL2" "SUMMARY") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "LD-LEVEL") (mknum "0" 
"1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "LD-REDEFINITION-ACTION") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "LD-SKIP-PROOFSP") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "MATCH-FREE-ERROR") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-MAX-LINES") (mknum "45" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-MIN-LINES") (mknum "35" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"PACKAGES-CREATED-BY-DEFPKG") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "PRINT-BASE") (mknum "10" "1" "0" "1")) (mkpair (mkpair (mksym 
"ACL2" "PRINT-CASE") (mksym "KEYWORD" "UPCASE")) (mkpair (mkpair (mksym 
"ACL2" "PRINT-CLAUSE-IDS") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "PRINT-DOC-START-COLUMN") (mknum "15" "1" "0" "1")) (mkpair (
mkpair (mksym "ACL2" "PROMPT-FUNCTION") (mksym "ACL2" "DEFAULT-PRINT-PROMPT")) (
mkpair (mkpair (mksym "ACL2" "PROOF-TREE-CTX") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "PROOFS-CO") (mksym "ACL2-OUTPUT-CHANNEL" 
"STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (mksym "ACL2" 
"RAW-ARITY-ALIST") (mkpair (mkpair (mksym "ACL2" "ER-PROGN") (mksym 
"COMMON-LISP" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "EVAL-WHEN") (
mksym "KEYWORD" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "LET") (mksym 
"KEYWORD" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "LET*") (mksym 
"KEYWORD" "LAST")) (mkpair (mkpair (mksym "ACL2" "MV-LET") (mksym "KEYWORD" 
"LAST")) (mkpair (mkpair (mksym "ACL2" "PROG2$") (mksym "KEYWORD" "LAST")) (
mkpair (mkpair (mksym "COMMON-LISP" "PROGN") (mksym "KEYWORD" "LAST")) (
mkpair (mkpair (mksym "COMMON-LISP" "THE") (mksym "KEYWORD" "LAST")) (mkpair (
mkpair (mksym "COMMON-LISP" "TIME") (mksym "KEYWORD" "LAST")) (mkpair (mkpair (
mksym "COMMON-LISP" "TRACE") (mknum "1" "1" "0" "1")) (mkpair (mkpair (mksym 
"COMMON-LISP" "UNTRACE") (mknum "1" "1" "0" "1")) (mksym "COMMON-LISP" "NIL"))))))))))))) (
mkpair (mkpair (mksym "ACL2" "SAFE-MODE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-REVERSED") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-TOKEN-LST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-P") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "SKIP-PROOFS-OKP-CERT") (
mksym "COMMON-LISP" "T")) (mkpair (mkpair (mksym "ACL2" "SKIPPED-PROOFSP") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "STANDARD-CO") (
mksym "ACL2-OUTPUT-CHANNEL" "STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (
mksym "ACL2" "STANDARD-OI") (mksym "ACL2-OUTPUT-CHANNEL" 
"STANDARD-OBJECT-INPUT-0")) (mkpair (mkpair (mksym "ACL2" "TAINTED-OKP") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TIMER-ALIST") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TRACE-CO") (mksym 
"ACL2-OUTPUT-CHANNEL" "STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (mksym 
"ACL2" "TRANSLATE-ERROR-DEPTH") (mknum "-1" "1" "0" "1")) (mkpair (mkpair (
mksym "ACL2" "TRIPLE-PRINT-PREFIX") (mk_chars_str (chars_to_string (cons 32 
nil)))) (mkpair (mkpair (mksym "ACL2" "UNDONE-WORLDS-KILL-RING") (mkpair (
mksym "COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "WINDOW-INTERFACEP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "WORMHOLE-NAME") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "WORMHOLE-OUTPUT") (mksym "COMMON-LISP" "NIL")) (mksym 
"COMMON-LISP" "NIL")))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "WORLDP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (
mksym "COMMON-LISP" "ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "SYMBOL-ALISTP") (mkpair (
mkpair (mksym "ACL2" "FGETPROP") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"TABLE-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "TIMER-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "TIMER-ALIST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "KNOWN-PACKAGE-ALISTP") (
mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "KNOWN-PACKAGE-ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"GLOBAL-VALUE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" "T-STACK") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-LISTP") (mkpair (mkpair (mksym "ACL2" "32-BIT-INTEGER-STACK") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "ACL2" "BIG-CLOCK-ENTRY") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "INTEGER-LISTP") (mkpair (mkpair (mksym "ACL2" "IDATES") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"RATIONAL-LISTP") (mkpair (mkpair (mksym "ACL2" "RUN-TIMES") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"FILE-CLOCK-P") (mkpair (mkpair (mksym "ACL2" "FILE-CLOCK") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"READABLE-FILES-P") (mkpair (mkpair (mksym "ACL2" "READABLE-FILES") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WRITTEN-FILES-P") (mkpair (mkpair (mksym "ACL2" "WRITTEN-FILES") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"READ-FILES-P") (mkpair (mkpair (mksym "ACL2" "READ-FILES") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WRITEABLE-FILES-P") (mkpair (mkpair (mksym "ACL2" "WRITEABLE-FILES") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"TRUE-LIST-LISTP") (mkpair (mkpair (mksym "ACL2" "LIST-ALL-PACKAGE-NAMES-LST") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "SYMBOL-ALISTP") (mkpair (mkpair (
mksym "ACL2" "USER-STOBJ-ALIST1") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "STATE-P") (
mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "STATE-P1") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BUILD-STATE1") (
mkpair (mkpair (mksym "ACL2" "OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym 
"ACL2" "T-STACK") (mkpair (mksym "ACL2" "32-BIT-INTEGER-STACK") (mkpair (
mksym "ACL2" "BIG-CLOCK") (mkpair (mksym "ACL2" "IDATES") (mkpair (mksym 
"ACL2" "RUN-TIMES") (mkpair (mksym "ACL2" "FILE-CLOCK") (mkpair (mksym "ACL2" 
"READABLE-FILES") (mkpair (mksym "ACL2" "WRITTEN-FILES") (mkpair (mksym 
"ACL2" "READ-FILES") (mkpair (mksym "ACL2" "WRITEABLE-FILES") (mkpair (mksym 
"ACL2" "LIST-ALL-PACKAGE-NAMES-LST") (mkpair (mksym "ACL2" "USER-STOBJ-ALIST") (
mksym "COMMON-LISP" "NIL")))))))))))))))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "S") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "STATE-P1") (mkpair (mksym "ACL2" "S") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "S") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (
mksym "COMMON-LISP" "NIL") (mkpair (mkpair (mkpair (mksym "ACL2" 
"ACCUMULATED-TTREE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "ACCUMULATED-WARNINGS") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "ACL2-VERSION") (mk_chars_str (chars_to_string (cons 65 (cons 67 (
cons 76 (cons 50 (cons 32 (cons 86 (cons 101 (cons 114 (cons 115 (cons 105 (
cons 111 (cons 110 (cons 32 (cons 50 (cons 46 (cons 57 (cons 46 (cons 51 nil))))))))))))))))))))) (
mkpair (mkpair (mksym "ACL2" "AXIOMSP") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "BDDNOTES") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "CERTIFY-BOOK-FILE") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "CONNECTED-BOOK-DIRECTORY") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "CURRENT-PACKAGE") (mk_chars_str (
chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil))))))) (mkpair (
mkpair (mksym "ACL2" "DEFAXIOMS-OKP-CERT") (mksym "COMMON-LISP" "T")) (mkpair (
mkpair (mksym "ACL2" "ERROR-TRACE-STACK") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "EVISCERATE-HIDE-TERMS") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "FMT-HARD-RIGHT-MARGIN") (mknum "77" 
"1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "FMT-SOFT-RIGHT-MARGIN") (mknum 
"65" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "GSTACKP") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "GUARD-CHECKING-ON") (
mksym "COMMON-LISP" "T")) (mkpair (mkpair (mksym "ACL2" "IN-CERTIFY-BOOK-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "IN-LOCAL-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "IN-PROVE-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"INCLUDE-BOOK-ALIST-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "INFIXP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "INHIBIT-OUTPUT-LST") (mkpair (mksym "ACL2" "SUMMARY") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "LD-LEVEL") (mknum "0" 
"1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "LD-REDEFINITION-ACTION") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "LD-SKIP-PROOFSP") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "MATCH-FREE-ERROR") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-MAX-LINES") (mknum "45" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-MIN-LINES") (mknum "35" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"PACKAGES-CREATED-BY-DEFPKG") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "PRINT-BASE") (mknum "10" "1" "0" "1")) (mkpair (mkpair (mksym 
"ACL2" "PRINT-CASE") (mksym "KEYWORD" "UPCASE")) (mkpair (mkpair (mksym 
"ACL2" "PRINT-CLAUSE-IDS") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "PRINT-DOC-START-COLUMN") (mknum "15" "1" "0" "1")) (mkpair (
mkpair (mksym "ACL2" "PROMPT-FUNCTION") (mksym "ACL2" "DEFAULT-PRINT-PROMPT")) (
mkpair (mkpair (mksym "ACL2" "PROOF-TREE-CTX") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "PROOFS-CO") (mksym "ACL2-OUTPUT-CHANNEL" 
"STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (mksym "ACL2" 
"RAW-ARITY-ALIST") (mkpair (mkpair (mksym "ACL2" "ER-PROGN") (mksym 
"COMMON-LISP" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "EVAL-WHEN") (
mksym "KEYWORD" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "LET") (mksym 
"KEYWORD" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "LET*") (mksym 
"KEYWORD" "LAST")) (mkpair (mkpair (mksym "ACL2" "MV-LET") (mksym "KEYWORD" 
"LAST")) (mkpair (mkpair (mksym "ACL2" "PROG2$") (mksym "KEYWORD" "LAST")) (
mkpair (mkpair (mksym "COMMON-LISP" "PROGN") (mksym "KEYWORD" "LAST")) (
mkpair (mkpair (mksym "COMMON-LISP" "THE") (mksym "KEYWORD" "LAST")) (mkpair (
mkpair (mksym "COMMON-LISP" "TIME") (mksym "KEYWORD" "LAST")) (mkpair (mkpair (
mksym "COMMON-LISP" "TRACE") (mknum "1" "1" "0" "1")) (mkpair (mkpair (mksym 
"COMMON-LISP" "UNTRACE") (mknum "1" "1" "0" "1")) (mksym "COMMON-LISP" "NIL"))))))))))))) (
mkpair (mkpair (mksym "ACL2" "SAFE-MODE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-REVERSED") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-TOKEN-LST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-P") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "SKIP-PROOFS-OKP-CERT") (
mksym "COMMON-LISP" "T")) (mkpair (mkpair (mksym "ACL2" "SKIPPED-PROOFSP") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "STANDARD-CO") (
mksym "ACL2-OUTPUT-CHANNEL" "STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (
mksym "ACL2" "STANDARD-OI") (mksym "ACL2-OUTPUT-CHANNEL" 
"STANDARD-OBJECT-INPUT-0")) (mkpair (mkpair (mksym "ACL2" "TAINTED-OKP") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TIMER-ALIST") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TRACE-CO") (mksym 
"ACL2-OUTPUT-CHANNEL" "STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (mksym 
"ACL2" "TRANSLATE-ERROR-DEPTH") (mknum "-1" "1" "0" "1")) (mkpair (mkpair (
mksym "ACL2" "TRIPLE-PRINT-PREFIX") (mk_chars_str (chars_to_string (cons 32 
nil)))) (mkpair (mkpair (mksym "ACL2" "UNDONE-WORLDS-KILL-RING") (mkpair (
mksym "COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "WINDOW-INTERFACEP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "WORMHOLE-NAME") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "WORMHOLE-OUTPUT") (mksym "COMMON-LISP" "NIL")) (mksym 
"COMMON-LISP" "NIL")))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (
mkpair (mknum "4000000" "1" "0" "1") (mkpair (mksym "COMMON-LISP" "NIL") (
mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mknum "1" "1" "0" "1") (mkpair (
mksym "COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mksym 
"COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mksym 
"COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" 
"NIL")))))))))))))))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "OPEN-INPUT-CHANNELS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNELS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "GLOBAL-TABLE") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "ACL2" "T-STACK") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "ACL2" "32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "BIG-CLOCK") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "IDATES") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "RUN-TIMES") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "FILE-CLOCK") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" 
"READABLE-FILES") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym 
"ACL2" "WRITTEN-FILES") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "READ-FILES") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mksym "ACL2" "WRITEABLE-FILES") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "LIST-ALL-PACKAGE-NAMES-LST") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "USER-STOBJ-ALIST") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"COERCE-STATE-TO-OBJECT") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"COERCE-OBJECT-TO-STATE") (mkpair (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"GLOBAL-TABLE-CARS1") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "STRIP-CARS") (mkpair (
mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"GLOBAL-TABLE-CARS") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE-CARS1") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BOUNDP-GLOBAL1") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BOUNDP-GLOBAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BOUNDP-GLOBAL1") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DELETE-PAIR") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "DELETE-PAIR") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MAKUNBOUND-GLOBAL") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-GLOBAL-TABLE") (mkpair (mkpair (mksym "ACL2" "DELETE-PAIR") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GET-GLOBAL") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PUT-GLOBAL") (
mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VALUE") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "UPDATE-GLOBAL-TABLE") (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (
mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VALUE") (mkpair (mkpair (
mksym "ACL2" "GLOBAL-TABLE") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"SET-SKIPPED-PROOFSP") (mkpair (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "PUT-GLOBAL") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "SKIPPED-PROOFSP") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"SYMBOL-DOUBLET-LISTP") (mkpair (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "LST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "SYMBOL-DOUBLET-LISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STATE-GLOBAL-LET*-GET-GLOBALS") (mkpair (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "IF") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "BOUNDP-GLOBAL") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "F-GET-GLOBAL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "STATE-GLOBAL-LET*-GET-GLOBALS") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STATE-GLOBAL-LET*-PUT-GLOBALS") (mkpair (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"F-PUT-GLOBAL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"CHECK-VARS-NOT-FREE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"STATE-GLOBAL-LET*-CLEANUP-LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "STATE-GLOBAL-LET*-PUT-GLOBALS") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "BINDINGS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"STATE-GLOBAL-LET*-CLEANUP") (mkpair (mkpair (mksym "ACL2" "BINDINGS") (
mkpair (mksym "ACL2" "CDR-EXPR") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "IF") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "CAR") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "CDR-EXPR") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "F-PUT-GLOBAL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "QUOTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "BINDINGS") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "CAR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"CAR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "CDR-EXPR") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "MAKUNBOUND-GLOBAL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "QUOTE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"STATE-GLOBAL-LET*-CLEANUP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "BINDINGS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "CDR") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "CDR-EXPR") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "INTEGER-RANGE-P") (
mkpair (mkpair (mksym "ACL2" "LOWER") (mkpair (mksym "ACL2" "UPPER") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "LOWER") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "UPPER") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SIGNED-BYTE-P") (
mkpair (mkpair (mksym "ACL2" "BITS") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "BITS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "BITS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"INTEGER-RANGE-P") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mkpair (
mksym "COMMON-LISP" "EXPT") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "BITS") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EXPT") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "BITS") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "UNSIGNED-BYTE-P") (
mkpair (mkpair (mksym "ACL2" "BITS") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "BITS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mksym "ACL2" "BITS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "INTEGER-RANGE-P") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EXPT") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "BITS") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ZPF") (mkpair (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" 
"INTEGER-LENGTH") (mkpair (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ZIP") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (mksym "ACL2" "I") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "INTEGER-LENGTH") (mkpair (
mkpair (mksym "COMMON-LISP" "FLOOR") (mkpair (mksym "ACL2" "I") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BINARY-LOGAND") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ZIP") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "ZIP") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "J") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "J") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "I") (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" 
"I") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EVENP") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EVENP") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-LOGAND") (mkpair (mkpair (
mksym "COMMON-LISP" "FLOOR") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "FLOOR") (mkpair (mksym "ACL2" "J") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "I") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGNAND") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (
mkpair (mksym "ACL2" "BINARY-LOGAND") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BINARY-LOGIOR") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (
mkpair (mksym "ACL2" "BINARY-LOGAND") (mkpair (mkpair (mksym "COMMON-LISP" 
"LOGNOT") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGORC1") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-LOGIOR") (mkpair (
mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGORC2") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-LOGIOR") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGANDC1") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-LOGAND") (mkpair (
mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGANDC2") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-LOGAND") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BINARY-LOGEQV") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-LOGAND") (mkpair (
mkpair (mksym "COMMON-LISP" "LOGORC1") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "LOGORC1") (mkpair (mksym "ACL2" "J") (mkpair (mksym "ACL2" "I") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BINARY-LOGXOR") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (
mkpair (mksym "ACL2" "BINARY-LOGEQV") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGNOR") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "LOGNOT") (mkpair (
mkpair (mksym "ACL2" "BINARY-LOGIOR") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "LOGTEST") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "ZEROP") (mkpair (mkpair (mksym "ACL2" 
"BINARY-LOGAND") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DIGIT-TO-CHAR") (
mkpair (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (
mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkchr 49) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 50) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "3" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkchr 51) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "4" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 52) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "5" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 53) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "6" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkchr 54) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "7" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 55) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "8" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 56) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "9" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkchr 57) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "10" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 65) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "11" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 66) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "12" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkchr 67) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "ACL2" "N") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "13" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 68) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "14" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 69) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "15" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mkchr 70) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 48) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PRINT-BASE-P") (
mkpair (mkpair (mksym "ACL2" "PRINT-BASE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (mksym "ACL2" 
"PRINT-BASE") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (
mknum "2" "1" "0" "1") (mkpair (mknum "8" "1" "0" "1") (mkpair (mknum "10" 
"1" "0" "1") (mkpair (mknum "16" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"EXPLODE-NONNEGATIVE-INTEGER") (mkpair (mkpair (mksym "ACL2" "N") (mkpair (
mksym "ACL2" "PRINT-BASE") (mkpair (mksym "ACL2" "ANS") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" 
"N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ZP") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" "PRINT-BASE-P") (
mkpair (mksym "ACL2" "PRINT-BASE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mksym "ACL2" "ANS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 48) (mksym "COMMON-LISP" "NIL")) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ANS") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"EXPLODE-NONNEGATIVE-INTEGER") (mkpair (mkpair (mksym "COMMON-LISP" "FLOOR") (
mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "PRINT-BASE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "PRINT-BASE") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" "DIGIT-TO-CHAR") (
mkpair (mkpair (mksym "COMMON-LISP" "MOD") (mkpair (mksym "ACL2" "N") (mkpair (
mksym "ACL2" "PRINT-BASE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ANS") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EXPLODE-ATOM") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "PRINT-BASE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "DIGITS") (mkpair (mksym "ACL2" "PRINT-BASE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "10" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "VAR") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "VAR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "VAR") (mkpair (mkpair (mksym "ACL2" "THE-ERROR") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "INTEGER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "VAR") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "PRINT-BASE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "DIGITS") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mkchr 35) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "PRINT-BASE") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 98) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "PRINT-BASE") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "8" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 111) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQL") (mkpair (mksym "ACL2" "PRINT-BASE") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "16" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 120) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "ILLEGAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "EXPLODE-ATOM") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 85 (cons 110 (cons 101 (cons 120 (cons 112 (cons 101 (
cons 99 (cons 116 (cons 101 (cons 100 (cons 32 (cons 98 (cons 97 (cons 115 (
cons 101 (cons 44 (cons 32 (cons 126 (cons 120 (cons 48 nil)))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "PRINT-BASE") (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "DIGITS") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 45) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "EXPLODE-NONNEGATIVE-INTEGER") (mkpair (mkpair (
mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "PRINT-BASE") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "EXPLODE-NONNEGATIVE-INTEGER") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "PRINT-BASE") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym 
"ACL2" "PRINT-BASE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "BINARY-APPEND") (mkpair (mkpair (mksym "ACL2" "EXPLODE-ATOM") (mkpair (
mkpair (mksym "COMMON-LISP" "NUMERATOR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "PRINT-BASE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 47) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "EXPLODE-NONNEGATIVE-INTEGER") (mkpair (
mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "PRINT-BASE") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 35) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 67) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 40) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "BINARY-APPEND") (mkpair (mkpair (mksym "ACL2" 
"EXPLODE-ATOM") (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"PRINT-BASE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkchr 32) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-APPEND") (mkpair (mkpair (mksym "ACL2" "EXPLODE-ATOM") (mkpair (
mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "PRINT-BASE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mkchr 41) (mksym "COMMON-LISP" "NIL")) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-P1") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "TYP") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" "TYP") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mksym "ACL2" "PAIR") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "TYP") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"TYP") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-P1") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "TYP") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" "TYP") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mksym "ACL2" "PAIR") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "TYP") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"TYP") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-P") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "TYP") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "OPEN-INPUT-CHANNEL-P1") (mkpair (
mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "TYP") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-P") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "TYP") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNEL-P1") (mkpair (
mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "TYP") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-ANY-P1") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "CHARACTER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "CHARACTER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNEL-P1") (mkpair (mksym "ACL2" 
"CHANNEL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "BYTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "BYTE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "OBJECT") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNEL-ANY-P") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "OPEN-OUTPUT-CHANNEL-ANY-P1") (mkpair (mksym "ACL2" "CHANNEL") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-ANY-P1") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "CHARACTER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "CHARACTER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "OPEN-INPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "BYTE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "BYTE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-P1") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "OBJECT") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNEL-ANY-P") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "OPEN-INPUT-CHANNEL-ANY-P1") (mkpair (mksym "ACL2" "CHANNEL") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"CHECK-HEX-UPPERCASE") (mkpair (mkpair (mksym "ACL2" "PRINT-BASE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WRITE-BYTE$") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "ENTRY") (
mkpair (mksym "ACL2" "STATE-STATE") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-OPEN-OUTPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" 
"ADD-PAIR") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL")))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PRINT-OBJECT$") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "ENTRY") (
mkpair (mksym "ACL2" "STATE-STATE") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-OPEN-OUTPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" 
"ADD-PAIR") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL")))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"CLOSE-INPUT-CHANNEL") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "HEADER-ENTRIES") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (
mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-OPEN-INPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "DELETE-PAIR") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-READ-FILES") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"HEADER-ENTRIES") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "HEADER-ENTRIES") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"HEADER-ENTRIES") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "ACL2" "FILE-CLOCK") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "READ-FILES") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mkpair (mksym "ACL2" "OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "UPDATE-FILE-CLOCK") (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "FILE-CLOCK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "CHANNEL") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"CLOSE-OUTPUT-CHANNEL") (mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "PAIR") (mkpair (mksym "ACL2" "STATE-STATE") (mkpair (mksym "ACL2" 
"CHANNEL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "HEADER-ENTRIES") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "PAIR") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (
mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-OPEN-OUTPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "DELETE-PAIR") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"UPDATE-WRITTEN-FILES") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "HEADER-ENTRIES") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "HEADER-ENTRIES") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "HEADER-ENTRIES") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"ACL2" "FILE-CLOCK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "WRITTEN-FILES") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "CHANNEL") (mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" "CHANNEL") (
mkpair (mkpair (mksym "ACL2" "OPEN-OUTPUT-CHANNELS") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "UPDATE-FILE-CLOCK") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "FILE-CLOCK") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-CHAR$") (
mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mkpair (mksym "ACL2" "ENTRY") (mkpair (mksym "ACL2" 
"STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"ACL2" "UPDATE-OPEN-INPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ENTRY") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "OPEN-INPUT-CHANNELS") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PEEK-CHAR$") (
mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mkpair (mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-BYTE$") (
mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mkpair (mksym "ACL2" "ENTRY") (mkpair (mksym "ACL2" 
"STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"ACL2" "UPDATE-OPEN-INPUT-CHANNELS") (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (
mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ENTRY") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "OPEN-INPUT-CHANNELS") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-OBJECT") (
mkpair (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mkpair (mksym "ACL2" "ENTRY") (mkpair (mksym "ACL2" 
"STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "UPDATE-OPEN-INPUT-CHANNELS") (mkpair (mkpair (mksym 
"ACL2" "ADD-PAIR") (mkpair (mksym "ACL2" "CHANNEL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "ENTRY") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"OPEN-INPUT-CHANNELS") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "STATE-STATE") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym 
"ACL2" "CHANNEL") (mkpair (mkpair (mksym "ACL2" "OPEN-INPUT-CHANNELS") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mkpair (mksym "ACL2" "CHANNEL") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SOME-SLASHABLE") (
mkpair (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 10) (mkpair (
mkchr 12) (mkpair (mkchr 32) (mkpair (mkchr 34) (mkpair (mkchr 35) (mkpair (
mkchr 39) (mkpair (mkchr 40) (mkpair (mkchr 41) (mkpair (mkchr 44) (mkpair (
mkchr 46) (mkpair (mkchr 58) (mkpair (mkchr 59) (mkpair (mkchr 92) (mkpair (
mkchr 96) (mkpair (mkchr 97) (mkpair (mkchr 98) (mkpair (mkchr 99) (mkpair (
mkchr 100) (mkpair (mkchr 101) (mkpair (mkchr 102) (mkpair (mkchr 103) (
mkpair (mkchr 104) (mkpair (mkchr 105) (mkpair (mkchr 106) (mkpair (mkchr 107) (
mkpair (mkchr 108) (mkpair (mkchr 109) (mkpair (mkchr 110) (mkpair (mkchr 111) (
mkpair (mkchr 112) (mkpair (mkchr 113) (mkpair (mkchr 114) (mkpair (mkchr 115) (
mkpair (mkchr 116) (mkpair (mkchr 117) (mkpair (mkchr 118) (mkpair (mkchr 119) (
mkpair (mkchr 120) (mkpair (mkchr 121) (mkpair (mkchr 122) (mkpair (mkchr 124) (
mksym "COMMON-LISP" "NIL")))))))))))))))))))))))))))))))))))))))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "SOME-SLASHABLE") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MAY-NEED-SLASHES") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mkchr 48) (mkpair (mkchr 49) (mkpair (mkchr 50) (mkpair (mkchr 51) (
mkpair (mkchr 52) (mkpair (mkchr 53) (mkpair (mkchr 54) (mkpair (mkchr 55) (
mkpair (mkchr 56) (mkpair (mkchr 57) (mkpair (mkchr 43) (mkpair (mkchr 45) (
mkpair (mkchr 46) (mkpair (mkchr 94) (mkpair (mkchr 95) (mksym "COMMON-LISP" 
"NIL")))))))))))))))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "LAST") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 43) (mkpair (mkchr 45) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mkchr 48) (
mkpair (mkchr 49) (mkpair (mkchr 50) (mkpair (mkchr 51) (mkpair (mkchr 52) (
mkpair (mkchr 53) (mkpair (mkchr 54) (mkpair (mkchr 55) (mkpair (mkchr 56) (
mkpair (mkchr 57) (mkpair (mkchr 43) (mkpair (mkchr 45) (mkpair (mkchr 46) (
mkpair (mkchr 94) (mkpair (mkchr 95) (mksym "COMMON-LISP" "NIL")))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "MEMBER") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "LAST") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mkpair (mkchr 43) (mkpair (mkchr 45) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "ACL2" "SOME-SLASHABLE") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "T-STACK-LENGTH1") (
mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mkpair (mksym "ACL2" 
"T-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "T-STACK-LENGTH") (
mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "T-STACK-LENGTH1") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAKE-LIST-AC") (
mkpair (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "VAL") (mkpair (mksym 
"ACL2" "AC") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" 
"N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "AC") (mkpair (
mkpair (mksym "ACL2" "MAKE-LIST-AC") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "VAL") (mkpair (mksym "ACL2" "AC") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EXTEND-T-STACK") (
mkpair (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "VAL") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-T-STACK") (mkpair (mkpair (mksym "ACL2" "BINARY-APPEND") (
mkpair (mkpair (mksym "ACL2" "T-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "MAKE-LIST-AC") (
mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FIRST-N-AC") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "L") (mkpair (mksym 
"ACL2" "AC") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" 
"I") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"REVERSE") (mkpair (mksym "ACL2" "AC") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "FIRST-N-AC") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "AC") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TAKE") (mkpair (
mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "FIRST-N-AC") (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SUBSEQ-LIST") (
mkpair (mkpair (mksym "ACL2" "LST") (mkpair (mksym "ACL2" "START") (mkpair (
mksym "ACL2" "END") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "TAKE") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym 
"ACL2" "END") (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" 
"START") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "NTHCDR") (mkpair (mksym "ACL2" "START") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "SUBSEQ") (
mkpair (mkpair (mksym "ACL2" "SEQ") (mkpair (mksym "ACL2" "START") (mkpair (
mksym "ACL2" "END") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (
mksym "ACL2" "SEQ") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "ACL2" "SUBSEQ-LIST") (mkpair (
mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "SEQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "START") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym 
"ACL2" "END") (mkpair (mksym "ACL2" "END") (mkpair (mkpair (mksym 
"COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "SEQ") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"STRING") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "SUBSEQ-LIST") (mkpair (mksym "ACL2" "SEQ") (
mkpair (mksym "ACL2" "START") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mksym "ACL2" "END") (mkpair (mksym "ACL2" "END") (mkpair (mkpair (
mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "SEQ") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "COMMON-LISP" "BUTLAST") (
mkpair (mkpair (mksym "ACL2" "LST") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "LNG") (mkpair (mksym "ACL2" "LST") (mkpair (
mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mksym 
"ACL2" "LNG") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TAKE") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "LNG") (mkpair (
mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"LST") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "LEN") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "LST") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SHRINK-T-STACK") (
mkpair (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "UPDATE-T-STACK") (
mkpair (mkpair (mksym "ACL2" "FIRST-N-AC") (mkpair (mkpair (mksym 
"COMMON-LISP" "MAX") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (
mkpair (mksym "ACL2" "T-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "UNARY--") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "T-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "AREF-T-STACK") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mksym "ACL2" "I") (mkpair (mkpair (mksym "ACL2" "T-STACK") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ASET-T-STACK") (
mkpair (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "VAL") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-T-STACK") (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (
mksym "ACL2" "I") (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym "ACL2" 
"T-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-STACK-LENGTH1") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (
mkpair (mkpair (mksym "ACL2" "32-BIT-INTEGER-STACK") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-STACK-LENGTH") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-STACK-LENGTH1") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"EXTEND-32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" "N") (mkpair (
mksym "ACL2" "VAL") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "UPDATE-32-BIT-INTEGER-STACK") (
mkpair (mkpair (mksym "ACL2" "BINARY-APPEND") (mkpair (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "MAKE-LIST-AC") (mkpair (
mksym "ACL2" "N") (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"SHRINK-32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" "N") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "UPDATE-32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" 
"FIRST-N-AC") (mkpair (mkpair (mksym "COMMON-LISP" "MAX") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "UNARY--") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "32-BIT-INTEGER-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"AREF-32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym 
"ACL2" "32-BIT-INTEGER-STACK") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"ASET-32-BIT-INTEGER-STACK") (mkpair (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "VAL") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "UPDATE-32-BIT-INTEGER-STACK") (
mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "VAL") (mkpair (mkpair (mksym "ACL2" "32-BIT-INTEGER-STACK") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"BIG-CLOCK-NEGATIVE-P") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "ACL2" "BIG-CLOCK-ENTRY") (mkpair (mksym "ACL2" "STATE-STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DECREMENT-BIG-CLOCK") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "UPDATE-BIG-CLOCK-ENTRY") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "BIG-CLOCK-ENTRY") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"LIST-ALL-PACKAGE-NAMES") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "ACL2" 
"LIST-ALL-PACKAGE-NAMES-LST") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"UPDATE-LIST-ALL-PACKAGE-NAMES-LST") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "ACL2" "LIST-ALL-PACKAGE-NAMES-LST") (mkpair (
mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"USER-STOBJ-ALIST") (mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "USER-STOBJ-ALIST1") (
mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UPDATE-USER-STOBJ-ALIST") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "UPDATE-USER-STOBJ-ALIST1") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POWER-EVAL") (
mkpair (mkpair (mksym "ACL2" "L") (mkpair (mksym "ACL2" "B") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "B") (mkpair (mkpair (mksym "ACL2" 
"POWER-EVAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "B") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-IDATE") (
mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mkpair (mksym "ACL2" "IDATES") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"ACL2" "IDATES") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"UPDATE-IDATES") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (
mksym "ACL2" "IDATES") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "READ-RUN-TIME") (
mkpair (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mkpair (mksym "ACL2" "RUN-TIMES") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"ACL2" "RUN-TIMES") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" 
"UPDATE-RUN-TIMES") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "RUN-TIMES") (mkpair (mksym "ACL2" "STATE-STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAIN-TIMER") (
mkpair (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"CURRENT-TIME") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym 
"ACL2" "OLD-VALUE") (mkpair (mksym "ACL2" "STATE") (mkpair (mksym "ACL2" 
"CURRENT-TIME") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "STATE") (mkpair (mksym 
"ACL2" "OLD-VALUE") (mkpair (mksym "ACL2" "CURRENT-TIME") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "CURRENT-TIME") (
mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "OLD-VALUE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "STATE") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"PUT-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"ACL2" "MAIN-TIMER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"CURRENT-TIME") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mksym "ACL2" "OLD-VALUE") (mkpair (mksym "ACL2" "CURRENT-TIME") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "BOUNDP-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "MAIN-TIMER") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "ACL2" "GET-GLOBAL") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"MAIN-TIMER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "GET-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "MAIN-TIMER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE") (
mkpair (mksym "ACL2" "CURRENT-TIME") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "MV-NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "READ-RUN-TIME") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "MV-NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "READ-RUN-TIME") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PUT-ASSOC-EQ") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (
mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"PUT-ASSOC-EQ") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PUT-ASSOC-EQL") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (
mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"PUT-ASSOC-EQL") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PUT-ASSOC-EQUAL") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"PUT-ASSOC-EQUAL") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SET-TIMER") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "PUT-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "TIMER-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "PUT-ASSOC-EQ") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "VAL") (mkpair (mkpair (mksym "ACL2" "GET-GLOBAL") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "TIMER-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "GET-TIMER") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" "NAME") (mkpair (
mkpair (mksym "ACL2" "GET-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "TIMER-ALIST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PUSH-TIMER") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "SET-TIMER") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym 
"ACL2" "GET-TIMER") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "POP-TIMER") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "FLG") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "TIMER") (mkpair (
mksym "ACL2" "STATE") (mkpair (mksym "ACL2" "FLG") (mkpair (mksym "ACL2" 
"NAME") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"SET-TIMER") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mksym "ACL2" "FLG") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TIMER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TIMER") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TIMER") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "TIMER") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "GET-TIMER") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "STATE") (mkpair (mksym "ACL2" "FLG") (mkpair (mksym "ACL2" "NAME") (
mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ADD-TIMERS") (
mkpair (mkpair (mksym "ACL2" "NAME1") (mkpair (mksym "ACL2" "NAME2") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "TIMER1") (mkpair (
mksym "ACL2" "TIMER2") (mkpair (mksym "ACL2" "STATE") (mkpair (mksym "ACL2" 
"NAME1") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"SET-TIMER") (mkpair (mksym "ACL2" "NAME1") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TIMER1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "TIMER2") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"TIMER1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "GET-TIMER") (mkpair (
mksym "ACL2" "NAME1") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "GET-TIMER") (mkpair (mksym "ACL2" 
"NAME2") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE") (mkpair (mksym "ACL2" "NAME1") (mksym 
"COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "INCREMENT-TIMER") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "TIMER") (mkpair (mksym "ACL2" "NAME") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "EPSILON") (
mkpair (mksym "ACL2" "STATE") (mkpair (mksym "ACL2" "TIMER") (mkpair (mksym 
"ACL2" "NAME") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"SET-TIMER") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "TIMER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "EPSILON") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"TIMER") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "MV-NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "MAIN-TIMER") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "MV-NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "MAIN-TIMER") (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"TIMER") (mkpair (mksym "ACL2" "NAME") (mksym "COMMON-LISP" "NIL")))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "GET-TIMER") (
mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "W") (mkpair (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "GET-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "CURRENT-PACKAGE") (
mkpair (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "GET-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "CURRENT-PACKAGE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALIST") (mkpair (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "GLOBAL-VALUE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "W") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "SET-W") (mkpair (
mkpair (mksym "ACL2" "FLG") (mkpair (mksym "ACL2" "WRLD") (mkpair (mksym 
"ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"ENTRY") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ENTRY") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ENTRY") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQUAL") (mkpair (
mkpair (mksym "ACL2" "CURRENT-PACKAGE") (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "KNOWN-PACKAGE-ALIST") (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"STATE") (mkpair (mkpair (mksym "ACL2" "PUT-GLOBAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "CURRENT-PACKAGE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mk_chars_str (chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil)))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STATE") (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "PUT-GLOBAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "PROG2$") (mkpair (mksym 
"ACL2" "FLG") (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "UNION-EQ") (
mkpair (mkpair (mksym "ACL2" "LST1") (mkpair (mksym "ACL2" "LST2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "LST1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "LST2") (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "LST2") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "UNION-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "LST2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "LST1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "UNION-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "LST1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"LST2") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LD-SKIP-PROOFSP") (
mkpair (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "GET-GLOBAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "LD-SKIP-PROOFSP") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAKE-VAR-LST1") (
mkpair (mkpair (mksym "ACL2" "ROOT") (mkpair (mksym "ACL2" "SYM") (mkpair (
mksym "ACL2" "N") (mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ZP") (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"ACC") (mkpair (mkpair (mksym "ACL2" "MAKE-VAR-LST1") (mkpair (mksym "ACL2" 
"ROOT") (mkpair (mksym "ACL2" "SYM") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "COMMON-LISP" 
"COERCE") (mkpair (mkpair (mksym "ACL2" "BINARY-APPEND") (mkpair (mksym 
"ACL2" "ROOT") (mkpair (mkpair (mksym "ACL2" "EXPLODE-NONNEGATIVE-INTEGER") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "10" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"SYM") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "ACC") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MAKE-VAR-LST") (
mkpair (mkpair (mksym "ACL2" "SYM") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "MAKE-VAR-LST1") (mkpair (
mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOL-NAME") (mkpair (mksym "ACL2" "SYM") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"LIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mksym "ACL2" "SYM") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"NON-FREE-VAR-RUNES") (mkpair (mkpair (mksym "ACL2" "RUNES") (mkpair (mksym 
"ACL2" "FREE-VAR-RUNES-ONCE") (mkpair (mksym "ACL2" "FREE-VAR-RUNES-ALL") (
mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "RUNES") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "ACC") (mkpair (mkpair (mksym "ACL2" "NON-FREE-VAR-RUNES") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "RUNES") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "FREE-VAR-RUNES-ONCE") (mkpair (
mksym "ACL2" "FREE-VAR-RUNES-ALL") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"MEMBER-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "RUNES") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"FREE-VAR-RUNES-ONCE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "MEMBER-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "RUNES") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"FREE-VAR-RUNES-ONCE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "MEMBER-EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "RUNES") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"FREE-VAR-RUNES-ALL") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mksym "ACL2" "ACC") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"RUNES") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "ACC") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FREE-VAR-RUNES") (
mkpair (mkpair (mksym "ACL2" "FLG") (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "FLG") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "ONCE") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "GLOBAL-VAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "FREE-VAR-RUNES-ONCE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "GLOBAL-VAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "FREE-VAR-RUNES-ALL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"ABSOLUTE-PATHNAME-STRING-P") (mkpair (mkpair (mksym "ACL2" "STR") (mkpair (
mksym "ACL2" "DIRECTORYP") (mkpair (mksym "ACL2" "OS") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (
mkpair (mksym "ACL2" "LEN") (mkpair (mksym "ACL2" "DIRECTORYP") (mkpair (
mksym "ACL2" "OS") (mkpair (mksym "ACL2" "STR") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "STR") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "OS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "MSWINDOWS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (
mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "POS-COLON") (
mkpair (mksym "ACL2" "POS-SEP") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "POS-COLON") (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mksym "ACL2" "POS-SEP") (mkpair (mkpair (
mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "POS-COLON") (mkpair (mksym 
"ACL2" "POS-SEP") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "POSITION") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mkchr 58) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "STR") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "POSITION") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mkchr 47) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "STR") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQL") (mkpair (mkpair (mksym "COMMON-LISP" "CHAR") (
mkpair (mksym "ACL2" "STR") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkchr 47) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mksym "ACL2" "DIRECTORYP") (mkpair (mkpair (mksym "COMMON-LISP" "EQL") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR") (mkpair (mksym "ACL2" "STR") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "LEN") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkchr 47) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym 
"ACL2" "STR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"DIRECTORYP") (mkpair (mksym "ACL2" "OS") (mkpair (mksym "ACL2" "STR") (mksym 
"COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "OS") (mkpair (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "GLOBAL-VAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "OPERATING-SYSTEM") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"INCLUDE-BOOK-DIR-ALISTP") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "OS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "KEYWORDP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ABSOLUTE-PATHNAME-STRING-P") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "OS") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "ACL2" "INCLUDE-BOOK-DIR-ALISTP") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "OS") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TABLE-ALIST") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (
mksym "ACL2" "NAME") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "TABLE-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-VERIFY-GUARDS-EAGERNESS") (mkpair (mkpair (mksym "ACL2" "WRLD") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "VERIFY-GUARDS-EAGERNESS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"VERIFY-GUARDS-EAGERNESS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-COMPILE-FNS") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "COMPILE-FNS") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-MEASURE-FUNCTION") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MEASURE-FUNCTION") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "MEASURE-FUNCTION") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "ACL2-COUNT") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-WELL-FOUNDED-RELATION") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"WELL-FOUNDED-RELATION") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "WELL-FOUNDED-RELATION") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "O<") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"GOOD-DEFUN-MODE-P") (mkpair (mkpair (mksym "ACL2" "P") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (mksym "ACL2" "P") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "KEYWORD" 
"LOGIC") (mkpair (mksym "KEYWORD" "PROGRAM") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-DEFUN-MODE") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"GOOD-DEFUN-MODE-P") (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "PROGRAM") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DEFUN-MODE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-DEFUN-MODE-FROM-STATE") (mkpair (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"DEFAULT-DEFUN-MODE") (mkpair (mkpair (mksym "ACL2" "W") (mkpair (mksym 
"ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"INVISIBLE-FNS-TABLE") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"INVISIBLE-FNS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"UNARY-FUNCTION-SYMBOL-LISTP") (mkpair (mkpair (mksym "ACL2" "LST") (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mkpair (mksym 
"COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" "FORMALS") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "FORMALS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "FORMALS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "FORMALS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "UNARY-FUNCTION-SYMBOL-LISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"INVISIBLE-FNS-ENTRYP") (mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym 
"ACL2" "VAL") (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "FUNCTION-SYMBOLP") (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"UNARY-FUNCTION-SYMBOL-LISTP") (mkpair (mksym "ACL2" "VAL") (mkpair (mksym 
"ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DELETE-ASSOC-EQ") (
mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" 
"ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"DELETE-ASSOC-EQ") (mkpair (mksym "ACL2" "KEY") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DELETE-ASSOC-EQUAL") (mkpair (mkpair (mksym "ACL2" "KEY") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "KEY") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "DELETE-ASSOC-EQUAL") (mkpair (mksym 
"ACL2" "KEY") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BACKCHAIN-LIMIT") (
mkpair (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "KEYWORD" "BACKCHAIN-LIMIT") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "BACKCHAIN-LIMIT") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"DEFAULT-BACKCHAIN-LIMIT") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"DEFAULT-BACKCHAIN-LIMIT") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"DEFAULT-BACKCHAIN-LIMIT") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"REWRITE-STACK-LIMIT") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"REWRITE-STACK-LIMIT") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "REWRITE-STACK-LIMIT") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1000" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"CASE-SPLIT-LIMITATIONS") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "CASE-SPLIT-LIMITATIONS") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BINOP-TABLE") (
mkpair (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "BINOP-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MATCH-FREE-DEFAULT") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "MATCH-FREE-DEFAULT") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"MATCH-FREE-OVERRIDE") (mkpair (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (
mkpair (mkpair (mksym "ACL2" "PAIR") (mkpair (mksym "ACL2" "WRLD") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NULL") (
mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NULL") (mkpair (mksym "ACL2" "PAIR") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "CLEAR") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "CLEAR") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MATCH-FREE-OVERRIDE-NUME") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "PAIR") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MATCH-FREE-OVERRIDE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "NON-LINEARP") (
mkpair (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mkpair (mksym "COMMON-LISP" "LAMBDA") (mkpair (mkpair (mksym "ACL2" 
"TEMP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mksym "ACL2" "TEMP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "TEMP") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "NON-LINEARP") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MACRO-ALIASES") (
mkpair (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "MACRO-ALIASES-TABLE") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "NTH-ALIASES") (
mkpair (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "TABLE-ALIST") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "NTH-ALIASES-TABLE") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DEFAULT-HINTS") (
mkpair (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TABLE-ALIST") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"DEFAULT-HINTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "FIX-TRUE-LIST") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "FIX-TRUE-LIST") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BOOLEAN-LISTP") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQ") (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "BOOLEAN-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "WORMHOLE1") (
mkpair (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "INPUT") (mkpair (
mksym "ACL2" "FORM") (mkpair (mksym "ACL2" "LD-SPECIALS") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ABORT!") (mkpair (
mksym "COMMON-LISP" "NIL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"FMT-TO-COMMENT-WINDOW") (mkpair (mkpair (mksym "ACL2" "STR") (mkpair (mksym 
"ACL2" "ALIST") (mkpair (mksym "ACL2" "COL") (mkpair (mksym "ACL2" 
"EVISC-TUPLE") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "PAIRLIS2") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "PAIRLIS2") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "DUPLICATES") (
mkpair (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"ADD-TO-SET-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"DUPLICATES") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "DUPLICATES") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"ADD-TO-SET-EQUAL") (mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "MEMBER-EQUAL") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "L") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "INTERSECTION-EQ") (
mkpair (mkpair (mksym "ACL2" "L1") (mkpair (mksym "ACL2" "L2") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (mksym "ACL2" "L1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "MEMBER-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "INTERSECTION-EQ") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "INTERSECTION-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "L1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L2") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "EVENS") (mkpair (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ENDP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "EVENS") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ODDS") (mkpair (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "EVENS") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"SET-EQUALP-EQUAL") (mkpair (mkpair (mksym "ACL2" "LST1") (mkpair (mksym 
"ACL2" "LST2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "SUBSETP-EQUAL") (mkpair (
mksym "ACL2" "LST1") (mkpair (mksym "ACL2" "LST2") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "SUBSETP-EQUAL") (mkpair (mksym "ACL2" "LST2") (
mkpair (mksym "ACL2" "LST1") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MFC-CLAUSE") (
mkpair (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"PSEUDO-TERM-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" 
"TYPE-ALIST-ENTRYP") (mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"PSEUDO-TERMP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-8192" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "8191" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "TYPE-ALISTP") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"TYPE-ALIST-ENTRYP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "TYPE-ALISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MFC-TYPE-ALIST") (
mkpair (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TYPE-ALISTP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "MFC-ANCESTORS") (
mkpair (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "BAD-ATOM") (
mkpair (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "ALPHORDER") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "Y") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "=") (mkpair (mkpair (mksym 
"COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRING<=") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" 
"Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-<") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "LEXORDER") (
mkpair (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ALPHORDER") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "LEXORDER") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "LEXORDER") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "IF*") (mkpair (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" 
"Z") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" 
"Z") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "RESIZE-LIST") (
mkpair (mkpair (mksym "ACL2" "LST") (mkpair (mksym "ACL2" "N") (mkpair (mksym 
"ACL2" "DEFAULT-VALUE") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "N") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "LST") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "DEFAULT-VALUE") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "RESIZE-LIST") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "ATOM") (mkpair (mksym "ACL2" "LST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "LST") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "DEFAULT-VALUE") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "COMMON-LISP" "DEFUN") (mkpair (mksym "ACL2" "E/D-FN") (mkpair (
mkpair (mksym "ACL2" "THEORY") (mkpair (mksym "ACL2" "E/D-LIST") (mkpair (
mksym "ACL2" "ENABLE-P") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "ATOM") (
mkpair (mksym "ACL2" "E/D-LIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "THEORY") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym 
"ACL2" "ENABLE-P") (mkpair (mkpair (mksym "ACL2" "E/D-FN") (mkpair (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "UNION-THEORIES") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "THEORY") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "E/D-LIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "E/D-LIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "ACL2" "E/D-FN") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "ACL2" "SET-DIFFERENCE-THEORIES") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "THEORY") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "ACL2" "E/D-LIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "E/D-LIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "IFF-IS-AN-EQUIVALENCE") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"BOOLEANP") (mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "IFF") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (mksym "ACL2" "Y") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "IFF") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"IFF-IMPLIES-EQUAL-IMPLIES-1") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (mksym "ACL2" "Y") (mkpair (mksym 
"ACL2" "Y-EQUIV") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y-EQUIV") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"IFF-IMPLIES-EQUAL-IMPLIES-2") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "X-EQUIV") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mksym "ACL2" "X-EQUIV") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "IFF-IMPLIES-EQUAL-NOT") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "IFF") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "X-EQUIV") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mksym "ACL2" "X-EQUIV") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"BOOLEANP-COMPOUND-RECOGNIZER") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "BOOLEANP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "EQLABLEP-RECOG") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"EQLABLEP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ALISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"EQLABLE-ALISTP-FORWARD-TO-ALISTP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "EQLABLE-ALISTP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ALISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"SYMBOL-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "SYMBOL-LISTP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"SYMBOL-ALISTP-FORWARD-TO-EQLABLE-ALISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "SYMBOL-ALISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"EQLABLE-ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ZP-COMPOUND-RECOGNIZER") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ZP-OPEN") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "SYNP") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mkpair (mksym "ACL2" "SYNTAXP") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "ACL2" "VARIABLEP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"ATOM") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "ACL2" "ZP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ZIP-COMPOUND-RECOGNIZER") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "ZIP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ZIP-OPEN") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "SYNP") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mkpair (mksym "ACL2" "SYNTAXP") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "ACL2" "VARIABLEP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"ATOM") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "ACL2" "ZIP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CLOSURE") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ACL2-NUMBERP") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mkpair (mksym 
"ACL2" "UNARY--") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (
mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "ASSOCIATIVITY-OF-+") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMMUTATIVITY-OF-+") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "Y") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "UNICITY-OF-0") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "FIX") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "INVERSE-OF-+") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" 
"UNARY--") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "ASSOCIATIVITY-OF-*") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMMUTATIVITY-OF-*") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (
mksym "ACL2" "Y") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "UNICITY-OF-1") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "FIX") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "INVERSE-OF-*") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (
mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"ACL2" "UNARY-/") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "DISTRIBUTIVITY") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "<-ON-OTHERS") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "ZERO") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "TRICHOTOMY") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" 
"X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" 
"1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "POSITIVE") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "RATIONAL-IMPLIES1") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "NUMERATOR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "RATIONAL-IMPLIES2") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (mkpair (mksym "COMMON-LISP" 
"DENOMINATOR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NUMERATOR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"INTEGER-IMPLIES-RATIONAL") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLEX-IMPLIES1") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mkpair (
mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLEX-DEFINITION") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "1" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "NONZERO-IMAGPART") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"COMPLEX-RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"REALPART-IMAGPART-ELIM") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "COMPLEX") (mkpair (mkpair (mksym "COMMON-LISP" 
"REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "REALPART-COMPLEX") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (
mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "IMAGPART-COMPLEX") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (
mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "COMPLEX-EQUAL") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" 
"X1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "Y1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X2") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mksym "ACL2" "Y2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X1") (mkpair (
mksym "ACL2" "Y1") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X2") (mkpair (mksym "ACL2" 
"Y2") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" "X2") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "Y1") (mkpair (mksym "ACL2" "Y2") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "NONNEGATIVE-PRODUCT") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "INTEGER-0") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "INTEGER-1") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "INTEGER-STEP") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" 
"X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" 
"1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "-1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "LOWEST-TERMS") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" 
"N") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "R") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "Q") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "NUMERATOR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "R") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "Q") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CAR-CDR-ELIM") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CAR-CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CDR-CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CONS-EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" 
"X1") (mkpair (mksym "ACL2" "Y1") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "X2") (mkpair (
mksym "ACL2" "Y2") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" "X2") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mksym "ACL2" "Y1") (mkpair (mksym "ACL2" "Y2") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "BOOLEANP-CHARACTERP") (
mkpair (mkpair (mksym "ACL2" "BOOLEANP") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHARACTERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CHARACTERP-PAGE") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 12) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CHARACTERP-TAB") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 9) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CHARACTERP-RUBOUT") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 127) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-FORWARD-TO-EQLABLE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"EQLABLE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"STANDARD-CHAR-LISTP-FORWARD-TO-CHARACTER-LISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "STANDARD-CHAR-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "CHARACTER-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COERCE-INVERSE-1") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"CHARACTER-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "COERCE") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "STRING") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COERCE-INVERSE-2") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"COERCE") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym 
"ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "STRING") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-COERCE") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (
mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "STR") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"LIST") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"LOWER-CASE-P-CHAR-DOWNCASE") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "UPPER-CASE-P") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "LOWER-CASE-P") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHAR-DOWNCASE") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"UPPER-CASE-P-CHAR-UPCASE") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"LOWER-CASE-P") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "UPPER-CASE-P") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR-UPCASE") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"LOWER-CASE-P-FORWARD-TO-ALPHA-CHAR-P") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "LOWER-CASE-P") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ALPHA-CHAR-P") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"UPPER-CASE-P-FORWARD-TO-ALPHA-CHAR-P") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "UPPER-CASE-P") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ALPHA-CHAR-P") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ALPHA-CHAR-P-FORWARD-TO-CHARACTERP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "ALPHA-CHAR-P") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CHARACTERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTERP-CHAR-DOWNCASE") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR-DOWNCASE") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTERP-CHAR-UPCASE") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR-UPCASE") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-STRING-DOWNCASE-1") (mkpair (mkpair (mksym "ACL2" 
"CHARACTER-LISTP") (mkpair (mkpair (mksym "ACL2" "STRING-DOWNCASE1") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-STRING-UPCASE1-1") (mkpair (mkpair (mksym "ACL2" 
"CHARACTER-LISTP") (mkpair (mkpair (mksym "ACL2" "STRING-UPCASE1") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ATOM-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "ATOM-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"EQLABLE-LISTP-FORWARD-TO-ATOM-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "EQLABLE-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ATOM-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "CHARACTERP-NTH") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "I") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "ACL2" "LEN") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (
mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "I") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"STANDARD-STRING-ALISTP-FORWARD-TO-ALISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "STANDARD-STRING-ALISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"NATP-COMPOUND-RECOGNIZER") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "NATP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"POSP-COMPOUND-RECOGNIZER") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "POSP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "O-P-IMPLIES-O<G") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "O-P") (
mkpair (mksym "ACL2" "A") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "O<G") (mkpair (mksym "ACL2" "A") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"STRINGP-SYMBOL-PACKAGE-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (
mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"SYMBOLP-INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOLP") (mkpair (mkpair (mksym "ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "SYMBOLP-PKG-WITNESS") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mkpair (mksym "ACL2" 
"PKG-WITNESS") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"KEYWORDP-FORWARD-TO-SYMBOLP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "KEYWORDP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL-SYMBOL-NAME") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOL-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"SYMBOL-NAME-PKG-WITNESS") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (mkpair (mkpair (mksym 
"ACL2" "PKG-WITNESS") (mkpair (mksym "ACL2" "PKG-NAME") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mk_chars_str (chars_to_string (cons 65 (cons 67 (cons 76 (
cons 50 (cons 45 (cons 80 (cons 75 (cons 71 (cons 45 (cons 87 (cons 73 (cons 
84 (cons 78 (cons 69 (cons 83 (cons 83 nil)))))))))))))))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"SYMBOL-PACKAGE-NAME-PKG-WITNESS-NAME") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mkpair (
mksym "ACL2" "PKG-WITNESS") (mkpair (mksym "ACL2" "PKG-NAME") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (
mksym "ACL2" "PKG-NAME") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"PKG-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mk_chars_str (chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil)))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "SYMBOL-EQUALITY") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" 
"S1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "S2") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOL-NAME") (mkpair (mksym "ACL2" "S1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (mkpair (mksym 
"ACL2" "S2") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "S1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" 
"S2") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "S1") (mkpair (mksym "ACL2" "S2") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"SYMBOL-NAME-INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "S") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym 
"ACL2" "ANY-SYMBOL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (
mkpair (mkpair (mksym "ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym 
"ACL2" "S") (mkpair (mksym "ACL2" "ANY-SYMBOL") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "S") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"ACL2-INPUT-CHANNEL-PACKAGE") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 (cons 45 (cons 73 (cons 
78 (cons 80 (cons 85 (cons 84 (cons 45 (cons 67 (cons 72 (cons 65 (cons 78 (
cons 78 (cons 69 (cons 76 nil)))))))))))))))))))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mkpair (mksym 
"ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 (cons 45 (cons 73 (cons 
78 (cons 80 (cons 85 (cons 84 (cons 45 (cons 67 (cons 72 (cons 65 (cons 78 (
cons 78 (cons 69 (cons 76 nil)))))))))))))))))))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"ACL2-OUTPUT-CHANNEL-PACKAGE") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 (cons 45 (cons 79 (cons 
85 (cons 84 (cons 80 (cons 85 (cons 84 (cons 45 (cons 67 (cons 72 (cons 65 (
cons 78 (cons 78 (cons 69 (cons 76 nil))))))))))))))))))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (
mkpair (mkpair (mksym "ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mk_chars_str (chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 (cons 45 (
cons 79 (cons 85 (cons 84 (cons 80 (cons 85 (cons 84 (cons 45 (cons 67 (cons 
72 (cons 65 (cons 78 (cons 78 (cons 69 (cons 76 nil))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "ACL2-PACKAGE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" 
"MEMBER-SYMBOL-NAME") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym "COMMON-LISP" 
"&ALLOW-OTHER-KEYS") (mkpair (mksym "COMMON-LISP" "*PRINT-MISER-WIDTH*") (
mkpair (mksym "COMMON-LISP" "&AUX") (mkpair (mksym "COMMON-LISP" 
"*PRINT-PPRINT-DISPATCH*") (mkpair (mksym "COMMON-LISP" "&BODY") (mkpair (
mksym "COMMON-LISP" "*PRINT-PRETTY*") (mkpair (mksym "COMMON-LISP" 
"&ENVIRONMENT") (mkpair (mksym "COMMON-LISP" "*PRINT-RADIX*") (mkpair (mksym 
"COMMON-LISP" "&KEY") (mkpair (mksym "COMMON-LISP" "*PRINT-READABLY*") (
mkpair (mksym "COMMON-LISP" "&OPTIONAL") (mkpair (mksym "COMMON-LISP" 
"*PRINT-RIGHT-MARGIN*") (mkpair (mksym "COMMON-LISP" "&REST") (mkpair (mksym 
"COMMON-LISP" "*QUERY-IO*") (mkpair (mksym "COMMON-LISP" "&WHOLE") (mkpair (
mksym "COMMON-LISP" "*RANDOM-STATE*") (mkpair (mksym "COMMON-LISP" "*") (
mkpair (mksym "COMMON-LISP" "*READ-BASE*") (mkpair (mksym "COMMON-LISP" "**") (
mkpair (mksym "COMMON-LISP" "*READ-DEFAULT-FLOAT-FORMAT*") (mkpair (mksym 
"COMMON-LISP" "***") (mkpair (mksym "COMMON-LISP" "*READ-EVAL*") (mkpair (
mksym "COMMON-LISP" "*BREAK-ON-SIGNALS*") (mkpair (mksym "COMMON-LISP" 
"*READ-SUPPRESS*") (mkpair (mksym "COMMON-LISP" "*COMPILE-FILE-PATHNAME*") (
mkpair (mksym "COMMON-LISP" "*READTABLE*") (mkpair (mksym "COMMON-LISP" 
"*COMPILE-FILE-TRUENAME*") (mkpair (mksym "COMMON-LISP" "*STANDARD-INPUT*") (
mkpair (mksym "COMMON-LISP" "*COMPILE-PRINT*") (mkpair (mksym "COMMON-LISP" 
"*STANDARD-OUTPUT*") (mkpair (mksym "COMMON-LISP" "*COMPILE-VERBOSE*") (
mkpair (mksym "COMMON-LISP" "*TERMINAL-IO*") (mkpair (mksym "COMMON-LISP" 
"*DEBUG-IO*") (mkpair (mksym "COMMON-LISP" "*TRACE-OUTPUT*") (mkpair (mksym 
"COMMON-LISP" "*DEBUGGER-HOOK*") (mkpair (mksym "COMMON-LISP" "+") (mkpair (
mksym "COMMON-LISP" "*DEFAULT-PATHNAME-DEFAULTS*") (mkpair (mksym 
"COMMON-LISP" "++") (mkpair (mksym "COMMON-LISP" "*ERROR-OUTPUT*") (mkpair (
mksym "COMMON-LISP" "+++") (mkpair (mksym "COMMON-LISP" "*FEATURES*") (mkpair (
mksym "COMMON-LISP" "-") (mkpair (mksym "COMMON-LISP" "*GENSYM-COUNTER*") (
mkpair (mksym "COMMON-LISP" "/") (mkpair (mksym "COMMON-LISP" 
"*LOAD-PATHNAME*") (mkpair (mksym "COMMON-LISP" "//") (mkpair (mksym 
"COMMON-LISP" "*LOAD-PRINT*") (mkpair (mksym "COMMON-LISP" "///") (mkpair (
mksym "COMMON-LISP" "*LOAD-TRUENAME*") (mkpair (mksym "COMMON-LISP" "/=") (
mkpair (mksym "COMMON-LISP" "*LOAD-VERBOSE*") (mkpair (mksym "COMMON-LISP" 
"1+") (mkpair (mksym "COMMON-LISP" "*MACROEXPAND-HOOK*") (mkpair (mksym 
"COMMON-LISP" "1-") (mkpair (mksym "COMMON-LISP" "*MODULES*") (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "COMMON-LISP" "*PACKAGE*") (mkpair (mksym 
"COMMON-LISP" "<=") (mkpair (mksym "COMMON-LISP" "*PRINT-ARRAY*") (mkpair (
mksym "COMMON-LISP" "=") (mkpair (mksym "COMMON-LISP" "*PRINT-BASE*") (mkpair (
mksym "COMMON-LISP" ">") (mkpair (mksym "COMMON-LISP" "*PRINT-CASE*") (mkpair (
mksym "COMMON-LISP" ">=") (mkpair (mksym "COMMON-LISP" "*PRINT-CIRCLE*") (
mkpair (mksym "COMMON-LISP" "ABORT") (mkpair (mksym "COMMON-LISP" 
"*PRINT-ESCAPE*") (mkpair (mksym "COMMON-LISP" "ABS") (mkpair (mksym 
"COMMON-LISP" "*PRINT-GENSYM*") (mkpair (mksym "COMMON-LISP" "ACONS") (mkpair (
mksym "COMMON-LISP" "*PRINT-LENGTH*") (mkpair (mksym "COMMON-LISP" "ACOS") (
mkpair (mksym "COMMON-LISP" "*PRINT-LEVEL*") (mkpair (mksym "COMMON-LISP" 
"ACOSH") (mkpair (mksym "COMMON-LISP" "*PRINT-LINES*") (mkpair (mksym 
"COMMON-LISP" "ADD-METHOD") (mkpair (mksym "COMMON-LISP" "ADJOIN") (mkpair (
mksym "COMMON-LISP" "ATOM") (mkpair (mksym "COMMON-LISP" "BOUNDP") (mkpair (
mksym "COMMON-LISP" "ADJUST-ARRAY") (mkpair (mksym "COMMON-LISP" "BASE-CHAR") (
mkpair (mksym "COMMON-LISP" "BREAK") (mkpair (mksym "COMMON-LISP" 
"ADJUSTABLE-ARRAY-P") (mkpair (mksym "COMMON-LISP" "BASE-STRING") (mkpair (
mksym "COMMON-LISP" "BROADCAST-STREAM") (mkpair (mksym "COMMON-LISP" 
"ALLOCATE-INSTANCE") (mkpair (mksym "COMMON-LISP" "BIGNUM") (mkpair (mksym 
"COMMON-LISP" "BROADCAST-STREAM-STREAMS") (mkpair (mksym "COMMON-LISP" 
"ALPHA-CHAR-P") (mkpair (mksym "COMMON-LISP" "BIT") (mkpair (mksym 
"COMMON-LISP" "BUILT-IN-CLASS") (mkpair (mksym "COMMON-LISP" "ALPHANUMERICP") (
mkpair (mksym "COMMON-LISP" "BIT-AND") (mkpair (mksym "COMMON-LISP" "BUTLAST") (
mkpair (mksym "COMMON-LISP" "AND") (mkpair (mksym "COMMON-LISP" "BIT-ANDC1") (
mkpair (mksym "COMMON-LISP" "BYTE") (mkpair (mksym "COMMON-LISP" "APPEND") (
mkpair (mksym "COMMON-LISP" "BIT-ANDC2") (mkpair (mksym "COMMON-LISP" 
"BYTE-POSITION") (mkpair (mksym "COMMON-LISP" "APPLY") (mkpair (mksym 
"COMMON-LISP" "BIT-EQV") (mkpair (mksym "COMMON-LISP" "BYTE-SIZE") (mkpair (
mksym "COMMON-LISP" "APROPOS") (mkpair (mksym "COMMON-LISP" "BIT-IOR") (
mkpair (mksym "COMMON-LISP" "CAAAAR") (mkpair (mksym "COMMON-LISP" 
"APROPOS-LIST") (mkpair (mksym "COMMON-LISP" "BIT-NAND") (mkpair (mksym 
"COMMON-LISP" "CAAADR") (mkpair (mksym "COMMON-LISP" "AREF") (mkpair (mksym 
"COMMON-LISP" "BIT-NOR") (mkpair (mksym "COMMON-LISP" "CAAAR") (mkpair (mksym 
"COMMON-LISP" "ARITHMETIC-ERROR") (mkpair (mksym "COMMON-LISP" "BIT-NOT") (
mkpair (mksym "COMMON-LISP" "CAADAR") (mkpair (mksym "COMMON-LISP" 
"ARITHMETIC-ERROR-OPERANDS") (mkpair (mksym "COMMON-LISP" "BIT-ORC1") (mkpair (
mksym "COMMON-LISP" "CAADDR") (mkpair (mksym "COMMON-LISP" 
"ARITHMETIC-ERROR-OPERATION") (mkpair (mksym "COMMON-LISP" "BIT-ORC2") (
mkpair (mksym "COMMON-LISP" "CAADR") (mkpair (mksym "COMMON-LISP" "ARRAY") (
mkpair (mksym "COMMON-LISP" "BIT-VECTOR") (mkpair (mksym "COMMON-LISP" "CAAR") (
mkpair (mksym "COMMON-LISP" "ARRAY-DIMENSION") (mkpair (mksym "COMMON-LISP" 
"BIT-VECTOR-P") (mkpair (mksym "COMMON-LISP" "CADAAR") (mkpair (mksym 
"COMMON-LISP" "ARRAY-DIMENSION-LIMIT") (mkpair (mksym "COMMON-LISP" "BIT-XOR") (
mkpair (mksym "COMMON-LISP" "CADADR") (mkpair (mksym "COMMON-LISP" 
"ARRAY-DIMENSIONS") (mkpair (mksym "COMMON-LISP" "BLOCK") (mkpair (mksym 
"COMMON-LISP" "CADAR") (mkpair (mksym "COMMON-LISP" "ARRAY-DISPLACEMENT") (
mkpair (mksym "COMMON-LISP" "BOOLE") (mkpair (mksym "COMMON-LISP" "CADDAR") (
mkpair (mksym "COMMON-LISP" "ARRAY-ELEMENT-TYPE") (mkpair (mksym 
"COMMON-LISP" "BOOLE-1") (mkpair (mksym "COMMON-LISP" "CADDDR") (mkpair (
mksym "COMMON-LISP" "ARRAY-HAS-FILL-POINTER-P") (mkpair (mksym "COMMON-LISP" 
"BOOLE-2") (mkpair (mksym "COMMON-LISP" "CADDR") (mkpair (mksym "COMMON-LISP" 
"ARRAY-IN-BOUNDS-P") (mkpair (mksym "COMMON-LISP" "BOOLE-AND") (mkpair (mksym 
"COMMON-LISP" "CADR") (mkpair (mksym "COMMON-LISP" "ARRAY-RANK") (mkpair (
mksym "COMMON-LISP" "BOOLE-ANDC1") (mkpair (mksym "COMMON-LISP" 
"CALL-ARGUMENTS-LIMIT") (mkpair (mksym "COMMON-LISP" "ARRAY-RANK-LIMIT") (
mkpair (mksym "COMMON-LISP" "BOOLE-ANDC2") (mkpair (mksym "COMMON-LISP" 
"CALL-METHOD") (mkpair (mksym "COMMON-LISP" "ARRAY-ROW-MAJOR-INDEX") (mkpair (
mksym "COMMON-LISP" "BOOLE-C1") (mkpair (mksym "COMMON-LISP" 
"CALL-NEXT-METHOD") (mkpair (mksym "COMMON-LISP" "ARRAY-TOTAL-SIZE") (mkpair (
mksym "COMMON-LISP" "BOOLE-C2") (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mksym "COMMON-LISP" "ARRAY-TOTAL-SIZE-LIMIT") (mkpair (mksym "COMMON-LISP" 
"BOOLE-CLR") (mkpair (mksym "COMMON-LISP" "CASE") (mkpair (mksym 
"COMMON-LISP" "ARRAYP") (mkpair (mksym "COMMON-LISP" "BOOLE-EQV") (mkpair (
mksym "COMMON-LISP" "CATCH") (mkpair (mksym "COMMON-LISP" "ASH") (mkpair (
mksym "COMMON-LISP" "BOOLE-IOR") (mkpair (mksym "COMMON-LISP" "CCASE") (
mkpair (mksym "COMMON-LISP" "ASIN") (mkpair (mksym "COMMON-LISP" "BOOLE-NAND") (
mkpair (mksym "COMMON-LISP" "CDAAAR") (mkpair (mksym "COMMON-LISP" "ASINH") (
mkpair (mksym "COMMON-LISP" "BOOLE-NOR") (mkpair (mksym "COMMON-LISP" 
"CDAADR") (mkpair (mksym "COMMON-LISP" "ASSERT") (mkpair (mksym "COMMON-LISP" 
"BOOLE-ORC1") (mkpair (mksym "COMMON-LISP" "CDAAR") (mkpair (mksym 
"COMMON-LISP" "ASSOC") (mkpair (mksym "COMMON-LISP" "BOOLE-ORC2") (mkpair (
mksym "COMMON-LISP" "CDADAR") (mkpair (mksym "COMMON-LISP" "ASSOC-IF") (
mkpair (mksym "COMMON-LISP" "BOOLE-SET") (mkpair (mksym "COMMON-LISP" 
"CDADDR") (mkpair (mksym "COMMON-LISP" "ASSOC-IF-NOT") (mkpair (mksym 
"COMMON-LISP" "BOOLE-XOR") (mkpair (mksym "COMMON-LISP" "CDADR") (mkpair (
mksym "COMMON-LISP" "ATAN") (mkpair (mksym "COMMON-LISP" "BOOLEAN") (mkpair (
mksym "COMMON-LISP" "CDAR") (mkpair (mksym "COMMON-LISP" "ATANH") (mkpair (
mksym "COMMON-LISP" "BOTH-CASE-P") (mkpair (mksym "COMMON-LISP" "CDDAAR") (
mkpair (mksym "COMMON-LISP" "CDDADR") (mkpair (mksym "COMMON-LISP" 
"CLEAR-INPUT") (mkpair (mksym "COMMON-LISP" "COPY-TREE") (mkpair (mksym 
"COMMON-LISP" "CDDAR") (mkpair (mksym "COMMON-LISP" "CLEAR-OUTPUT") (mkpair (
mksym "COMMON-LISP" "COS") (mkpair (mksym "COMMON-LISP" "CDDDAR") (mkpair (
mksym "COMMON-LISP" "CLOSE") (mkpair (mksym "COMMON-LISP" "COSH") (mkpair (
mksym "COMMON-LISP" "CDDDDR") (mkpair (mksym "COMMON-LISP" "CLRHASH") (mkpair (
mksym "COMMON-LISP" "COUNT") (mkpair (mksym "COMMON-LISP" "CDDDR") (mkpair (
mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mksym "COMMON-LISP" "COUNT-IF") (
mkpair (mksym "COMMON-LISP" "CDDR") (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mksym "COMMON-LISP" "COUNT-IF-NOT") (mkpair (mksym "COMMON-LISP" 
"CDR") (mkpair (mksym "COMMON-LISP" "COMPILATION-SPEED") (mkpair (mksym 
"COMMON-LISP" "CTYPECASE") (mkpair (mksym "COMMON-LISP" "CEILING") (mkpair (
mksym "COMMON-LISP" "COMPILE") (mkpair (mksym "COMMON-LISP" "DEBUG") (mkpair (
mksym "COMMON-LISP" "CELL-ERROR") (mkpair (mksym "COMMON-LISP" "COMPILE-FILE") (
mkpair (mksym "COMMON-LISP" "DECF") (mkpair (mksym "COMMON-LISP" 
"CELL-ERROR-NAME") (mkpair (mksym "COMMON-LISP" "COMPILE-FILE-PATHNAME") (
mkpair (mksym "COMMON-LISP" "DECLAIM") (mkpair (mksym "COMMON-LISP" "CERROR") (
mkpair (mksym "COMMON-LISP" "COMPILED-FUNCTION") (mkpair (mksym "COMMON-LISP" 
"DECLARATION") (mkpair (mksym "COMMON-LISP" "CHANGE-CLASS") (mkpair (mksym 
"COMMON-LISP" "COMPILED-FUNCTION-P") (mkpair (mksym "COMMON-LISP" "DECLARE") (
mkpair (mksym "COMMON-LISP" "CHAR") (mkpair (mksym "COMMON-LISP" 
"COMPILER-MACRO") (mkpair (mksym "COMMON-LISP" "DECODE-FLOAT") (mkpair (mksym 
"COMMON-LISP" "CHAR-CODE") (mkpair (mksym "COMMON-LISP" 
"COMPILER-MACRO-FUNCTION") (mkpair (mksym "COMMON-LISP" 
"DECODE-UNIVERSAL-TIME") (mkpair (mksym "COMMON-LISP" "CHAR-CODE-LIMIT") (
mkpair (mksym "COMMON-LISP" "COMPLEMENT") (mkpair (mksym "COMMON-LISP" 
"DEFCLASS") (mkpair (mksym "COMMON-LISP" "CHAR-DOWNCASE") (mkpair (mksym 
"COMMON-LISP" "COMPLEX") (mkpair (mksym "COMMON-LISP" "DEFCONSTANT") (mkpair (
mksym "COMMON-LISP" "CHAR-EQUAL") (mkpair (mksym "COMMON-LISP" "COMPLEXP") (
mkpair (mksym "COMMON-LISP" "DEFGENERIC") (mkpair (mksym "COMMON-LISP" 
"CHAR-GREATERP") (mkpair (mksym "COMMON-LISP" "COMPUTE-APPLICABLE-METHODS") (
mkpair (mksym "COMMON-LISP" "DEFINE-COMPILER-MACRO") (mkpair (mksym 
"COMMON-LISP" "CHAR-INT") (mkpair (mksym "COMMON-LISP" "COMPUTE-RESTARTS") (
mkpair (mksym "COMMON-LISP" "DEFINE-CONDITION") (mkpair (mksym "COMMON-LISP" 
"CHAR-LESSP") (mkpair (mksym "COMMON-LISP" "CONCATENATE") (mkpair (mksym 
"COMMON-LISP" "DEFINE-METHOD-COMBINATION") (mkpair (mksym "COMMON-LISP" 
"CHAR-NAME") (mkpair (mksym "COMMON-LISP" "CONCATENATED-STREAM") (mkpair (
mksym "COMMON-LISP" "DEFINE-MODIFY-MACRO") (mkpair (mksym "COMMON-LISP" 
"CHAR-NOT-EQUAL") (mkpair (mksym "COMMON-LISP" "CONCATENATED-STREAM-STREAMS") (
mkpair (mksym "COMMON-LISP" "DEFINE-SETF-EXPANDER") (mkpair (mksym 
"COMMON-LISP" "CHAR-NOT-GREATERP") (mkpair (mksym "COMMON-LISP" "COND") (
mkpair (mksym "COMMON-LISP" "DEFINE-SYMBOL-MACRO") (mkpair (mksym 
"COMMON-LISP" "CHAR-NOT-LESSP") (mkpair (mksym "COMMON-LISP" "CONDITION") (
mkpair (mksym "COMMON-LISP" "DEFMACRO") (mkpair (mksym "COMMON-LISP" 
"CHAR-UPCASE") (mkpair (mksym "COMMON-LISP" "CONJUGATE") (mkpair (mksym 
"COMMON-LISP" "DEFMETHOD") (mkpair (mksym "COMMON-LISP" "CHAR/=") (mkpair (
mksym "COMMON-LISP" "CONS") (mkpair (mksym "COMMON-LISP" "DEFPACKAGE") (
mkpair (mksym "COMMON-LISP" "CHAR<") (mkpair (mksym "COMMON-LISP" "CONSP") (
mkpair (mksym "COMMON-LISP" "DEFPARAMETER") (mkpair (mksym "COMMON-LISP" 
"CHAR<=") (mkpair (mksym "COMMON-LISP" "CONSTANTLY") (mkpair (mksym 
"COMMON-LISP" "DEFSETF") (mkpair (mksym "COMMON-LISP" "CHAR=") (mkpair (mksym 
"COMMON-LISP" "CONSTANTP") (mkpair (mksym "COMMON-LISP" "DEFSTRUCT") (mkpair (
mksym "COMMON-LISP" "CHAR>") (mkpair (mksym "COMMON-LISP" "CONTINUE") (mkpair (
mksym "COMMON-LISP" "DEFTYPE") (mkpair (mksym "COMMON-LISP" "CHAR>=") (mkpair (
mksym "COMMON-LISP" "CONTROL-ERROR") (mkpair (mksym "COMMON-LISP" "DEFUN") (
mkpair (mksym "COMMON-LISP" "CHARACTER") (mkpair (mksym "COMMON-LISP" 
"COPY-ALIST") (mkpair (mksym "COMMON-LISP" "DEFVAR") (mkpair (mksym 
"COMMON-LISP" "CHARACTERP") (mkpair (mksym "COMMON-LISP" "COPY-LIST") (mkpair (
mksym "COMMON-LISP" "DELETE") (mkpair (mksym "COMMON-LISP" "CHECK-TYPE") (
mkpair (mksym "COMMON-LISP" "COPY-PPRINT-DISPATCH") (mkpair (mksym 
"COMMON-LISP" "DELETE-DUPLICATES") (mkpair (mksym "COMMON-LISP" "CIS") (
mkpair (mksym "COMMON-LISP" "COPY-READTABLE") (mkpair (mksym "COMMON-LISP" 
"DELETE-FILE") (mkpair (mksym "COMMON-LISP" "CLASS") (mkpair (mksym 
"COMMON-LISP" "COPY-SEQ") (mkpair (mksym "COMMON-LISP" "DELETE-IF") (mkpair (
mksym "COMMON-LISP" "CLASS-NAME") (mkpair (mksym "COMMON-LISP" 
"COPY-STRUCTURE") (mkpair (mksym "COMMON-LISP" "DELETE-IF-NOT") (mkpair (
mksym "COMMON-LISP" "CLASS-OF") (mkpair (mksym "COMMON-LISP" "COPY-SYMBOL") (
mkpair (mksym "COMMON-LISP" "DELETE-PACKAGE") (mkpair (mksym "COMMON-LISP" 
"DENOMINATOR") (mkpair (mksym "COMMON-LISP" "EQ") (mkpair (mksym 
"COMMON-LISP" "DEPOSIT-FIELD") (mkpair (mksym "COMMON-LISP" "EQL") (mkpair (
mksym "COMMON-LISP" "DESCRIBE") (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "COMMON-LISP" "DESCRIBE-OBJECT") (mkpair (mksym "COMMON-LISP" "EQUALP") (
mkpair (mksym "COMMON-LISP" "DESTRUCTURING-BIND") (mkpair (mksym 
"COMMON-LISP" "ERROR") (mkpair (mksym "COMMON-LISP" "DIGIT-CHAR") (mkpair (
mksym "COMMON-LISP" "ETYPECASE") (mkpair (mksym "COMMON-LISP" "DIGIT-CHAR-P") (
mkpair (mksym "COMMON-LISP" "EVAL") (mkpair (mksym "COMMON-LISP" "DIRECTORY") (
mkpair (mksym "COMMON-LISP" "EVAL-WHEN") (mkpair (mksym "COMMON-LISP" 
"DIRECTORY-NAMESTRING") (mkpair (mksym "COMMON-LISP" "EVENP") (mkpair (mksym 
"COMMON-LISP" "DISASSEMBLE") (mkpair (mksym "COMMON-LISP" "EVERY") (mkpair (
mksym "COMMON-LISP" "DIVISION-BY-ZERO") (mkpair (mksym "COMMON-LISP" "EXP") (
mkpair (mksym "COMMON-LISP" "DO") (mkpair (mksym "COMMON-LISP" "EXPORT") (
mkpair (mksym "COMMON-LISP" "DO*") (mkpair (mksym "COMMON-LISP" "EXPT") (
mkpair (mksym "COMMON-LISP" "DO-ALL-SYMBOLS") (mkpair (mksym "COMMON-LISP" 
"EXTENDED-CHAR") (mkpair (mksym "COMMON-LISP" "DO-EXTERNAL-SYMBOLS") (mkpair (
mksym "COMMON-LISP" "FBOUNDP") (mkpair (mksym "COMMON-LISP" "DO-SYMBOLS") (
mkpair (mksym "COMMON-LISP" "FCEILING") (mkpair (mksym "COMMON-LISP" 
"DOCUMENTATION") (mkpair (mksym "COMMON-LISP" "FDEFINITION") (mkpair (mksym 
"COMMON-LISP" "DOLIST") (mkpair (mksym "COMMON-LISP" "FFLOOR") (mkpair (mksym 
"COMMON-LISP" "DOTIMES") (mkpair (mksym "COMMON-LISP" "FIFTH") (mkpair (mksym 
"COMMON-LISP" "DOUBLE-FLOAT") (mkpair (mksym "COMMON-LISP" "FILE-AUTHOR") (
mkpair (mksym "COMMON-LISP" "DOUBLE-FLOAT-EPSILON") (mkpair (mksym 
"COMMON-LISP" "FILE-ERROR") (mkpair (mksym "COMMON-LISP" 
"DOUBLE-FLOAT-NEGATIVE-EPSILON") (mkpair (mksym "COMMON-LISP" 
"FILE-ERROR-PATHNAME") (mkpair (mksym "COMMON-LISP" "DPB") (mkpair (mksym 
"COMMON-LISP" "FILE-LENGTH") (mkpair (mksym "COMMON-LISP" "DRIBBLE") (mkpair (
mksym "COMMON-LISP" "FILE-NAMESTRING") (mkpair (mksym "COMMON-LISP" 
"DYNAMIC-EXTENT") (mkpair (mksym "COMMON-LISP" "FILE-POSITION") (mkpair (
mksym "COMMON-LISP" "ECASE") (mkpair (mksym "COMMON-LISP" "FILE-STREAM") (
mkpair (mksym "COMMON-LISP" "ECHO-STREAM") (mkpair (mksym "COMMON-LISP" 
"FILE-STRING-LENGTH") (mkpair (mksym "COMMON-LISP" "ECHO-STREAM-INPUT-STREAM") (
mkpair (mksym "COMMON-LISP" "FILE-WRITE-DATE") (mkpair (mksym "COMMON-LISP" 
"ECHO-STREAM-OUTPUT-STREAM") (mkpair (mksym "COMMON-LISP" "FILL") (mkpair (
mksym "COMMON-LISP" "ED") (mkpair (mksym "COMMON-LISP" "FILL-POINTER") (
mkpair (mksym "COMMON-LISP" "EIGHTH") (mkpair (mksym "COMMON-LISP" "FIND") (
mkpair (mksym "COMMON-LISP" "ELT") (mkpair (mksym "COMMON-LISP" 
"FIND-ALL-SYMBOLS") (mkpair (mksym "COMMON-LISP" "ENCODE-UNIVERSAL-TIME") (
mkpair (mksym "COMMON-LISP" "FIND-CLASS") (mkpair (mksym "COMMON-LISP" 
"END-OF-FILE") (mkpair (mksym "COMMON-LISP" "FIND-IF") (mkpair (mksym 
"COMMON-LISP" "ENDP") (mkpair (mksym "COMMON-LISP" "FIND-IF-NOT") (mkpair (
mksym "COMMON-LISP" "ENOUGH-NAMESTRING") (mkpair (mksym "COMMON-LISP" 
"FIND-METHOD") (mkpair (mksym "COMMON-LISP" "ENSURE-DIRECTORIES-EXIST") (
mkpair (mksym "COMMON-LISP" "FIND-PACKAGE") (mkpair (mksym "COMMON-LISP" 
"ENSURE-GENERIC-FUNCTION") (mkpair (mksym "COMMON-LISP" "FIND-RESTART") (
mkpair (mksym "COMMON-LISP" "FIND-SYMBOL") (mkpair (mksym "COMMON-LISP" 
"GET-INTERNAL-RUN-TIME") (mkpair (mksym "COMMON-LISP" "FINISH-OUTPUT") (
mkpair (mksym "COMMON-LISP" "GET-MACRO-CHARACTER") (mkpair (mksym 
"COMMON-LISP" "FIRST") (mkpair (mksym "COMMON-LISP" 
"GET-OUTPUT-STREAM-STRING") (mkpair (mksym "COMMON-LISP" "FIXNUM") (mkpair (
mksym "COMMON-LISP" "GET-PROPERTIES") (mkpair (mksym "COMMON-LISP" "FLET") (
mkpair (mksym "COMMON-LISP" "GET-SETF-EXPANSION") (mkpair (mksym 
"COMMON-LISP" "FLOAT") (mkpair (mksym "COMMON-LISP" "GET-UNIVERSAL-TIME") (
mkpair (mksym "COMMON-LISP" "FLOAT-DIGITS") (mkpair (mksym "COMMON-LISP" 
"GETF") (mkpair (mksym "COMMON-LISP" "FLOAT-PRECISION") (mkpair (mksym 
"COMMON-LISP" "GETHASH") (mkpair (mksym "COMMON-LISP" "FLOAT-RADIX") (mkpair (
mksym "COMMON-LISP" "GO") (mkpair (mksym "COMMON-LISP" "FLOAT-SIGN") (mkpair (
mksym "COMMON-LISP" "GRAPHIC-CHAR-P") (mkpair (mksym "COMMON-LISP" 
"FLOATING-POINT-INEXACT") (mkpair (mksym "COMMON-LISP" "HANDLER-BIND") (
mkpair (mksym "COMMON-LISP" "FLOATING-POINT-INVALID-OPERATION") (mkpair (
mksym "COMMON-LISP" "HANDLER-CASE") (mkpair (mksym "COMMON-LISP" 
"FLOATING-POINT-OVERFLOW") (mkpair (mksym "COMMON-LISP" "HASH-TABLE") (mkpair (
mksym "COMMON-LISP" "FLOATING-POINT-UNDERFLOW") (mkpair (mksym "COMMON-LISP" 
"HASH-TABLE-COUNT") (mkpair (mksym "COMMON-LISP" "FLOATP") (mkpair (mksym 
"COMMON-LISP" "HASH-TABLE-P") (mkpair (mksym "COMMON-LISP" "FLOOR") (mkpair (
mksym "COMMON-LISP" "HASH-TABLE-REHASH-SIZE") (mkpair (mksym "COMMON-LISP" 
"FMAKUNBOUND") (mkpair (mksym "COMMON-LISP" "HASH-TABLE-REHASH-THRESHOLD") (
mkpair (mksym "COMMON-LISP" "FORCE-OUTPUT") (mkpair (mksym "COMMON-LISP" 
"HASH-TABLE-SIZE") (mkpair (mksym "COMMON-LISP" "FORMAT") (mkpair (mksym 
"COMMON-LISP" "HASH-TABLE-TEST") (mkpair (mksym "COMMON-LISP" "FORMATTER") (
mkpair (mksym "COMMON-LISP" "HOST-NAMESTRING") (mkpair (mksym "COMMON-LISP" 
"FOURTH") (mkpair (mksym "COMMON-LISP" "IDENTITY") (mkpair (mksym 
"COMMON-LISP" "FRESH-LINE") (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mksym 
"COMMON-LISP" "FROUND") (mkpair (mksym "COMMON-LISP" "IGNORABLE") (mkpair (
mksym "COMMON-LISP" "FTRUNCATE") (mkpair (mksym "COMMON-LISP" "IGNORE") (
mkpair (mksym "COMMON-LISP" "FTYPE") (mkpair (mksym "COMMON-LISP" 
"IGNORE-ERRORS") (mkpair (mksym "COMMON-LISP" "FUNCALL") (mkpair (mksym 
"COMMON-LISP" "IMAGPART") (mkpair (mksym "COMMON-LISP" "FUNCTION") (mkpair (
mksym "COMMON-LISP" "IMPORT") (mkpair (mksym "COMMON-LISP" 
"FUNCTION-KEYWORDS") (mkpair (mksym "COMMON-LISP" "IN-PACKAGE") (mkpair (
mksym "COMMON-LISP" "FUNCTION-LAMBDA-EXPRESSION") (mkpair (mksym 
"COMMON-LISP" "INCF") (mkpair (mksym "COMMON-LISP" "FUNCTIONP") (mkpair (
mksym "COMMON-LISP" "INITIALIZE-INSTANCE") (mkpair (mksym "COMMON-LISP" "GCD") (
mkpair (mksym "COMMON-LISP" "INLINE") (mkpair (mksym "COMMON-LISP" 
"GENERIC-FUNCTION") (mkpair (mksym "COMMON-LISP" "INPUT-STREAM-P") (mkpair (
mksym "COMMON-LISP" "GENSYM") (mkpair (mksym "COMMON-LISP" "INSPECT") (mkpair (
mksym "COMMON-LISP" "GENTEMP") (mkpair (mksym "COMMON-LISP" "INTEGER") (
mkpair (mksym "COMMON-LISP" "GET") (mkpair (mksym "COMMON-LISP" 
"INTEGER-DECODE-FLOAT") (mkpair (mksym "COMMON-LISP" "GET-DECODED-TIME") (
mkpair (mksym "COMMON-LISP" "INTEGER-LENGTH") (mkpair (mksym "COMMON-LISP" 
"GET-DISPATCH-MACRO-CHARACTER") (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "COMMON-LISP" "GET-INTERNAL-REAL-TIME") (mkpair (mksym 
"COMMON-LISP" "INTERACTIVE-STREAM-P") (mkpair (mksym "COMMON-LISP" "INTERN") (
mkpair (mksym "COMMON-LISP" "LISP-IMPLEMENTATION-TYPE") (mkpair (mksym 
"COMMON-LISP" "INTERNAL-TIME-UNITS-PER-SECOND") (mkpair (mksym "COMMON-LISP" 
"LISP-IMPLEMENTATION-VERSION") (mkpair (mksym "COMMON-LISP" "INTERSECTION") (
mkpair (mksym "COMMON-LISP" "LIST") (mkpair (mksym "COMMON-LISP" 
"INVALID-METHOD-ERROR") (mkpair (mksym "COMMON-LISP" "LIST*") (mkpair (mksym 
"COMMON-LISP" "INVOKE-DEBUGGER") (mkpair (mksym "COMMON-LISP" 
"LIST-ALL-PACKAGES") (mkpair (mksym "COMMON-LISP" "INVOKE-RESTART") (mkpair (
mksym "COMMON-LISP" "LIST-LENGTH") (mkpair (mksym "COMMON-LISP" 
"INVOKE-RESTART-INTERACTIVELY") (mkpair (mksym "COMMON-LISP" "LISTEN") (
mkpair (mksym "COMMON-LISP" "ISQRT") (mkpair (mksym "COMMON-LISP" "LISTP") (
mkpair (mksym "COMMON-LISP" "KEYWORD") (mkpair (mksym "COMMON-LISP" "LOAD") (
mkpair (mksym "COMMON-LISP" "KEYWORDP") (mkpair (mksym "COMMON-LISP" 
"LOAD-LOGICAL-PATHNAME-TRANSLATIONS") (mkpair (mksym "COMMON-LISP" "LABELS") (
mkpair (mksym "COMMON-LISP" "LOAD-TIME-VALUE") (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mksym "COMMON-LISP" "LOCALLY") (mkpair (mksym 
"COMMON-LISP" "LAMBDA-LIST-KEYWORDS") (mkpair (mksym "COMMON-LISP" "LOG") (
mkpair (mksym "COMMON-LISP" "LAMBDA-PARAMETERS-LIMIT") (mkpair (mksym 
"COMMON-LISP" "LOGAND") (mkpair (mksym "COMMON-LISP" "LAST") (mkpair (mksym 
"COMMON-LISP" "LOGANDC1") (mkpair (mksym "COMMON-LISP" "LCM") (mkpair (mksym 
"COMMON-LISP" "LOGANDC2") (mkpair (mksym "COMMON-LISP" "LDB") (mkpair (mksym 
"COMMON-LISP" "LOGBITP") (mkpair (mksym "COMMON-LISP" "LDB-TEST") (mkpair (
mksym "COMMON-LISP" "LOGCOUNT") (mkpair (mksym "COMMON-LISP" "LDIFF") (mkpair (
mksym "COMMON-LISP" "LOGEQV") (mkpair (mksym "COMMON-LISP" 
"LEAST-NEGATIVE-DOUBLE-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LOGICAL-PATHNAME") (mkpair (mksym "COMMON-LISP" "LEAST-NEGATIVE-LONG-FLOAT") (
mkpair (mksym "COMMON-LISP" "LOGICAL-PATHNAME-TRANSLATIONS") (mkpair (mksym 
"COMMON-LISP" "LEAST-NEGATIVE-NORMALIZED-DOUBLE-FLOAT") (mkpair (mksym 
"COMMON-LISP" "LOGIOR") (mkpair (mksym "COMMON-LISP" 
"LEAST-NEGATIVE-NORMALIZED-LONG-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LOGNAND") (mkpair (mksym "COMMON-LISP" 
"LEAST-NEGATIVE-NORMALIZED-SHORT-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LOGNOR") (mkpair (mksym "COMMON-LISP" 
"LEAST-NEGATIVE-NORMALIZED-SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LOGNOT") (mkpair (mksym "COMMON-LISP" "LEAST-NEGATIVE-SHORT-FLOAT") (mkpair (
mksym "COMMON-LISP" "LOGORC1") (mkpair (mksym "COMMON-LISP" 
"LEAST-NEGATIVE-SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" "LOGORC2") (
mkpair (mksym "COMMON-LISP" "LEAST-POSITIVE-DOUBLE-FLOAT") (mkpair (mksym 
"COMMON-LISP" "LOGTEST") (mkpair (mksym "COMMON-LISP" 
"LEAST-POSITIVE-LONG-FLOAT") (mkpair (mksym "COMMON-LISP" "LOGXOR") (mkpair (
mksym "COMMON-LISP" "LEAST-POSITIVE-NORMALIZED-DOUBLE-FLOAT") (mkpair (mksym 
"COMMON-LISP" "LONG-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LEAST-POSITIVE-NORMALIZED-LONG-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LONG-FLOAT-EPSILON") (mkpair (mksym "COMMON-LISP" 
"LEAST-POSITIVE-NORMALIZED-SHORT-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LONG-FLOAT-NEGATIVE-EPSILON") (mkpair (mksym "COMMON-LISP" 
"LEAST-POSITIVE-NORMALIZED-SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" 
"LONG-SITE-NAME") (mkpair (mksym "COMMON-LISP" "LEAST-POSITIVE-SHORT-FLOAT") (
mkpair (mksym "COMMON-LISP" "LOOP") (mkpair (mksym "COMMON-LISP" 
"LEAST-POSITIVE-SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" "LOOP-FINISH") (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "COMMON-LISP" 
"LOWER-CASE-P") (mkpair (mksym "COMMON-LISP" "LET") (mkpair (mksym 
"COMMON-LISP" "MACHINE-INSTANCE") (mkpair (mksym "COMMON-LISP" "LET*") (
mkpair (mksym "COMMON-LISP" "MACHINE-TYPE") (mkpair (mksym "COMMON-LISP" 
"MACHINE-VERSION") (mkpair (mksym "COMMON-LISP" "MASK-FIELD") (mkpair (mksym 
"COMMON-LISP" "MACRO-FUNCTION") (mkpair (mksym "COMMON-LISP" "MAX") (mkpair (
mksym "COMMON-LISP" "MACROEXPAND") (mkpair (mksym "COMMON-LISP" "MEMBER") (
mkpair (mksym "COMMON-LISP" "MACROEXPAND-1") (mkpair (mksym "COMMON-LISP" 
"MEMBER-IF") (mkpair (mksym "COMMON-LISP" "MACROLET") (mkpair (mksym 
"COMMON-LISP" "MEMBER-IF-NOT") (mkpair (mksym "COMMON-LISP" "MAKE-ARRAY") (
mkpair (mksym "COMMON-LISP" "MERGE") (mkpair (mksym "COMMON-LISP" 
"MAKE-BROADCAST-STREAM") (mkpair (mksym "COMMON-LISP" "MERGE-PATHNAMES") (
mkpair (mksym "COMMON-LISP" "MAKE-CONCATENATED-STREAM") (mkpair (mksym 
"COMMON-LISP" "METHOD") (mkpair (mksym "COMMON-LISP" "MAKE-CONDITION") (
mkpair (mksym "COMMON-LISP" "METHOD-COMBINATION") (mkpair (mksym 
"COMMON-LISP" "MAKE-DISPATCH-MACRO-CHARACTER") (mkpair (mksym "COMMON-LISP" 
"METHOD-COMBINATION-ERROR") (mkpair (mksym "COMMON-LISP" "MAKE-ECHO-STREAM") (
mkpair (mksym "COMMON-LISP" "METHOD-QUALIFIERS") (mkpair (mksym "COMMON-LISP" 
"MAKE-HASH-TABLE") (mkpair (mksym "COMMON-LISP" "MIN") (mkpair (mksym 
"COMMON-LISP" "MAKE-INSTANCE") (mkpair (mksym "COMMON-LISP" "MINUSP") (mkpair (
mksym "COMMON-LISP" "MAKE-INSTANCES-OBSOLETE") (mkpair (mksym "COMMON-LISP" 
"MISMATCH") (mkpair (mksym "COMMON-LISP" "MAKE-LIST") (mkpair (mksym 
"COMMON-LISP" "MOD") (mkpair (mksym "COMMON-LISP" "MAKE-LOAD-FORM") (mkpair (
mksym "COMMON-LISP" "MOST-NEGATIVE-DOUBLE-FLOAT") (mkpair (mksym 
"COMMON-LISP" "MAKE-LOAD-FORM-SAVING-SLOTS") (mkpair (mksym "COMMON-LISP" 
"MOST-NEGATIVE-FIXNUM") (mkpair (mksym "COMMON-LISP" "MAKE-METHOD") (mkpair (
mksym "COMMON-LISP" "MOST-NEGATIVE-LONG-FLOAT") (mkpair (mksym "COMMON-LISP" 
"MAKE-PACKAGE") (mkpair (mksym "COMMON-LISP" "MOST-NEGATIVE-SHORT-FLOAT") (
mkpair (mksym "COMMON-LISP" "MAKE-PATHNAME") (mkpair (mksym "COMMON-LISP" 
"MOST-NEGATIVE-SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" 
"MAKE-RANDOM-STATE") (mkpair (mksym "COMMON-LISP" 
"MOST-POSITIVE-DOUBLE-FLOAT") (mkpair (mksym "COMMON-LISP" "MAKE-SEQUENCE") (
mkpair (mksym "COMMON-LISP" "MOST-POSITIVE-FIXNUM") (mkpair (mksym 
"COMMON-LISP" "MAKE-STRING") (mkpair (mksym "COMMON-LISP" 
"MOST-POSITIVE-LONG-FLOAT") (mkpair (mksym "COMMON-LISP" 
"MAKE-STRING-INPUT-STREAM") (mkpair (mksym "COMMON-LISP" 
"MOST-POSITIVE-SHORT-FLOAT") (mkpair (mksym "COMMON-LISP" 
"MAKE-STRING-OUTPUT-STREAM") (mkpair (mksym "COMMON-LISP" 
"MOST-POSITIVE-SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" "MAKE-SYMBOL") (
mkpair (mksym "COMMON-LISP" "MUFFLE-WARNING") (mkpair (mksym "COMMON-LISP" 
"MAKE-SYNONYM-STREAM") (mkpair (mksym "COMMON-LISP" "MULTIPLE-VALUE-BIND") (
mkpair (mksym "COMMON-LISP" "MAKE-TWO-WAY-STREAM") (mkpair (mksym 
"COMMON-LISP" "MULTIPLE-VALUE-CALL") (mkpair (mksym "COMMON-LISP" 
"MAKUNBOUND") (mkpair (mksym "COMMON-LISP" "MULTIPLE-VALUE-LIST") (mkpair (
mksym "COMMON-LISP" "MAP") (mkpair (mksym "COMMON-LISP" 
"MULTIPLE-VALUE-PROG1") (mkpair (mksym "COMMON-LISP" "MAP-INTO") (mkpair (
mksym "COMMON-LISP" "MULTIPLE-VALUE-SETQ") (mkpair (mksym "COMMON-LISP" 
"MAPC") (mkpair (mksym "COMMON-LISP" "MULTIPLE-VALUES-LIMIT") (mkpair (mksym 
"COMMON-LISP" "MAPCAN") (mkpair (mksym "COMMON-LISP" "NAME-CHAR") (mkpair (
mksym "COMMON-LISP" "MAPCAR") (mkpair (mksym "COMMON-LISP" "NAMESTRING") (
mkpair (mksym "COMMON-LISP" "MAPCON") (mkpair (mksym "COMMON-LISP" "NBUTLAST") (
mkpair (mksym "COMMON-LISP" "MAPHASH") (mkpair (mksym "COMMON-LISP" "NCONC") (
mkpair (mksym "COMMON-LISP" "MAPL") (mkpair (mksym "COMMON-LISP" 
"NEXT-METHOD-P") (mkpair (mksym "COMMON-LISP" "MAPLIST") (mkpair (mksym 
"COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NINTERSECTION") (mkpair (
mksym "COMMON-LISP" "PACKAGE-ERROR") (mkpair (mksym "COMMON-LISP" "NINTH") (
mkpair (mksym "COMMON-LISP" "PACKAGE-ERROR-PACKAGE") (mkpair (mksym 
"COMMON-LISP" "NO-APPLICABLE-METHOD") (mkpair (mksym "COMMON-LISP" 
"PACKAGE-NAME") (mkpair (mksym "COMMON-LISP" "NO-NEXT-METHOD") (mkpair (mksym 
"COMMON-LISP" "PACKAGE-NICKNAMES") (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mksym "COMMON-LISP" "PACKAGE-SHADOWING-SYMBOLS") (mkpair (mksym 
"COMMON-LISP" "NOTANY") (mkpair (mksym "COMMON-LISP" "PACKAGE-USE-LIST") (
mkpair (mksym "COMMON-LISP" "NOTEVERY") (mkpair (mksym "COMMON-LISP" 
"PACKAGE-USED-BY-LIST") (mkpair (mksym "COMMON-LISP" "NOTINLINE") (mkpair (
mksym "COMMON-LISP" "PACKAGEP") (mkpair (mksym "COMMON-LISP" "NRECONC") (
mkpair (mksym "COMMON-LISP" "PAIRLIS") (mkpair (mksym "COMMON-LISP" 
"NREVERSE") (mkpair (mksym "COMMON-LISP" "PARSE-ERROR") (mkpair (mksym 
"COMMON-LISP" "NSET-DIFFERENCE") (mkpair (mksym "COMMON-LISP" "PARSE-INTEGER") (
mkpair (mksym "COMMON-LISP" "NSET-EXCLUSIVE-OR") (mkpair (mksym "COMMON-LISP" 
"PARSE-NAMESTRING") (mkpair (mksym "COMMON-LISP" "NSTRING-CAPITALIZE") (
mkpair (mksym "COMMON-LISP" "PATHNAME") (mkpair (mksym "COMMON-LISP" 
"NSTRING-DOWNCASE") (mkpair (mksym "COMMON-LISP" "PATHNAME-DEVICE") (mkpair (
mksym "COMMON-LISP" "NSTRING-UPCASE") (mkpair (mksym "COMMON-LISP" 
"PATHNAME-DIRECTORY") (mkpair (mksym "COMMON-LISP" "NSUBLIS") (mkpair (mksym 
"COMMON-LISP" "PATHNAME-HOST") (mkpair (mksym "COMMON-LISP" "NSUBST") (mkpair (
mksym "COMMON-LISP" "PATHNAME-MATCH-P") (mkpair (mksym "COMMON-LISP" 
"NSUBST-IF") (mkpair (mksym "COMMON-LISP" "PATHNAME-NAME") (mkpair (mksym 
"COMMON-LISP" "NSUBST-IF-NOT") (mkpair (mksym "COMMON-LISP" "PATHNAME-TYPE") (
mkpair (mksym "COMMON-LISP" "NSUBSTITUTE") (mkpair (mksym "COMMON-LISP" 
"PATHNAME-VERSION") (mkpair (mksym "COMMON-LISP" "NSUBSTITUTE-IF") (mkpair (
mksym "COMMON-LISP" "PATHNAMEP") (mkpair (mksym "COMMON-LISP" 
"NSUBSTITUTE-IF-NOT") (mkpair (mksym "COMMON-LISP" "PEEK-CHAR") (mkpair (
mksym "COMMON-LISP" "NTH") (mkpair (mksym "COMMON-LISP" "PHASE") (mkpair (
mksym "COMMON-LISP" "NTH-VALUE") (mkpair (mksym "COMMON-LISP" "PI") (mkpair (
mksym "COMMON-LISP" "NTHCDR") (mkpair (mksym "COMMON-LISP" "PLUSP") (mkpair (
mksym "COMMON-LISP" "NULL") (mkpair (mksym "COMMON-LISP" "POP") (mkpair (
mksym "COMMON-LISP" "NUMBER") (mkpair (mksym "COMMON-LISP" "POSITION") (
mkpair (mksym "COMMON-LISP" "NUMBERP") (mkpair (mksym "COMMON-LISP" 
"POSITION-IF") (mkpair (mksym "COMMON-LISP" "NUMERATOR") (mkpair (mksym 
"COMMON-LISP" "POSITION-IF-NOT") (mkpair (mksym "COMMON-LISP" "NUNION") (
mkpair (mksym "COMMON-LISP" "PPRINT") (mkpair (mksym "COMMON-LISP" "ODDP") (
mkpair (mksym "COMMON-LISP" "PPRINT-DISPATCH") (mkpair (mksym "COMMON-LISP" 
"OPEN") (mkpair (mksym "COMMON-LISP" "PPRINT-EXIT-IF-LIST-EXHAUSTED") (mkpair (
mksym "COMMON-LISP" "OPEN-STREAM-P") (mkpair (mksym "COMMON-LISP" 
"PPRINT-FILL") (mkpair (mksym "COMMON-LISP" "OPTIMIZE") (mkpair (mksym 
"COMMON-LISP" "PPRINT-INDENT") (mkpair (mksym "COMMON-LISP" "OR") (mkpair (
mksym "COMMON-LISP" "PPRINT-LINEAR") (mkpair (mksym "COMMON-LISP" "OTHERWISE") (
mkpair (mksym "COMMON-LISP" "PPRINT-LOGICAL-BLOCK") (mkpair (mksym 
"COMMON-LISP" "OUTPUT-STREAM-P") (mkpair (mksym "COMMON-LISP" 
"PPRINT-NEWLINE") (mkpair (mksym "COMMON-LISP" "PACKAGE") (mkpair (mksym 
"COMMON-LISP" "PPRINT-POP") (mkpair (mksym "COMMON-LISP" "PPRINT-TAB") (
mkpair (mksym "COMMON-LISP" "READ-CHAR") (mkpair (mksym "COMMON-LISP" 
"PPRINT-TABULAR") (mkpair (mksym "COMMON-LISP" "READ-CHAR-NO-HANG") (mkpair (
mksym "COMMON-LISP" "PRIN1") (mkpair (mksym "COMMON-LISP" 
"READ-DELIMITED-LIST") (mkpair (mksym "COMMON-LISP" "PRIN1-TO-STRING") (
mkpair (mksym "COMMON-LISP" "READ-FROM-STRING") (mkpair (mksym "COMMON-LISP" 
"PRINC") (mkpair (mksym "COMMON-LISP" "READ-LINE") (mkpair (mksym 
"COMMON-LISP" "PRINC-TO-STRING") (mkpair (mksym "COMMON-LISP" 
"READ-PRESERVING-WHITESPACE") (mkpair (mksym "COMMON-LISP" "PRINT") (mkpair (
mksym "COMMON-LISP" "READ-SEQUENCE") (mkpair (mksym "COMMON-LISP" 
"PRINT-NOT-READABLE") (mkpair (mksym "COMMON-LISP" "READER-ERROR") (mkpair (
mksym "COMMON-LISP" "PRINT-NOT-READABLE-OBJECT") (mkpair (mksym "COMMON-LISP" 
"READTABLE") (mkpair (mksym "COMMON-LISP" "PRINT-OBJECT") (mkpair (mksym 
"COMMON-LISP" "READTABLE-CASE") (mkpair (mksym "COMMON-LISP" 
"PRINT-UNREADABLE-OBJECT") (mkpair (mksym "COMMON-LISP" "READTABLEP") (mkpair (
mksym "COMMON-LISP" "PROBE-FILE") (mkpair (mksym "COMMON-LISP" "REAL") (
mkpair (mksym "COMMON-LISP" "PROCLAIM") (mkpair (mksym "COMMON-LISP" "REALP") (
mkpair (mksym "COMMON-LISP" "PROG") (mkpair (mksym "COMMON-LISP" "REALPART") (
mkpair (mksym "COMMON-LISP" "PROG*") (mkpair (mksym "COMMON-LISP" "REDUCE") (
mkpair (mksym "COMMON-LISP" "PROG1") (mkpair (mksym "COMMON-LISP" 
"REINITIALIZE-INSTANCE") (mkpair (mksym "COMMON-LISP" "PROG2") (mkpair (mksym 
"COMMON-LISP" "REM") (mkpair (mksym "COMMON-LISP" "PROGN") (mkpair (mksym 
"COMMON-LISP" "REMF") (mkpair (mksym "COMMON-LISP" "PROGRAM-ERROR") (mkpair (
mksym "COMMON-LISP" "REMHASH") (mkpair (mksym "COMMON-LISP" "PROGV") (mkpair (
mksym "COMMON-LISP" "REMOVE") (mkpair (mksym "COMMON-LISP" "PROVIDE") (mkpair (
mksym "COMMON-LISP" "REMOVE-DUPLICATES") (mkpair (mksym "COMMON-LISP" "PSETF") (
mkpair (mksym "COMMON-LISP" "REMOVE-IF") (mkpair (mksym "COMMON-LISP" "PSETQ") (
mkpair (mksym "COMMON-LISP" "REMOVE-IF-NOT") (mkpair (mksym "COMMON-LISP" 
"PUSH") (mkpair (mksym "COMMON-LISP" "REMOVE-METHOD") (mkpair (mksym 
"COMMON-LISP" "PUSHNEW") (mkpair (mksym "COMMON-LISP" "REMPROP") (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "RENAME-FILE") (
mkpair (mksym "COMMON-LISP" "RANDOM") (mkpair (mksym "COMMON-LISP" 
"RENAME-PACKAGE") (mkpair (mksym "COMMON-LISP" "RANDOM-STATE") (mkpair (mksym 
"COMMON-LISP" "REPLACE") (mkpair (mksym "COMMON-LISP" "RANDOM-STATE-P") (
mkpair (mksym "COMMON-LISP" "REQUIRE") (mkpair (mksym "COMMON-LISP" "RASSOC") (
mkpair (mksym "COMMON-LISP" "REST") (mkpair (mksym "COMMON-LISP" "RASSOC-IF") (
mkpair (mksym "COMMON-LISP" "RESTART") (mkpair (mksym "COMMON-LISP" 
"RASSOC-IF-NOT") (mkpair (mksym "COMMON-LISP" "RESTART-BIND") (mkpair (mksym 
"COMMON-LISP" "RATIO") (mkpair (mksym "COMMON-LISP" "RESTART-CASE") (mkpair (
mksym "COMMON-LISP" "RATIONAL") (mkpair (mksym "COMMON-LISP" "RESTART-NAME") (
mkpair (mksym "COMMON-LISP" "RATIONALIZE") (mkpair (mksym "COMMON-LISP" 
"RETURN") (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym 
"COMMON-LISP" "RETURN-FROM") (mkpair (mksym "COMMON-LISP" "READ") (mkpair (
mksym "COMMON-LISP" "REVAPPEND") (mkpair (mksym "COMMON-LISP" "READ-BYTE") (
mkpair (mksym "COMMON-LISP" "REVERSE") (mkpair (mksym "COMMON-LISP" "ROOM") (
mkpair (mksym "COMMON-LISP" "SIMPLE-BIT-VECTOR") (mkpair (mksym "COMMON-LISP" 
"ROTATEF") (mkpair (mksym "COMMON-LISP" "SIMPLE-BIT-VECTOR-P") (mkpair (mksym 
"COMMON-LISP" "ROUND") (mkpair (mksym "COMMON-LISP" "SIMPLE-CONDITION") (
mkpair (mksym "COMMON-LISP" "ROW-MAJOR-AREF") (mkpair (mksym "COMMON-LISP" 
"SIMPLE-CONDITION-FORMAT-ARGUMENTS") (mkpair (mksym "COMMON-LISP" "RPLACA") (
mkpair (mksym "COMMON-LISP" "SIMPLE-CONDITION-FORMAT-CONTROL") (mkpair (mksym 
"COMMON-LISP" "RPLACD") (mkpair (mksym "COMMON-LISP" "SIMPLE-ERROR") (mkpair (
mksym "COMMON-LISP" "SAFETY") (mkpair (mksym "COMMON-LISP" "SIMPLE-STRING") (
mkpair (mksym "COMMON-LISP" "SATISFIES") (mkpair (mksym "COMMON-LISP" 
"SIMPLE-STRING-P") (mkpair (mksym "COMMON-LISP" "SBIT") (mkpair (mksym 
"COMMON-LISP" "SIMPLE-TYPE-ERROR") (mkpair (mksym "COMMON-LISP" "SCALE-FLOAT") (
mkpair (mksym "COMMON-LISP" "SIMPLE-VECTOR") (mkpair (mksym "COMMON-LISP" 
"SCHAR") (mkpair (mksym "COMMON-LISP" "SIMPLE-VECTOR-P") (mkpair (mksym 
"COMMON-LISP" "SEARCH") (mkpair (mksym "COMMON-LISP" "SIMPLE-WARNING") (
mkpair (mksym "COMMON-LISP" "SECOND") (mkpair (mksym "COMMON-LISP" "SIN") (
mkpair (mksym "COMMON-LISP" "SEQUENCE") (mkpair (mksym "COMMON-LISP" 
"SINGLE-FLOAT") (mkpair (mksym "COMMON-LISP" "SERIOUS-CONDITION") (mkpair (
mksym "COMMON-LISP" "SINGLE-FLOAT-EPSILON") (mkpair (mksym "COMMON-LISP" 
"SET") (mkpair (mksym "COMMON-LISP" "SINGLE-FLOAT-NEGATIVE-EPSILON") (mkpair (
mksym "COMMON-LISP" "SET-DIFFERENCE") (mkpair (mksym "COMMON-LISP" "SINH") (
mkpair (mksym "COMMON-LISP" "SET-DISPATCH-MACRO-CHARACTER") (mkpair (mksym 
"COMMON-LISP" "SIXTH") (mkpair (mksym "COMMON-LISP" "SET-EXCLUSIVE-OR") (
mkpair (mksym "COMMON-LISP" "SLEEP") (mkpair (mksym "COMMON-LISP" 
"SET-MACRO-CHARACTER") (mkpair (mksym "COMMON-LISP" "SLOT-BOUNDP") (mkpair (
mksym "COMMON-LISP" "SET-PPRINT-DISPATCH") (mkpair (mksym "COMMON-LISP" 
"SLOT-EXISTS-P") (mkpair (mksym "COMMON-LISP" "SET-SYNTAX-FROM-CHAR") (mkpair (
mksym "COMMON-LISP" "SLOT-MAKUNBOUND") (mkpair (mksym "COMMON-LISP" "SETF") (
mkpair (mksym "COMMON-LISP" "SLOT-MISSING") (mkpair (mksym "COMMON-LISP" 
"SETQ") (mkpair (mksym "COMMON-LISP" "SLOT-UNBOUND") (mkpair (mksym 
"COMMON-LISP" "SEVENTH") (mkpair (mksym "COMMON-LISP" "SLOT-VALUE") (mkpair (
mksym "COMMON-LISP" "SHADOW") (mkpair (mksym "COMMON-LISP" "SOFTWARE-TYPE") (
mkpair (mksym "COMMON-LISP" "SHADOWING-IMPORT") (mkpair (mksym "COMMON-LISP" 
"SOFTWARE-VERSION") (mkpair (mksym "COMMON-LISP" "SHARED-INITIALIZE") (mkpair (
mksym "COMMON-LISP" "SOME") (mkpair (mksym "COMMON-LISP" "SHIFTF") (mkpair (
mksym "COMMON-LISP" "SORT") (mkpair (mksym "COMMON-LISP" "SHORT-FLOAT") (
mkpair (mksym "COMMON-LISP" "SPACE") (mkpair (mksym "COMMON-LISP" 
"SHORT-FLOAT-EPSILON") (mkpair (mksym "COMMON-LISP" "SPECIAL") (mkpair (mksym 
"COMMON-LISP" "SHORT-FLOAT-NEGATIVE-EPSILON") (mkpair (mksym "COMMON-LISP" 
"SPECIAL-OPERATOR-P") (mkpair (mksym "COMMON-LISP" "SHORT-SITE-NAME") (mkpair (
mksym "COMMON-LISP" "SPEED") (mkpair (mksym "COMMON-LISP" "SIGNAL") (mkpair (
mksym "COMMON-LISP" "SQRT") (mkpair (mksym "COMMON-LISP" "SIGNED-BYTE") (
mkpair (mksym "COMMON-LISP" "STABLE-SORT") (mkpair (mksym "COMMON-LISP" 
"SIGNUM") (mkpair (mksym "COMMON-LISP" "STANDARD") (mkpair (mksym 
"COMMON-LISP" "SIMPLE-ARRAY") (mkpair (mksym "COMMON-LISP" "STANDARD-CHAR") (
mkpair (mksym "COMMON-LISP" "SIMPLE-BASE-STRING") (mkpair (mksym 
"COMMON-LISP" "STANDARD-CHAR-P") (mkpair (mksym "COMMON-LISP" 
"STANDARD-CLASS") (mkpair (mksym "COMMON-LISP" "SUBLIS") (mkpair (mksym 
"COMMON-LISP" "STANDARD-GENERIC-FUNCTION") (mkpair (mksym "COMMON-LISP" 
"SUBSEQ") (mkpair (mksym "COMMON-LISP" "STANDARD-METHOD") (mkpair (mksym 
"COMMON-LISP" "SUBSETP") (mkpair (mksym "COMMON-LISP" "STANDARD-OBJECT") (
mkpair (mksym "COMMON-LISP" "SUBST") (mkpair (mksym "COMMON-LISP" "STEP") (
mkpair (mksym "COMMON-LISP" "SUBST-IF") (mkpair (mksym "COMMON-LISP" 
"STORAGE-CONDITION") (mkpair (mksym "COMMON-LISP" "SUBST-IF-NOT") (mkpair (
mksym "COMMON-LISP" "STORE-VALUE") (mkpair (mksym "COMMON-LISP" "SUBSTITUTE") (
mkpair (mksym "COMMON-LISP" "STREAM") (mkpair (mksym "COMMON-LISP" 
"SUBSTITUTE-IF") (mkpair (mksym "COMMON-LISP" "STREAM-ELEMENT-TYPE") (mkpair (
mksym "COMMON-LISP" "SUBSTITUTE-IF-NOT") (mkpair (mksym "COMMON-LISP" 
"STREAM-ERROR") (mkpair (mksym "COMMON-LISP" "SUBTYPEP") (mkpair (mksym 
"COMMON-LISP" "STREAM-ERROR-STREAM") (mkpair (mksym "COMMON-LISP" "SVREF") (
mkpair (mksym "COMMON-LISP" "STREAM-EXTERNAL-FORMAT") (mkpair (mksym 
"COMMON-LISP" "SXHASH") (mkpair (mksym "COMMON-LISP" "STREAMP") (mkpair (
mksym "COMMON-LISP" "SYMBOL") (mkpair (mksym "COMMON-LISP" "STRING") (mkpair (
mksym "COMMON-LISP" "SYMBOL-FUNCTION") (mkpair (mksym "COMMON-LISP" 
"STRING-CAPITALIZE") (mkpair (mksym "COMMON-LISP" "SYMBOL-MACROLET") (mkpair (
mksym "COMMON-LISP" "STRING-DOWNCASE") (mkpair (mksym "COMMON-LISP" 
"SYMBOL-NAME") (mkpair (mksym "COMMON-LISP" "STRING-EQUAL") (mkpair (mksym 
"COMMON-LISP" "SYMBOL-PACKAGE") (mkpair (mksym "COMMON-LISP" 
"STRING-GREATERP") (mkpair (mksym "COMMON-LISP" "SYMBOL-PLIST") (mkpair (
mksym "COMMON-LISP" "STRING-LEFT-TRIM") (mkpair (mksym "COMMON-LISP" 
"SYMBOL-VALUE") (mkpair (mksym "COMMON-LISP" "STRING-LESSP") (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "COMMON-LISP" "STRING-NOT-EQUAL") (
mkpair (mksym "COMMON-LISP" "SYNONYM-STREAM") (mkpair (mksym "COMMON-LISP" 
"STRING-NOT-GREATERP") (mkpair (mksym "COMMON-LISP" "SYNONYM-STREAM-SYMBOL") (
mkpair (mksym "COMMON-LISP" "STRING-NOT-LESSP") (mkpair (mksym "COMMON-LISP" 
"T") (mkpair (mksym "COMMON-LISP" "STRING-RIGHT-TRIM") (mkpair (mksym 
"COMMON-LISP" "TAGBODY") (mkpair (mksym "COMMON-LISP" "STRING-STREAM") (
mkpair (mksym "COMMON-LISP" "TAILP") (mkpair (mksym "COMMON-LISP" 
"STRING-TRIM") (mkpair (mksym "COMMON-LISP" "TAN") (mkpair (mksym 
"COMMON-LISP" "STRING-UPCASE") (mkpair (mksym "COMMON-LISP" "TANH") (mkpair (
mksym "COMMON-LISP" "STRING/=") (mkpair (mksym "COMMON-LISP" "TENTH") (mkpair (
mksym "COMMON-LISP" "STRING<") (mkpair (mksym "COMMON-LISP" "TERPRI") (mkpair (
mksym "COMMON-LISP" "STRING<=") (mkpair (mksym "COMMON-LISP" "THE") (mkpair (
mksym "COMMON-LISP" "STRING=") (mkpair (mksym "COMMON-LISP" "THIRD") (mkpair (
mksym "COMMON-LISP" "STRING>") (mkpair (mksym "COMMON-LISP" "THROW") (mkpair (
mksym "COMMON-LISP" "STRING>=") (mkpair (mksym "COMMON-LISP" "TIME") (mkpair (
mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "COMMON-LISP" "TRACE") (mkpair (
mksym "COMMON-LISP" "STRUCTURE") (mkpair (mksym "COMMON-LISP" 
"TRANSLATE-LOGICAL-PATHNAME") (mkpair (mksym "COMMON-LISP" "STRUCTURE-CLASS") (
mkpair (mksym "COMMON-LISP" "TRANSLATE-PATHNAME") (mkpair (mksym 
"COMMON-LISP" "STRUCTURE-OBJECT") (mkpair (mksym "COMMON-LISP" "TREE-EQUAL") (
mkpair (mksym "COMMON-LISP" "STYLE-WARNING") (mkpair (mksym "COMMON-LISP" 
"TRUENAME") (mkpair (mksym "COMMON-LISP" "TRUNCATE") (mkpair (mksym 
"COMMON-LISP" "VALUES-LIST") (mkpair (mksym "COMMON-LISP" "TWO-WAY-STREAM") (
mkpair (mksym "COMMON-LISP" "VARIABLE") (mkpair (mksym "COMMON-LISP" 
"TWO-WAY-STREAM-INPUT-STREAM") (mkpair (mksym "COMMON-LISP" "VECTOR") (mkpair (
mksym "COMMON-LISP" "TWO-WAY-STREAM-OUTPUT-STREAM") (mkpair (mksym 
"COMMON-LISP" "VECTOR-POP") (mkpair (mksym "COMMON-LISP" "TYPE") (mkpair (
mksym "COMMON-LISP" "VECTOR-PUSH") (mkpair (mksym "COMMON-LISP" "TYPE-ERROR") (
mkpair (mksym "COMMON-LISP" "VECTOR-PUSH-EXTEND") (mkpair (mksym 
"COMMON-LISP" "TYPE-ERROR-DATUM") (mkpair (mksym "COMMON-LISP" "VECTORP") (
mkpair (mksym "COMMON-LISP" "TYPE-ERROR-EXPECTED-TYPE") (mkpair (mksym 
"COMMON-LISP" "WARN") (mkpair (mksym "COMMON-LISP" "TYPE-OF") (mkpair (mksym 
"COMMON-LISP" "WARNING") (mkpair (mksym "COMMON-LISP" "TYPECASE") (mkpair (
mksym "COMMON-LISP" "WHEN") (mkpair (mksym "COMMON-LISP" "TYPEP") (mkpair (
mksym "COMMON-LISP" "WILD-PATHNAME-P") (mkpair (mksym "COMMON-LISP" 
"UNBOUND-SLOT") (mkpair (mksym "COMMON-LISP" "WITH-ACCESSORS") (mkpair (mksym 
"COMMON-LISP" "UNBOUND-SLOT-INSTANCE") (mkpair (mksym "COMMON-LISP" 
"WITH-COMPILATION-UNIT") (mkpair (mksym "COMMON-LISP" "UNBOUND-VARIABLE") (
mkpair (mksym "COMMON-LISP" "WITH-CONDITION-RESTARTS") (mkpair (mksym 
"COMMON-LISP" "UNDEFINED-FUNCTION") (mkpair (mksym "COMMON-LISP" 
"WITH-HASH-TABLE-ITERATOR") (mkpair (mksym "COMMON-LISP" "UNEXPORT") (mkpair (
mksym "COMMON-LISP" "WITH-INPUT-FROM-STRING") (mkpair (mksym "COMMON-LISP" 
"UNINTERN") (mkpair (mksym "COMMON-LISP" "WITH-OPEN-FILE") (mkpair (mksym 
"COMMON-LISP" "UNION") (mkpair (mksym "COMMON-LISP" "WITH-OPEN-STREAM") (
mkpair (mksym "COMMON-LISP" "UNLESS") (mkpair (mksym "COMMON-LISP" 
"WITH-OUTPUT-TO-STRING") (mkpair (mksym "COMMON-LISP" "UNREAD-CHAR") (mkpair (
mksym "COMMON-LISP" "WITH-PACKAGE-ITERATOR") (mkpair (mksym "COMMON-LISP" 
"UNSIGNED-BYTE") (mkpair (mksym "COMMON-LISP" "WITH-SIMPLE-RESTART") (mkpair (
mksym "COMMON-LISP" "UNTRACE") (mkpair (mksym "COMMON-LISP" "WITH-SLOTS") (
mkpair (mksym "COMMON-LISP" "UNUSE-PACKAGE") (mkpair (mksym "COMMON-LISP" 
"WITH-STANDARD-IO-SYNTAX") (mkpair (mksym "COMMON-LISP" "UNWIND-PROTECT") (
mkpair (mksym "COMMON-LISP" "WRITE") (mkpair (mksym "COMMON-LISP" 
"UPDATE-INSTANCE-FOR-DIFFERENT-CLASS") (mkpair (mksym "COMMON-LISP" 
"WRITE-BYTE") (mkpair (mksym "COMMON-LISP" 
"UPDATE-INSTANCE-FOR-REDEFINED-CLASS") (mkpair (mksym "COMMON-LISP" 
"WRITE-CHAR") (mkpair (mksym "COMMON-LISP" "UPGRADED-ARRAY-ELEMENT-TYPE") (
mkpair (mksym "COMMON-LISP" "WRITE-LINE") (mkpair (mksym "COMMON-LISP" 
"UPGRADED-COMPLEX-PART-TYPE") (mkpair (mksym "COMMON-LISP" "WRITE-SEQUENCE") (
mkpair (mksym "COMMON-LISP" "UPPER-CASE-P") (mkpair (mksym "COMMON-LISP" 
"WRITE-STRING") (mkpair (mksym "COMMON-LISP" "USE-PACKAGE") (mkpair (mksym 
"COMMON-LISP" "WRITE-TO-STRING") (mkpair (mksym "COMMON-LISP" "USE-VALUE") (
mkpair (mksym "COMMON-LISP" "Y-OR-N-P") (mkpair (mksym "COMMON-LISP" 
"USER-HOMEDIR-PATHNAME") (mkpair (mksym "COMMON-LISP" "YES-OR-NO-P") (mkpair (
mksym "COMMON-LISP" "VALUES") (mkpair (mksym "COMMON-LISP" "ZEROP") (mksym 
"COMMON-LISP" "NIL"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mk_chars_str (chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil)))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (
mkpair (mkpair (mksym "ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mk_chars_str (chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil)))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "KEYWORD-PACKAGE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mk_chars_str (chars_to_string (cons 75 (cons 69 (cons 89 (cons 87 (
cons 79 (cons 82 (cons 68 nil))))))))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-PACKAGE-NAME") (mkpair (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string (cons 75 (cons 69 (cons 89 (cons 87 (cons 79 (cons 82 (cons 
68 nil))))))))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"STRING-IS-NOT-CIRCULAR") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"STRING") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 83) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 84) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 82) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 73) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 78) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 71) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 83) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 84) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 82) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 73) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 78) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 71) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "NIL-IS-NOT-CIRCULAR") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 78) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 73) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkchr 76) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"STANDARD-CHAR-LISTP-APPEND") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "ACL2" "STANDARD-CHAR-LISTP") (mkpair (mkpair (mksym "ACL2" 
"BINARY-APPEND") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "STANDARD-CHAR-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "STANDARD-CHAR-LISTP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-APPEND") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (mkpair (mksym "ACL2" 
"BINARY-APPEND") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"CHARACTER-LISTP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-REMOVE-DUPLICATES-EQL") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"CHARACTER-LISTP") (mkpair (mkpair (mksym "ACL2" "REMOVE-DUPLICATES-EQL") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"CHARACTER-LISTP-REVAPPEND") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" 
"REVAPPEND") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"CHARACTER-LISTP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"PSEUDO-TERM-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "PSEUDO-TERM-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STANDARD-CHAR-P-NTH") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "STANDARD-CHAR-LISTP") (mkpair (mksym 
"ACL2" "CHARS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (
mkpair (mkpair (mksym "ACL2" "LEN") (mkpair (mksym "ACL2" "CHARS") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "STANDARD-CHAR-P") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (
mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" "CHARS") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"EXPT-TYPE-PRESCRIPTION-NON-ZERO-BASE") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "R") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "R") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "EXPT") (mkpair (mksym "ACL2" "R") (
mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"RATIONALP-EXPT-TYPE-PRESCRIPTION") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "R") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mkpair (mksym "COMMON-LISP" "EXPT") (mkpair (mksym "ACL2" "R") (
mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CHAR-CODE-LINEAR") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHAR-CODE") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "256" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "CODE-CHAR-TYPE") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CODE-CHAR") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"CODE-CHAR-CHAR-CODE-IS-IDENTITY") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "FORCE") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHARACTERP") (mkpair (mksym "ACL2" "C") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mkpair (mksym "COMMON-LISP" 
"CHAR-CODE") (mkpair (mksym "ACL2" "C") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "C") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"CHAR-CODE-CODE-CHAR-IS-IDENTITY") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"FORCE") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym 
"ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"FORCE") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "FORCE") (mkpair (mkpair (
mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "256" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (
mkpair (mkpair (mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mksym "ACL2" "N") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STRING<-L-IRREFLEXIVE") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" 
"STRING<-L") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STRING<-IRREFLEXIVE") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "STRING<") (mkpair (mksym "ACL2" "S") (mkpair (mksym "ACL2" "S") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WORLDP-FORWARD-TO-ASSOC-EQ-EQUAL-ALISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "WORLDP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ-EQUAL-ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP-FORWARD-TO-SYMBOL-ALISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "ORDERED-SYMBOL-ALISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "SYMBOL-ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TRUE-LIST-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "EQUAL-CHAR-CODE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"BOUNDED-INTEGER-ALISTP-FORWARD-TO-EQLABLE-ALISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "BOUNDED-INTEGER-ALISTP") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "EQLABLE-ALISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"KEYWORD-VALUE-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "KEYWORD-VALUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"KEYWORD-VALUE-LISTP-ASSOC-KEYWORD") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "KEYWORD-VALUE-LISTP") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"KEYWORD-VALUE-LISTP") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "CONSP-ASSOC-EQ") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"ALISTP") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" 
"NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-EQ") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ARRAY1P-FORWARD") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"ARRAY1P") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "NAME") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "KEYWORD-VALUE-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2147483647" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"BOUNDED-INTEGER-ALISTP") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ARRAY1P-LINEAR") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"ARRAY1P") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "2147483647" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "MAXIMUM-LENGTH") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ARRAY2P-FORWARD") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"ARRAY2P") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "NAME") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "KEYWORD-VALUE-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2147483647" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"ACL2" "BOUNDED-INTEGER-ALISTP2") (mkpair (mksym "ACL2" "L") (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ARRAY2P-LINEAR") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"ARRAY2P") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "DIMENSIONS") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym 
"ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "KEYWORD" "MAXIMUM-LENGTH") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" 
"HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "2147483647" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "ASSOC-KEYWORD") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "MAXIMUM-LENGTH") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "KEYWORD" "HEADER") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "CONSP-ASSOC") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "ALISTP") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (
mkpair (mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym 
"COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" 
"L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"ASSOC") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ARRAY1P-CONS") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" 
"ASSOC-KEYWORD") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"KEYWORD" "DIMENSIONS") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "KEYWORD" "HEADER") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "ARRAY1P") (mkpair (mksym "ACL2" "NAME") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "ARRAY1P") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mksym "ACL2" "N") (mkpair (mksym "ACL2" "VAL") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ARRAY2P-CONS") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "J") (mkpair (
mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (mkpair (mksym "ACL2" "NAME") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "J") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mkpair (mksym "ACL2" "DIMENSIONS") (mkpair (
mksym "ACL2" "NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "I") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "ARRAY2P") (mkpair (mksym "ACL2" 
"NAME") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "ARRAY2P") (mkpair (mksym "ACL2" "NAME") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "I") (mkpair (mksym 
"ACL2" "J") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "VAL") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"32-BIT-INTEGERP-FORWARD-TO-INTEGERP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "32-BIT-INTEGERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"RATIONAL-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "RATIONAL-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"INTEGER-LISTP-FORWARD-TO-RATIONAL-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "INTEGER-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"RATIONAL-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"32-BIT-INTEGER-LISTP-FORWARD-TO-INTEGER-LISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "32-BIT-INTEGER-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "INTEGER-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALISTP-FORWARD-TO-TRUE-LIST-LISTP-AND-ALISTP") (mkpair (mkpair (
mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "KNOWN-PACKAGE-ALISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TIMER-ALISTP-FORWARD-TO-TRUE-LIST-LISTP-AND-SYMBOL-ALISTP") (mkpair (mkpair (
mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "TIMER-ALISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TYPED-IO-LISTP-FORWARD-TO-TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "TYPED-IO-LISTP") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "TYP") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"OPEN-CHANNEL1-FORWARD-TO-TRUE-LISTP-AND-CONSP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "OPEN-CHANNEL1") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"OPEN-CHANNELS-P-FORWARD") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"FILE-CLOCK-P-FORWARD-TO-INTEGERP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "FILE-CLOCK-P") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "NATP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READABLE-FILE-FORWARD-TO-TRUE-LISTP-AND-CONSP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "READABLE-FILE") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READABLE-FILES-LISTP-FORWARD-TO-TRUE-LIST-LISTP-AND-ALISTP") (mkpair (mkpair (
mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "READABLE-FILES-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READABLE-FILES-P-FORWARD-TO-READABLE-FILES-LISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "READABLE-FILES-P") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"READABLE-FILES-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WRITTEN-FILE-FORWARD-TO-TRUE-LISTP-AND-CONSP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "WRITTEN-FILE") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WRITTEN-FILE-LISTP-FORWARD-TO-TRUE-LIST-LISTP-AND-ALISTP") (mkpair (mkpair (
mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "WRITTEN-FILE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "ALISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WRITTEN-FILES-P-FORWARD-TO-WRITTEN-FILE-LISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "WRITTEN-FILES-P") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"WRITTEN-FILE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READ-FILE-LISTP1-FORWARD-TO-TRUE-LISTP-AND-CONSP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "READ-FILE-LISTP1") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READ-FILE-LISTP-FORWARD-TO-TRUE-LIST-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "READ-FILE-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LIST-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READ-FILES-P-FORWARD-TO-READ-FILE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "READ-FILES-P") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"READ-FILE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WRITABLE-FILE-LISTP1-FORWARD-TO-TRUE-LISTP-AND-CONSP") (mkpair (mkpair (
mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "WRITABLE-FILE-LISTP1") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WRITABLE-FILE-LISTP-FORWARD-TO-TRUE-LIST-LISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "WRITABLE-FILE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "TRUE-LIST-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"WRITEABLE-FILES-P-FORWARD-TO-WRITABLE-FILE-LISTP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "WRITEABLE-FILES-P") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"WRITABLE-FILE-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STATE-P1-FORWARD") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"STATE-P1") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "LENGTH") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "15" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (mkpair (mkpair (mksym "COMMON-LISP" 
"NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "ALL-BOUNDP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mkpair (mkpair (mksym "ACL2" 
"ACCUMULATED-TTREE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "ACCUMULATED-WARNINGS") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "ACL2-VERSION") (mk_chars_str (chars_to_string (cons 65 (cons 67 (
cons 76 (cons 50 (cons 32 (cons 86 (cons 101 (cons 114 (cons 115 (cons 105 (
cons 111 (cons 110 (cons 32 (cons 50 (cons 46 (cons 57 (cons 46 (cons 51 nil))))))))))))))))))))) (
mkpair (mkpair (mksym "ACL2" "AXIOMSP") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "BDDNOTES") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "CERTIFY-BOOK-FILE") (mksym "COMMON-LISP" "NIL")) (mkpair (
mkpair (mksym "ACL2" "CONNECTED-BOOK-DIRECTORY") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "CURRENT-PACKAGE") (mk_chars_str (
chars_to_string (cons 65 (cons 67 (cons 76 (cons 50 nil))))))) (mkpair (
mkpair (mksym "ACL2" "DEFAXIOMS-OKP-CERT") (mksym "COMMON-LISP" "T")) (mkpair (
mkpair (mksym "ACL2" "ERROR-TRACE-STACK") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "EVISCERATE-HIDE-TERMS") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "FMT-HARD-RIGHT-MARGIN") (mknum "77" 
"1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "FMT-SOFT-RIGHT-MARGIN") (mknum 
"65" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "GSTACKP") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "GUARD-CHECKING-ON") (
mksym "COMMON-LISP" "T")) (mkpair (mkpair (mksym "ACL2" "IN-CERTIFY-BOOK-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "IN-LOCAL-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "IN-PROVE-FLG") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"INCLUDE-BOOK-ALIST-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "INFIXP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym 
"ACL2" "INHIBIT-OUTPUT-LST") (mkpair (mksym "ACL2" "SUMMARY") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "LD-LEVEL") (mknum "0" 
"1" "0" "1")) (mkpair (mkpair (mksym "ACL2" "LD-REDEFINITION-ACTION") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "LD-SKIP-PROOFSP") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "MATCH-FREE-ERROR") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-MAX-LINES") (mknum "45" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-MIN-LINES") (mknum "35" "1" "0" "1")) (mkpair (mkpair (mksym "ACL2" 
"MORE-DOC-STATE") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" 
"PACKAGES-CREATED-BY-DEFPKG") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "PRINT-BASE") (mknum "10" "1" "0" "1")) (mkpair (mkpair (mksym 
"ACL2" "PRINT-CASE") (mksym "KEYWORD" "UPCASE")) (mkpair (mkpair (mksym 
"ACL2" "PRINT-CLAUSE-IDS") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "PRINT-DOC-START-COLUMN") (mknum "15" "1" "0" "1")) (mkpair (
mkpair (mksym "ACL2" "PROMPT-FUNCTION") (mksym "ACL2" "DEFAULT-PRINT-PROMPT")) (
mkpair (mkpair (mksym "ACL2" "PROOF-TREE-CTX") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "PROOFS-CO") (mksym "ACL2-OUTPUT-CHANNEL" 
"STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (mksym "ACL2" 
"RAW-ARITY-ALIST") (mkpair (mkpair (mksym "ACL2" "ER-PROGN") (mksym 
"COMMON-LISP" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "EVAL-WHEN") (
mksym "KEYWORD" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "LET") (mksym 
"KEYWORD" "LAST")) (mkpair (mkpair (mksym "COMMON-LISP" "LET*") (mksym 
"KEYWORD" "LAST")) (mkpair (mkpair (mksym "ACL2" "MV-LET") (mksym "KEYWORD" 
"LAST")) (mkpair (mkpair (mksym "ACL2" "PROG2$") (mksym "KEYWORD" "LAST")) (
mkpair (mkpair (mksym "COMMON-LISP" "PROGN") (mksym "KEYWORD" "LAST")) (
mkpair (mkpair (mksym "COMMON-LISP" "THE") (mksym "KEYWORD" "LAST")) (mkpair (
mkpair (mksym "COMMON-LISP" "TIME") (mksym "KEYWORD" "LAST")) (mkpair (mkpair (
mksym "COMMON-LISP" "TRACE") (mknum "1" "1" "0" "1")) (mkpair (mkpair (mksym 
"COMMON-LISP" "UNTRACE") (mknum "1" "1" "0" "1")) (mksym "COMMON-LISP" "NIL"))))))))))))) (
mkpair (mkpair (mksym "ACL2" "SAFE-MODE") (mksym "COMMON-LISP" "NIL")) (
mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-REVERSED") (mksym "COMMON-LISP" 
"NIL")) (mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-TOKEN-LST") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "SAVED-OUTPUT-P") (mksym 
"COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "SKIP-PROOFS-OKP-CERT") (
mksym "COMMON-LISP" "T")) (mkpair (mkpair (mksym "ACL2" "SKIPPED-PROOFSP") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "STANDARD-CO") (
mksym "ACL2-OUTPUT-CHANNEL" "STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (
mksym "ACL2" "STANDARD-OI") (mksym "ACL2-OUTPUT-CHANNEL" 
"STANDARD-OBJECT-INPUT-0")) (mkpair (mkpair (mksym "ACL2" "TAINTED-OKP") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TIMER-ALIST") (
mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (mksym "ACL2" "TRACE-CO") (mksym 
"ACL2-OUTPUT-CHANNEL" "STANDARD-CHARACTER-OUTPUT-0")) (mkpair (mkpair (mksym 
"ACL2" "TRANSLATE-ERROR-DEPTH") (mknum "-1" "1" "0" "1")) (mkpair (mkpair (
mksym "ACL2" "TRIPLE-PRINT-PREFIX") (mk_chars_str (chars_to_string (cons 32 
nil)))) (mkpair (mkpair (mksym "ACL2" "UNDONE-WORLDS-KILL-RING") (mkpair (
mksym "COMMON-LISP" "NIL") (mkpair (mksym "COMMON-LISP" "NIL") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "WINDOW-INTERFACEP") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "WORMHOLE-NAME") (mksym "COMMON-LISP" "NIL")) (mkpair (mkpair (
mksym "ACL2" "WORMHOLE-OUTPUT") (mksym "COMMON-LISP" "NIL")) (mksym 
"COMMON-LISP" "NIL")))))))))))))))))))))))))))))))))))))))))))))))))))))))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "WORLDP") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "SYMBOL-ALISTP") (mkpair (
mkpair (mksym "ACL2" "FGETPROP") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"TABLE-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TIMER-ALISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "COMMON-LISP" 
"ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"TIMER-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "KNOWN-PACKAGE-ALISTP") (
mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "KNOWN-PACKAGE-ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"GLOBAL-VALUE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "ASSOC") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "ACL2" "CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (
mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "3" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "32-BIT-INTEGER-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "4" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "5" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"INTEGER-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "6" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "RATIONAL-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "7" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"FILE-CLOCK-P") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "8" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "READABLE-FILES-P") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "9" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WRITTEN-FILES-P") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "10" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "READ-FILES-P") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "11" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WRITEABLE-FILES-P") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "12" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "13" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "SYMBOL-ALISTP") (mkpair (mkpair (mksym "COMMON-LISP" 
"NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "14" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"STATE-P-IMPLIES-AND-FORWARD-TO-STATE-P1") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "STATE-P") (mkpair (mksym "ACL2" 
"STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"STATE-P1") (mkpair (mksym "ACL2" "STATE-STATE") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"INTEGER-RANGE-P-FORWARD") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"INTEGER-RANGE-P") (mkpair (mksym "ACL2" "LOWER") (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "1" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"UPPER-1") (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "UPPER-1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "LOWER") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "UPPER-1") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"SIGNED-BYTE-P-FORWARD-TO-INTEGERP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "SIGNED-BYTE-P") (mkpair (mksym "ACL2" "N") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"UNSIGNED-BYTE-P-FORWARD-TO-NONNEGATIVE-INTEGERP") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "UNSIGNED-BYTE-P") (mkpair (
mksym "ACL2" "N") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STRING<-L-ASYMMETRIC") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "EQLABLE-LISTP") (mkpair (mksym "ACL2" 
"X1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "EQLABLE-LISTP") (mkpair (mksym "ACL2" "X2") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "I") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "STRING<-L") (
mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" "X2") (mkpair (mksym "ACL2" 
"I") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "ACL2" "STRING<-L") (mkpair (mksym "ACL2" "X2") (mkpair (mksym 
"ACL2" "X1") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "SYMBOL-<-ASYMMETRIC") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" 
"SYM1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" 
"SYM2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-<") (mkpair (mksym "ACL2" "SYM1") (mkpair (mksym "ACL2" "SYM2") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (mksym "ACL2" "SYM2") (mkpair (mksym 
"ACL2" "SYM1") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STRING<-L-TRANSITIVE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "STRING<-L") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "STRING<-L") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (
mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "J") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (
mkpair (mksym "ACL2" "K") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "CHARACTER-LISTP") (mkpair (mksym "ACL2" "Z") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "STRING<-L") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Z") (
mkpair (mksym "ACL2" "K") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "SYMBOL-<-TRANSITIVE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (
mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym 
"ACL2" "Z") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "SYMBOL-<") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Z") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "STRING<-L-TRICHOTOMY") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"ACL2" "STRING<-L") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mkpair (mksym "ACL2" "I") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "I") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "CHARACTER-LISTP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "CHARACTER-LISTP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "IFF") (mkpair (mkpair (mksym "ACL2" "STRING<-L") (mkpair (mksym 
"ACL2" "Y") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "J") (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "SYMBOL-<-TRICHOTOMY") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "IFF") (mkpair (mkpair (mksym "ACL2" "SYMBOL-<") (mkpair (mksym 
"ACL2" "Y") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP-REMOVE-FIRST-PAIR") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "KEY") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "ACL2" 
"REMOVE-FIRST-PAIR") (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "SYMBOL-<-IRREFLEXIVE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "ACL2" "SYMBOL-<") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP-ADD-PAIR") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP") (mkpair (mksym "ACL2" "GS") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym 
"ACL2" "W5") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (
mkpair (mksym "ACL2" "W5") (mkpair (mksym "ACL2" "W6") (mkpair (mksym "ACL2" 
"GS") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP-GETPROPS") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WORLDP") (mkpair (mksym "ACL2" "W") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOLP") (mkpair (mksym "ACL2" "WORLD-NAME") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "KEY") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "ACL2" "GETPROPS") (mkpair (
mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "WORLD-NAME") (mkpair (mksym "ACL2" 
"W") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TRUE-LIST-LISTP-FORWARD-TO-TRUE-LISTP-ASSOC-EQ") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (mksym "ACL2" 
"KEY") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TRUE-LISTP-CADR-ASSOC-EQ-FOR-OPEN-CHANNELS-P") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "OPEN-CHANNELS-P") (mkpair (mksym 
"ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mkpair (
mksym "COMMON-LISP" "CDR") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (mkpair (
mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "NTH-UPDATE-NTH") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "M") (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "VAL") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "NFIX") (mkpair (mksym 
"ACL2" "M") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"NFIX") (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "M") (mkpair (mksym "ACL2" "L") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "TRUE-LISTP-UPDATE-NTH") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH") (mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VAL") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "NTH-UPDATE-NTH-ARRAY") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "M") (mkpair (mkpair (mksym "ACL2" 
"UPDATE-NTH-ARRAY") (mkpair (mksym "ACL2" "N") (mkpair (mksym "ACL2" "I") (
mkpair (mksym "ACL2" "VAL") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" 
"NIL")))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "ACL2" "NFIX") (mkpair (mksym "ACL2" "M") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "NFIX") (mkpair (mksym "ACL2" "N") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "UPDATE-NTH") (mkpair (mksym "ACL2" "I") (mkpair (mksym "ACL2" 
"VAL") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mksym "ACL2" "M") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mksym "ACL2" 
"M") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "LEN-UPDATE-NTH") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"LEN") (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (mksym "ACL2" "N") (
mkpair (mksym "ACL2" "VAL") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"MAX") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "NFIX") (mkpair (mksym "ACL2" "N") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "LEN") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"UPDATE-RUN-TIMES-PRESERVES-STATE-P1") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "STATE-P1") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "RATIONAL-LISTP") (mkpair (mksym "ACL2" "TIMES") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" "STATE-P1") (mkpair (
mkpair (mksym "ACL2" "UPDATE-RUN-TIMES") (mkpair (mksym "ACL2" "TIMES") (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"READ-RUN-TIME-PRESERVES-STATE-P1") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "STATE-P1") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "STATE-P1") (
mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "READ-RUN-TIME") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"NTH-0-READ-RUN-TIME-TYPE-PRESCRIPTION") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "STATE-P1") (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "READ-RUN-TIME") (mkpair (
mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "RATIONALP-+") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "RATIONALP-*") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "RATIONALP-UNARY--") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "ACL2" 
"UNARY--") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "RATIONALP-UNARY-/") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mkpair (mksym "ACL2" 
"UNARY-/") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"RATIONALP-IMPLIES-ACL2-NUMBERP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "NTH-0-CONS") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mksym "ACL2" "A") (mkpair (mksym "ACL2" "L") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mksym "ACL2" 
"A") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "NTH-ADD1") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "N") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "N") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "N") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "A") (
mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mksym "ACL2" 
"N") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"MAIN-TIMER-TYPE-PRESCRIPTION") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "STATE-P1") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mkpair (mksym "ACL2" 
"MAIN-TIMER") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "TRUE-LISTP") (
mkpair (mkpair (mksym "ACL2" "MAIN-TIMER") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP-ADD-PAIR-FORWARD") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "KEY") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "ORDERED-SYMBOL-ALISTP") (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (
mkpair (mksym "ACL2" "KEY") (mkpair (mksym "ACL2" "VALUE") (mkpair (mksym 
"ACL2" "L") (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ASSOC-ADD-PAIR") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" 
"SYM2") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP") (mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "SYM1") (mkpair (mkpair (mksym 
"ACL2" "ADD-PAIR") (mkpair (mksym "ACL2" "SYM2") (mkpair (mksym "ACL2" "VAL") (
mkpair (mksym "ACL2" "ALIST") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "SYM1") (mkpair (
mksym "ACL2" "SYM2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "CONS") (mkpair (mksym "ACL2" "SYM1") (mkpair (mksym "ACL2" 
"VAL") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"ASSOC") (mkpair (mksym "ACL2" "SYM1") (mkpair (mksym "ACL2" "ALIST") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ADD-PAIR-PRESERVES-ALL-BOUNDP") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"EQLABLE-ALISTP") (mkpair (mksym "ACL2" "ALIST1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ORDERED-SYMBOL-ALISTP") (mkpair (mksym "ACL2" "ALIST2") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "ALL-BOUNDP") (mkpair (mksym "ACL2" "ALIST1") (mkpair (mksym "ACL2" 
"ALIST2") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOLP") (mkpair (mksym "ACL2" "SYM") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "ALL-BOUNDP") (mkpair (mksym "ACL2" "ALIST1") (mkpair (mkpair (mksym 
"ACL2" "ADD-PAIR") (mkpair (mksym "ACL2" "SYM") (mkpair (mksym "ACL2" "VAL") (
mkpair (mksym "ACL2" "ALIST2") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"STATE-P1-UPDATE-MAIN-TIMER") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "ACL2" "STATE-P1") (mkpair (mksym "ACL2" "STATE") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "STATE-P1") (
mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "MAIN-TIMER") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "VAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NTH") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mknum "2" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"STATE") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ALL-BOUNDP-PRESERVES-ASSOC") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"EQLABLE-ALISTP") (mkpair (mksym "ACL2" "TBL1") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"EQLABLE-ALISTP") (mkpair (mksym "ACL2" "TBL2") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ALL-BOUNDP") (mkpair (mksym "ACL2" "TBL1") (mkpair (mksym "ACL2" "TBL2") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ASSOC-EQ") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "TBL1") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "ASSOC") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" 
"TBL2") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"STATE-P1-UPDATE-NTH-2-WORLD") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"STATE-P1") (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"WORLDP") (mkpair (mksym "ACL2" "WRLD") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALISTP") (mkpair (mkpair (mksym "ACL2" "FGETPROP") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"KNOWN-PACKAGE-ALIST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "GLOBAL-VALUE") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "ACL2" "SYMBOL-ALISTP") (mkpair (mkpair (mksym "ACL2" 
"FGETPROP") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"ACL2" "ACL2-DEFAULTS-TABLE") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" "TABLE-ALIST") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym 
"ACL2" "WRLD") (mksym "COMMON-LISP" "NIL")))))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "STATE-P1") (mkpair (mkpair (mksym "ACL2" "UPDATE-NTH") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ADD-PAIR") (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "ACL2" 
"CURRENT-ACL2-WORLD") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"WRLD") (mkpair (mkpair (mksym "COMMON-LISP" "NTH") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "2" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mksym "ACL2" "STATE") (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TRUE-LIST-LISTP-FORWARD-TO-TRUE-LISTP-ASSOC-EQUAL") (mkpair (mkpair (mksym 
"ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" "TRUE-LIST-LISTP") (mkpair (
mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"TRUE-LISTP") (mkpair (mkpair (mksym "ACL2" "ASSOC-EQUAL") (mkpair (mksym 
"ACL2" "KEY") (mkpair (mksym "ACL2" "L") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "NATP-POSITION-AC") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" 
"ACC") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "ACC") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "POSITION-AC") (mkpair (
mksym "ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (mksym "ACL2" "ACC") (
mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "ACL2" "POSITION-AC") (mkpair (mksym "ACL2" "ITEM") (mkpair (
mksym "ACL2" "LST") (mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"INTEGERP") (mkpair (mkpair (mksym "ACL2" "POSITION-AC") (mkpair (mksym 
"ACL2" "ITEM") (mkpair (mksym "ACL2" "LST") (mkpair (mksym "ACL2" "ACC") (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (
mkpair (mksym "ACL2" "POSITION-AC") (mkpair (mksym "ACL2" "ITEM") (mkpair (
mksym "ACL2" "LST") (mkpair (mksym "ACL2" "ACC") (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "BOOLEAN-LISTP-CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BOOLEAN-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "BOOLEANP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BOOLEAN-LISTP") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "BOOLEAN-LISTP-FORWARD") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "ACL2" 
"BOOLEAN-LISTP") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (mkpair (mksym 
"ACL2" "A") (mkpair (mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "BOOLEANP") (mkpair (mksym "ACL2" "A") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BOOLEAN-LISTP") (mkpair (
mksym "ACL2" "LST") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"BOOLEAN-LISTP-FORWARD-TO-SYMBOL-LISTP") (mkpair (mkpair (mksym "ACL2" 
"IMPLIES") (mkpair (mkpair (mksym "ACL2" "BOOLEAN-LISTP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-LISTP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLETION-OF-+") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"Y") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" 
"1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-+-1") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "FIX") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-+-2") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "FIX") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLETION-OF-*") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-*") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-*") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-*-1") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-*-2") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BINARY-*") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-UNARY-MINUS") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "UNARY--") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-UNARY-MINUS") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "UNARY--") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-UNARY-/") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "ACL2" "UNARY-/") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "ACL2" "UNARY-/") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-UNARY-/") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (
mksym "ACL2" "UNARY-/") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLETION-OF-<") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mkpair (mksym "COMMON-LISP" 
"LAMBDA") (mkpair (mkpair (mksym "ACL2" "X1") (mkpair (mksym "ACL2" "Y1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"REALPART") (mkpair (mksym "ACL2" "X1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "Y1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (
mksym "ACL2" "X1") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "Y1") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "X1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym 
"ACL2" "Y1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym "COMMON-LISP" 
"IMAGPART") (mkpair (mksym "ACL2" "X1") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "Y1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" 
"Y") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" 
"1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-<-1") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-<-2") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLETION-OF-CAR") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-CAR") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "COMPLETION-OF-CDR") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "CDR") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-CDR") (mkpair (
mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "CONS-CAR-CDR") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONS") (mkpair (mkpair (mksym "COMMON-LISP" "CAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CDR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "CONS") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-CHAR-CODE") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHAR-CODE") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-CHAR-CODE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "CHAR-CODE") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-CODE-CHAR") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "INTEGERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "<") (mkpair (mksym 
"ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" 
"1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "<") (
mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mknum "256" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (
mkpair (mkpair (mksym "COMMON-LISP" "CODE-CHAR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CODE-CHAR") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-COMPLEX") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "COMPLEX") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-COMPLEX-1") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-COMPLEX-2") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "COMPLEX") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mksym "ACL2" "X") (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "COMPLEX-0") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"COMPLEX") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "RFIX") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ADD-DEF-COMPLEX") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BINARY-+") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "COMPLEX") (
mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" 
"REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "BINARY-+") (mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "REALPART-+") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"REALPART") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "IMAGPART-+") (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"IMAGPART") (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (mksym "ACL2" 
"X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BINARY-+") (mkpair (
mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-COERCE") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "Y") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (
mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mkpair (
mksym "ACL2" "MAKE-CHARACTER-LIST") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "STRING") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-COERCE-1") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"COERCE") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"MAKE-CHARACTER-LIST-MAKE-CHARACTER-LIST") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "MAKE-CHARACTER-LIST") (
mkpair (mkpair (mksym "ACL2" "MAKE-CHARACTER-LIST") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "ACL2" "MAKE-CHARACTER-LIST") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-COERCE-2") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "SYNP") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mksym "ACL2" "SYNTAXP") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "Y") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "Y") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (
mksym "ACL2" "Y") (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "LIST") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "COERCE") (mkpair (mksym "ACL2" "X") (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" 
"STRING") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-COERCE-3") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"COERCE") (mkpair (mksym "ACL2" "X") (mkpair (mkpair (mksym "COMMON-LISP" 
"QUOTE") (mkpair (mksym "COMMON-LISP" "STRING") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mk_chars_str (chars_to_string nil)) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-DENOMINATOR") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "DENOMINATOR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"DENOMINATOR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" "0" "1") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-DENOMINATOR") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "DENOMINATOR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "1" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-IMAGPART") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IMAGPART") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-IMAGPART") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"IMAGPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "INTERN-IN-PACKAGE-OF-SYMBOL") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-NUMERATOR") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "NUMERATOR") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NUMERATOR") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-NUMERATOR") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "RATIONALP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym 
"COMMON-LISP" "NUMERATOR") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" 
"0" "1") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-REALPART") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "REALPART") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-REALPART") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"REALPART") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mknum "0" "1" "0" "1") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-SYMBOL-NAME") (mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOL-NAME") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOL-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string nil)) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "DEFAULT-SYMBOL-NAME") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "COMMON-LISP" 
"SYMBOL-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string nil)) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"COMPLETION-OF-SYMBOL-PACKAGE-NAME") (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" 
"SYMBOL-PACKAGE-NAME") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (
chars_to_string nil)) (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL"))))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"DEFAULT-SYMBOL-PACKAGE-NAME") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" 
"EQUAL") (mkpair (mkpair (mksym "ACL2" "SYMBOL-PACKAGE-NAME") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mk_chars_str (chars_to_string nil)) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"PSEUDO-TERM-LISTP-MFC-CLAUSE") (mkpair (mkpair (mksym "ACL2" 
"PSEUDO-TERM-LISTP") (mkpair (mkpair (mksym "ACL2" "MFC-CLAUSE") (mkpair (
mksym "ACL2" "MFC") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"TYPE-ALISTP-MFC-TYPE-ALIST") (mkpair (mkpair (mksym "ACL2" "TYPE-ALISTP") (
mkpair (mkpair (mksym "ACL2" "MFC-TYPE-ALIST") (mkpair (mksym "ACL2" "MFC") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"BAD-ATOM-COMPOUND-RECOGNIZER") (mkpair (mkpair (mksym "ACL2" "IFF") (mkpair (
mkpair (mksym "ACL2" "BAD-ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" 
"CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "ACL2-NUMBERP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "SYMBOLP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "SYMBOLP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "CHARACTERP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "CHARACTERP") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "STRINGP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" 
"NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" 
"NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "BOOLEANP-BAD-ATOM<=") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "T") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (mksym 
"COMMON-LISP" "T") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "EQUAL") (mkpair (mkpair (mksym "ACL2" 
"BAD-ATOM<=") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (mkpair (
mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"BAD-ATOM<=-ANTISYMMETRIC") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (mkpair (mksym "ACL2" "Y") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" 
"BAD-ATOM<=-TRANSITIVE") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"ACL2" "BAD-ATOM<=") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (
mkpair (mkpair (mksym "ACL2" "BAD-ATOM") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (
mkpair (mksym "ACL2" "BAD-ATOM") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BAD-ATOM") (mkpair (
mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"ACL2" "BAD-ATOM<=") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Z") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFAXIOM") (mkpair (mksym "ACL2" "BAD-ATOM<=-TOTAL") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "ACL2" "BAD-ATOM") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "BAD-ATOM<=") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"ACL2" "BAD-ATOM<=") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ALPHORDER-REFLEXIVE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"NOT") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" 
"X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (
mkpair (mksym "ACL2" "ALPHORDER") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ALPHORDER-TRANSITIVE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "ALPHORDER") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ALPHORDER") (mkpair (
mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym 
"COMMON-LISP" "NOT") (mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (
mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (
mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" "ALPHORDER") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"ALPHORDER-ANTI-SYMMETRIC") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (
mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ALPHORDER") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "ALPHORDER") (mkpair (mksym "ACL2" "Y") (mkpair (mksym 
"ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "ALPHORDER-TOTAL") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (mkpair (mkpair (mksym 
"COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL"))) (
mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (mksym "COMMON-LISP" "NOT") (
mkpair (mkpair (mksym "COMMON-LISP" "CONSP") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "ALPHORDER") (mkpair (mksym 
"ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (
mkpair (mksym "ACL2" "ALPHORDER") (mkpair (mksym "ACL2" "X") (mkpair (mksym 
"ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" 
"ALPHORDER") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "X") (mksym 
"COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (mksym "COMMON-LISP" 
"NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "LEXORDER-REFLEXIVE") (
mkpair (mkpair (mksym "ACL2" "LEXORDER") (mkpair (mksym "ACL2" "X") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" 
"LEXORDER-ANTI-SYMMETRIC") (mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (
mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" "LEXORDER") (
mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" 
"NIL")))) (mkpair (mkpair (mksym "ACL2" "LEXORDER") (mkpair (mksym "ACL2" "Y") (
mkpair (mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "COMMON-LISP" "QUOTE") (mkpair (mksym "COMMON-LISP" "NIL") (mksym 
"COMMON-LISP" "NIL"))) (mksym "COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym 
"COMMON-LISP" "EQUAL") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL")))) (mksym 
"COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "LEXORDER-TRANSITIVE") (
mkpair (mkpair (mksym "ACL2" "IMPLIES") (mkpair (mkpair (mksym "COMMON-LISP" 
"IF") (mkpair (mkpair (mksym "ACL2" "LEXORDER") (mkpair (mksym "ACL2" "X") (
mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (
mksym "ACL2" "LEXORDER") (mkpair (mksym "ACL2" "Y") (mkpair (mksym "ACL2" "Z") (
mksym "COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "COMMON-LISP" "QUOTE") (
mkpair (mksym "COMMON-LISP" "NIL") (mksym "COMMON-LISP" "NIL"))) (mksym 
"COMMON-LISP" "NIL"))))) (mkpair (mkpair (mksym "ACL2" "LEXORDER") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Z") (mksym "COMMON-LISP" "NIL")))) (
mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))
,

(mkpair (mksym "ACL2" "DEFTHM") (mkpair (mksym "ACL2" "LEXORDER-TOTAL") (
mkpair (mkpair (mksym "COMMON-LISP" "IF") (mkpair (mkpair (mksym "ACL2" 
"LEXORDER") (mkpair (mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym 
"COMMON-LISP" "NIL")))) (mkpair (mkpair (mksym "ACL2" "LEXORDER") (mkpair (
mksym "ACL2" "X") (mkpair (mksym "ACL2" "Y") (mksym "COMMON-LISP" "NIL")))) (
mkpair (mkpair (mksym "ACL2" "LEXORDER") (mkpair (mksym "ACL2" "Y") (mkpair (
mksym "ACL2" "X") (mksym "COMMON-LISP" "NIL")))) (mksym "COMMON-LISP" "NIL"))))) (
mksym "COMMON-LISP" "NIL"))))

];
