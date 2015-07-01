gerar(L) :-
    select(D1, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], X2),
    select(D2, X2, X3),
    select(D3, X3, X4),
    select(D4, X4, _),
    L = [D1, D2, D3, D4].

testar([D1, D2, D3, D4]) :-
    D1 > D3,
    D1 < D2,
    D4 is D2 + D3,
    1 is mod(D1, 2),
    D1 is D3 + 1,
    D2 is 7.

solucionar(L) :-
    gerar(L),
    testar(L).
