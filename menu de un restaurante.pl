%entradas
entrada(paella).
entrada(gazpacho).
entrada(consom�).

%carnes
carne(filete_de_cerdo).
carne(pollo_asado).

%pescados
pescado(trucha).
pescado(bacalao).

%postres
postre(flan).
postre(helado).
postre(pastel).

%platos principales
platoPrincipal(Plato):-
    carne(Plato).
platoPrincipal(Plato):-
    pescado(Plato).

%comidas de los men�s completos
menuCompleto(X,Y,Z):-
    entrada(X),
    platoPrincipal(Y),
    postre(Z).

%comidas de los men�s completos que tengan consom� en las entradas
menuConConsom�(X,Y,Z):-
    menuCompleto(X,Y,Z),
    X==consom�.

%comidas de los men�s completos que no tengan flan como postre
menuSinFlan(X,Y,Z):-
    menuCompleto(X,Y,Z),
    Z\==flan.

%bebidas
bebida(vino).
bebida(cerveza).
bebida(agua_mineral).

%comidas de los men�s completos, incluyendo una bebida
menuCompletoConBebida(X,Y,Z,W):-
    menuCompleto(X,Y,Z),
    bebida(W).

