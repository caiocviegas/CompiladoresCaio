parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASS PROGRAM LCURLY field_decl* method_decl* RCURLY;

field_decl:  (tipo id | tipo id LCOLCH int_literal RCOLCH)
	     (VIRGULA (tipo id | tipo id LCOLCH int_literal RCOLCH))* PONTOVIRGULA;

method_decl: (tipo|VOID) id LPARENT (tipo id(VIRGULA tipo id)*)* RPARENT block;

block: LCURLY var_dec* (statement)* RCURLY;

var_dec: (tipo id)* PONTOVIRGULA ;

tipo: INT|BOOLEAN|FORPAR;

statement: location assign_op expr PONTOVIRGULA 
      | method_call PONTOVIRGULA 
      | IF LPARENT expr RPARENT block  (ELSE block)?  
      | FOR id IGUAL expr VIRGULA expr block 
      | RETURN (expr)* PONTOVIRGULA 
      | BREAK PONTOVIRGULA 
      | CONTINUE PONTOVIRGULA 
      | block ;

assign_op: IGUAL | MAISIGUAL | MENOSIGUAL ;

method_call: method_name LPARENT (expr(VIRGULA expr)*)? RPARENT 
		| CALLOUT LPARENT string_literal  (VIRGULA callout_arg(VIRGULA callout_arg)*)? RPARENT ;

method_name: id;

location: id | id LCOLCH expr RCOLCH ;

expr: location 
	|method_call 
	| literal 
	| expr bin_op expr 
	| MENOS expr 
	| EXCLAMACAO expr 
	| LPARENT expr RPARENT ; 

callout_arg: expr | string_literal ;

bin_op: arith_op | rel_op | eq_op | cond_op ;

arith_op: MAIS | MENOS | VEZES | DIVID | PERCENT ;

rel_op: MENOR | MAIOR | MENORIGUAL | MAIORIGUAL ;

eq_op: IGUALIGUAL | DIFERENTE ;

cond_op: E | OU ;

literal: int_literal | char_literal | bool_literal ;

id: ID;

alpha_num: alpha | digit ;

alpha: ALFAB ;

digit: NUM ;

int_literal: decimal_literal | hex_literal ;

decimal_literal: digit digit* ;

hex_literal: HEX ;

bool_literal: TRUEFALSE ;

char_literal: CHAR ;

string_literal: STRING* ;


