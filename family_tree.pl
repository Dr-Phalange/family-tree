%PROLOG program that describes some of my extended family.

%nuclear family.
parent(janerose, lynn).
parent(alfonce, lynn).
parent(janerose, allan).

%Attila family - demonstrate mother-child relation.
parent(cecilia, jonathan).
parent(cecilia, attanus).
parent(cecilia, nate).
parent(cecilia, jerusa).

%Olita family - demonstrate sibling relations.
sibling(toto, edgar).
sibling(toto, maureen).
sibling(edgar, bev).
sibling(maureen, bev).
sibling(maureen,edgar).
sibling(bev,toto).

%females
female(janerose).
female(lynn).
female(cecilia).
female(jerusa).
female(toto).
female(maureen).
female(bev).

%males
male(alfonce).
male(allan).
male(jonathan).
male(attanus).
male(nate).
male(edgar).


mother(X,Y):- parent(X,Y), female(X).
father(X,Y):- parent(X,Y), male(X).
sister(X,Y):- sibling(X,Y), female(X).
brother(X,Y):- sibling(X,Y), male(X).
