lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';

ID : (LETRAS|'_') (LETRAS|DIGIT|'_')+;

WS : [ \t\r\n]+ -> skip ;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR :'\'' (ESC|LETRAS|DIGIT) '\'';

STRING : '"' (LETRAS|DIGIT|SIMBOLOS)* '"';

fragment
ESC :  '\\' ('n'|'t'|'\\');

fragment
LETRAS : ('a'..'z' | 'A'..'Z' );

fragment
DIGIT : ( '0'..'9' )

fragment
SIMBOLOS : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');











