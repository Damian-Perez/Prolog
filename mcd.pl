%m�nimo com�n m�ltiplo
mcd(_,0,0):-!.
mcd(_,1,1):-!.
mcd(A,B,X):-
    A<B,
    mcd(B,A,X),!.
mcd(A,B,X):-
    N is A-B,
    N=:=0,
    X is B,!.
mcd(A,B,X):-
    N is A-B,
    N=:=B,
    X is B,!.
mcd(A,B,X):-
    N is A-B,
    N<B,
    mcd(B,N,X),!.
mcd(A,B,X):-
    N is A-B,
    N>B,
    mcd(A,N,X).
