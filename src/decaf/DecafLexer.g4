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

ID : (LETRAS|'_')+;
CHAR :'\'' (ESC|LETRAS|DIGIT) '\'';
STRING : '"' (LETRAS|DIGIT|SIMBOLOS)* '"';
WS : [ \t\r\n]+ -> skip ;
SL_COMMENT : '//' (~'\n')* '\n' -> skip;
INT : (DIGIT)+;
OP : ('-'|'+'|'*'|'/'|'&&'|'!='|'<'|'<=');


fragment
ESC :  '\\' ('n'|'t'|'\\');

fragment
LETRAS : ('a'..'z' | 'A'..'Z' );

fragment
DIGIT : ( '0'..'9' );

fragment
SIMBOLOS : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');











