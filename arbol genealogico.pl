%hombres
hombre(pedro).
hombre(manuel).
hombre(arturo).

%mujer
mujer(maria).

%padre e hijo
padre(pedro,manuel).
padre(pedro,arturo).
padre(pedro,maria).

%ni�o o ni�a
ni�o(X,Y):-
    hijo(X,Y).
ni�o(X,Y):-
    hija(X,Y).

%hijo
hijo(X,Y):-
    padre(Y,X),
    hombre(X).

%hija
hija(X,Y):-
    padre(Y,X),
    mujer(X).

%hermanos
hermano-o-hermana(X,Y):-
    hermano(X,Y).
hermano-o-hermana(X,Y):-
    hermana(X,Y).

%X es hermano de Y
hermano(X,Y):-
    hijo(X,Z),
    ni�o(Y,Z),
    X\==Y.

%X es hermana de Y
hermana(X,Y):-
    hija(X,Z),
    ni�o(Y,Z),
    X\==Y.