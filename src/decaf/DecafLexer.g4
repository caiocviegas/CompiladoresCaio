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

IF: 'if';
CALLOUT: 'callout';
TRUEFALSE : ('true'|'false');
BOOLEAN: 'boolean';
CLASS: 'class';
ELSE: 'else';
RETURN: 'return';
VOID: 'void';
FOR: 'for';
BREAK: 'break';
CONTINUE: 'continue';
PROGRAM: 'Program';
INT: 'int';


LCURLY : '{';
RCURLY : '}';

MAIS: '+';
MENOS: '-';
VEZES: '*';
DIVID: '/';
MENOR: '<';
MENORIGUAL: '<=';
MAIOR: '>';
MAIORIGUAL: '>=';
DIFERENTE: '!=';
IGUALIGUAL: '==';
IGUAL: '=';
E: '&&';
OU: '||';
LCOLCH: '[';
RCOLCH: ']';
LPARENT: '(';
RPARENT: ')';
VIRGULA: ',';
DOISPONTOS: ':';
PONTOVIRGULA: ';';


ID : (LETRAS+DIGIT*|'_'|'_'DIGIT*)+;
CHAR :'\'' (ESC|LETRAS|DIGIT) '\'';
STRING : '"' (LETRAS|DIGIT|SIMBOLOS)* '"';
WS : [ \t\r\n]+ -> skip ;
SL_COMMENT : '//' (~'\n')* '\n' -> skip;
NUM : (DIGIT)+;
OP : ('-'|'+'|'*'|'/'|'&&'|'!='|'<'|'<=');
HEX : INIHEX (DIGIT|LETRAS)+;

fragment
ESC :  '\\' ('n'|'t'|'\\');

fragment
LETRAS : ('a'..'z' | 'A'..'Z' );

fragment
DIGIT : ( '0'..'9' );

fragment
SIMBOLOS : (' '|'!'|'"'|'#'|'$'|'%'|'&'|'\\\''|'('|')'|'*'|'+'|','|'-'|'.'|'/'|':'|';'|'<'|'='|'>'|'?'|'@'|'['|']'|'^'|'_'|'´'|'`'|'{'|'|'|'}'|'~'|'\t'|'\\'|'\"');

fragment
INIHEX: '0x';











