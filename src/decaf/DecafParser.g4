parser grammar DecafParser;

@header {
package decaf;
}

options
{
  language=Java;
  tokenVocab=DecafLexer;
}

program: CLASS PROGRAM LCURLY (declara)* (metodo)* RCURLY PONTOVIRGULA;

declara:  {(tipo)+|(tipo)+ id LCOLCH int_literal RCOLCH} PONTOVIRGULA;

metodo: {(tipo)|VOID} ID LPARENT {{tipo ID}} RPARENT block;

int_literal: 

block: LCURLY (var_dec)* (stmt)* RCURLY;

var_dec: tipo ID+, PONTOVIRGULA;

id: ID;

tipo: INT|BOOLEAN|STRING|CHAR;


