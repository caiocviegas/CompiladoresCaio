parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}	

program: CLASS PROGRAM LCURLY (field_decl)* (method_decl)* RCURLY;

method_type: tipo ID;

field_decl:  (method_type (VIRGULA method_type)* |
	      method_type LCOLCH int_literal RCOLCH (VIRGULA method_type LCOLCH int_literal RCOLCH)*) PONTOVIRGULA;

method_decl: (tipo|VOID) ID LPARENT (method_type(VIRGULA method_type)*)? RPARENT block;

block: LCURLY var_dec* (statement)* RCURLY;

var_dec: tipo ID (VIRGULA ID)* PONTOVIRGULA ;

tipo: INT|BOOLEAN;

statement: location assign_op expr PONTOVIRGULA 
      | method_call PONTOVIRGULA 
      | IF LPARENT expr RPARENT block  (ELSE block)?  
      | FOR ID IGUAL expr VIRGULA expr block 
      | RETURN (expr)* PONTOVIRGULA 
      | BREAK PONTOVIRGULA 
      | CONTINUE PONTOVIRGULA 
      | block ;

assign_op: IGUAL | MAISIGUAL | MENOSIGUAL ;

method_call: ID LPARENT (expr(VIRGULA expr)*)? RPARENT 
		| CALLOUT LPARENT string_literal  (VIRGULA callout_arg(VIRGULA callout_arg)*)? RPARENT ;

location: ID | ID LCOLCH expr RCOLCH ;

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

alpha_num: alpha | digit ;

alpha: ALFAB ;

digit: NUM ;

int_literal: decimal_literal | hex_literal ;

decimal_literal: digit digit* ;

hex_literal: HEX ;

bool_literal: TRUEFALSE ;

char_literal: CHAR ;

string_literal: STRING* ;


