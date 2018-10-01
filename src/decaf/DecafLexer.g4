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

INT: 'int';
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
MAISIGUAL: '+=';
MENOSIGUAL: '-=';
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
EXCLAMACAO: '!';
PERCENT: '%';

ID : (LETRAS+DIGIT*|'_'|'_'DIGIT*)+;

CHAR :'\'' (ESC|LETRAS|DIGIT) '\'';

STRING : '"' (LETRAS|DIGIT|SIMBOLOS)* '"';

WS : [ \t\r\n]+ -> skip ;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

HEX : INIHEX (DIGIT|LETRAS)+;

NUM : (DIGIT)+;

ALFAB: (LETRAS)+;

fragment
DIGIT : ( '0'..'9' );

fragment
LETRAS : ('a'..'z' | 'A'..'Z'|'_' );


fragment
ESC :  '\\' ('n'|'t'|'\\');


fragment
SIMBOLOS : (' '|'"'|'#'|'$'|'&'|'\\\''|'.'|'?'|'@'|'^'|'´'|'`'|'|'|'~'|'\t'|'\\'|'\"');

fragment
INIHEX: '0x';











