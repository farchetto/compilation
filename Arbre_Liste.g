grammar Arbre_Liste;

prog: a
    ;

a   : v
    | '(' a x
    ;
    
x   : '.' a ')'
    | s ')'
    ;
    
s   : ',' a s
    |
    ;
    
v   : INT
    | 'nil'
    ;

INT :   '0'..'9'+ ;
NEWLINE:'\r'? '\n' ;
WS  :   (' '|'\t')+ {$channel=HIDDEN;} ;
        