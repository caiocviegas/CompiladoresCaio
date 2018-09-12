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
CLASS: 'class';
ELSE: 'else';
RETURN: 'return';
VOID: 'void';
FOR: 'for';
BREAK: 'break';
CONTINUE: 'continue';
PROGRAM: 'Program';

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

BOOLEAN : ('true'|'false');
ID : (LETRAS|'_')+;
CHAR :'\'' (ESC|LETRAS|DIGIT) '\'';
STRING : '"' (LETRAS|DIGIT|SIMBOLOS)* '"';
WS : [ \t\r\n]+ -> skip ;
SL_COMMENT : '//' (~'\n')* '\n' -> skip;
INT : (DIGIT)+;
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











