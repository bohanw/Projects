(* this is an -*- sml -*- file, more or less *)
open mungeTools
type lexresult = unit
val linecount = ref 1;
val cpos = ref 1;
fun eof () = OS.Process.exit (if !numErrors > 0 then OS.Process.failure
                              else OS.Process.success)

fun mk_ECHO ostr s = (TextIO.output(ostr, s); TextIO.flushOut ostr);
val ECHO = mk_ECHO TextIO.stdOut
fun ERR s = let in
  mk_ECHO TextIO.stdErr (s^"\n");
  numErrors := !numErrors + 1;
  "MUNGER ERROR "^(Int.toString (!numErrors))
end
local open String in
  fun inside s = substring(s, 1, size s - 2)
end
local
  open Substring
  fun u p s = if isEmpty s then concat (rev p) else let
        val (pref,suff) = position "\\}" s
        in
          u (pref::p) (triml 1 suff)
        end
in
  fun unescape s = u [] (full s)
end
val width = ref 63
val mathmode = ref (NONE : string option)
fun tex_spacing s =
    if s = "" then "\\;\\;"
    else String.translate (fn #"c" => "\\," | c => "\\" ^ str c) s


fun pp_to_mathstring spacing width f x = let
  val acc = ref ([] : string list)
  fun consumer s =
      if s = "\n" then acc := "\\\\\n" :: !acc
      else if CharVector.all Char.isSpace s then
        acc := String.concat(List.tabulate(size s, (fn _ => spacing))) :: !acc
      else acc := s :: !acc
  val ppc = {consumer = consumer, linewidth = width, flush = fn () => ()}
in
  PP.with_pp ppc (fn ppstrm => f ppstrm x);
  String.concat (List.rev (!acc))
end

fun replace (pos, argpos, comm, optstring, args) = let
  val optset = parseOpts pos optstring
  val width = case optset_width optset of
                SOME w => w
              | NONE => !width
  val local_math =
      if optset_nomath optset then NONE
      else
        case optset_mathmode optset of
            NONE => !mathmode
          | SOME s => SOME (tex_spacing s)
  val printer = case local_math of
                  NONE => PP.pp_to_string
                | SOME s => pp_to_mathstring s
in
  TextIO.output(TextIO.stdOut,
                printer width replacement
                        {commpos = pos, argpos = argpos,
                         command = comm, options = optset,
                         argument = unescape args})
end

fun getparts s = let
  open Substring
  val ss = full s
  val (prebrace, bracesfx) = position "{" ss
  val argoffset = size prebrace + 1
  val (preposn, optsfx) = position "[" prebrace
  val opstring = if size optsfx = 0 then ""
                 else inside (string optsfx)
in
  (opstring, inside (string bracesfx), argoffset)
end
%%
%structure mungeLex

args = "{"("\\}"|[^}])+"}";
options = "["[^\]]*"]";

%%
<INITIAL>"\\HOLtm" {options}? {args} =>
  (let val (optstring, args, argpos) = getparts yytext
   in
     replace ((!linecount, !cpos),(!linecount, !cpos + argpos),
              Term, optstring, args);
     cpos := !cpos + size yytext;
     lex()
   end);
<INITIAL>"\\HOLthm" {options}? {args} =>
  (let val (optstring, args, argpos) = getparts yytext
   in
     replace ((!linecount, !cpos), (!linecount, !cpos + argpos),
              Theorem, optstring, args);
     cpos := !cpos + size yytext;
     lex()
   end);
<INITIAL>"\\HOLty"  {options}? {args} =>
  (let val (optstring, args, argpos) = getparts yytext
   in
     replace ((!linecount, !cpos), (!linecount, !cpos + argpos),
              Type, optstring, args);
     cpos := !cpos + size yytext;
     lex()
   end);
<INITIAL>"\n" => (ECHO "\n";
                  linecount := !linecount + 1;
                  cpos := 1;
                  lex());
<INITIAL>. => (ECHO yytext; cpos := !cpos + 1; lex());
