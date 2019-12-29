domains

s = symbol
i = integer

predicates

person(s)
product(s)
likes(s, s)
nondeterm for_sale(s)
nondeterm can_buy(s, s)

clauses

person(sasha).
person(masha).
person(oleg).

product(marker).
product(bentley).
product(lastic).
product(dom).

for_sale(dom).
for_sale(marker).

likes(sasha, dom).
likes(masha, lastic).
likes(sasha, bentley).
likes(oleg, marker).

can_buy(X, Y) :- for_sale(Y), likes(X, Y).


goal
can_buy(Who, What).
