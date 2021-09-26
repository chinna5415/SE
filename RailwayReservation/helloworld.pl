male(dasarath).
male(ram).
male(laxman).
male(bharath).
male(satrughna).
male(luv).
male(kush).
female(kaikeyi).
female(kaushalya).
female(sumitra).
female(sita).
female(urmila).
parent(ram, dasarath).
parent(laxman, dasarath).
parent(bharath, dasarath).
parent(satrughna, dasarath).
parent(luv, ram).
parent(kush, ram).
parent(luv, sita).
parent(kush, sita).
parent(ram, kaushalya).
parent(laxman, sumitra).
parent(bharath, kaikeyi).
parent(satrughna, sumitra).
% rule for father
father(Child, Dad):-
    male(Dad), parent(Child, Dad).
% rule for mother
mother(Child, Mom):-
    female(Mom), parent(Child, Mom).
% rule for brother
bother(Sibling, Bro):-
    male(Bro), father(Sibling, Father), father(Bro, Father), Bro \= Sibling,
    mother(Sibling, Mother), mother(Bro, Mother).


