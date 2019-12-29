domains

s = symbol
i = integer

predicates
nondeterm male(s)
female(s)

clothes(s)

nondeterm formale(s)
nondeterm forfemale(s)
likes(s, s)
nondeterm malewearit(s, s)

clauses

male(sasha).
male(anton).
male(nikita).
female(masha).
female(anya).
female(ksusha).

clothes(mayka).
clothes(tolstovka).
clothes(kurtka).
clothes(dzhinsy).
clothes(krossovki).
clothes(kepka).

formale(mayka).
formale(kepka).
forfemale(kurtka).


likes(sasha, mayka).
likes(anton, kepka).

malewearit(X, Y) :- male(X), formale(Y), likes(X, Y).



goal
malewearit(Who, What).
