media(X, L) :-
    sum_list(L, Y),
    length(L, Z),
    X = float(Y/Z).
