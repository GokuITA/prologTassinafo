inverte(L1, L2) :-
    [H|T] = L1,
    inverte(T, X),
    append(X, [H], L2).

inverte([A], L2) :-
    L2 = [A].
