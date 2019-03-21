grammar swl;

program   : 'begin' statement+ 'end';
          
statement : assign | add | sub | mul | div | print | cycle|branch;

assign    : 'let' ID 'be' (NUMBER | ID) ;
print     : 'print' (NUMBER | ID) ;
add       : 'add' (NUMBER | ID) 'to' ID ;
sub       : 'sub' (NUMBER | ID) 'to' ID ;
mul       : 'mul' (NUMBER | ID) 'to' ID ;
div       : 'div' (NUMBER | ID) 'to' ID ;
cycle	  : 'cycle' expr statement+ 'end cycle';
branch    : 'branch' expr 'then' statement+ endB;
endB      : 'else' statement+ 'end branch'|'end branch';
expr	  : cond '&&' expr | cond '||' expr | cond ;
cond	  : (NUMBER|ID)('=='|'<='|'>='|'>'|'<'|'!=')(NUMBER|ID);
ID        : [a-z]+ ;
NUMBER    : [0-9]+ ;
WS        : [ \n\t]+ -> skip;
ErrorChar : . ;
