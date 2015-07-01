maximo(M, L) :-
    [H|T] = L,
    maximo(X, T),
    (
        H > X ->
        M = H;
        M = X
    ).

maximo(M, [A]) :-
    M = A.
