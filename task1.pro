domains

s = symbol

predicates

nondeterm ancestor(s,s)
nondeterm child(s,s)
nondeterm parent(s,s)
female(s)
male(s)
mother(s,s)
father(s,s)
nondeterm brother(s, s)
nondeterm grandfather(s, s)


clauses

male(dima).
male(alex).
male(sasha).

female(nastya).
female(masha).

parent(dima, sasha).
parent(alex, dima).
parent(dima, nastya).
parent(dima, masha).

child(X, Y) :- parent(Y, X).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X).
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(X).
goal
grandfather(alex, sasha).
