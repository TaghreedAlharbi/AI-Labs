% Male
male(omar).
male(ali).
male(hassan).
male(youssef).

% Female
female(sara).
female(aisha).
female(fatimah).
female(lina).
female(maha).

% Parents
parent(sara, ali).
parent(omar, ali).

parent(aisha, hassan).
parent(ali, hassan).

parent(aisha, fatimah).
parent(ali, fatimah).

parent(aisha, lina).
parent(ali, lina).

parent(hassan, youssef).
parent(hassan, maha).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
