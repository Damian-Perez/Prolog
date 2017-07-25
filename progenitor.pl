%progenitor : padre o madre
progenitor(clara,pedro).
progenitor(pedro,jose).
progenitor(ana,clara).
progenitor(jose,clara).

%abuelo
abuelo(X,Y):-
    progenitor(X,Z),
    progenitor(Z,Y).

%bisabuelo
bisabuelo(X,Y):-
    progenitor(X,Z),
    abuelo(Z,Y).


