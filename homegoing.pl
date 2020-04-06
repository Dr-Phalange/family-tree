%PROLOG program to show relations between characters in the book
% 'Homegoing' by Yaa Gyasi


%Asantes
asante(maame).
asante(big_man_asare).
asante(nana_yaa).

%Fantes
fante(baaba).
fante(cobbe_otcher).


%marriages
married_to(maame, big_man_asare).
married_to(baaba, cobbe_otcher).
married_to(effia, james_collins).
married_to(nana_yaa, quey).
married_to(ness, sam).
married_to(akosua_mensah, james_unlucky).
married_to(anna, kojo).
married_to(ethe, h).
married_to(akua, asamoah_agyekum).
married_to(willie, robert).
married_to(esther, yaw).


%parent-child relations
parent(maame, effia).
parent(maame, esi).
parent(baaba, fiifi).
parent(cobbe_otcher, fiifi).
parent(effia, quey).
parent(james_collins, quey).
parent(esi, ness).
parent(quey, james_unlucky).
parent(nana_yaa, james_unlucky).
parent(ness, kojo).
parent(sam, kojo).
parent(akosua_mensah, abena).
parent(james_unlucky, abena).
parent(anna, agnes).
parent(anna, beulah).
parent(anna, cato).
parent(anna, daly).
parent(anna, eurias).
parent(anna, felicity).
parent(anna, gracie).
parent(anna, h).
parent(kojo, agnes).
parent(kojo, beulah).
parent(kojo, cato).
parent(kojo, daly).
parent(kojo, eurias).
parent(kojo, felicity).
parent(kojo, gracie).
parent(kojo, h).
parent(ethe, willie).
parent(ethe, hazel).
parent(h, willie).
parent(h, hazel).
parent(abena, akua).
parent(ohene_nyarko, akua).
parent(akua, abee).
parent(akua, ama_serwah).
parent(akua, yaw).
parent(asamoah_agyekum, abee).
parent(asamoah_agyekum, ama_serwah).
parent(asamoah_agyekum, yaw).
parent(willie, carson).
parent(robert, carson).
parent(willie, josephine).
parent(eli, josephine).
parent(yaw, marjorie).
parent(esther, marjorie).
parent(carson, marcus).
parent(amani, marcus).


%guardians
guardian(baaba, effia).
guardian(cobbe_otcher, effia).
guardian(ma_aku, kojo).
guardian(ness, pinky).


%females
female(maame).
female(baaba).
female(effia).
female(esi).
female(ness).
female(nana_yaa).
female(akosua_mensah).
female(anna).
female(abena).
female(agnes).
female(beulah).
female(felicity).
female(gracie).
female(ethe).
female(akua).
female(willie).
female(hazel).
female(abee).
female(ama_serwa).
female(josephine).
female(amani).
female(esther).
female(marjorie).


%males
male(cobbe_otcher).
male(big_man_asare).
male(fiifi).
male(james_collins).
male(quey).
male(sam).
male(james_unlucky).
male(kojo).
male(ohene_nyarko).
male(cato).
male(daly).
male(eurias).
male(h).
male(asamoah_agyekum).
male(robert).
male(eli).
male(yaw).
male(carson).
male(marcus).


%RULES
predecessor(X, Y):-
    parent(X, Z),
    predecessor(Z, Y).

predecessor(X, Y):-
    parent(X, Y).

mother(X, Y):-
    parent(X, Y),
    female(X).

father(X, Y):-
    parent(X, Y),
    male(X).
