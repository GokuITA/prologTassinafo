branca(b).
preta(p).
vazio(v).
ficha(b).
ficha(p).

solucao([b, p, p, b, v], _, Y) :-
    Y = [b, p, p, b, v].
solucao([v, b, p, p, b], _, Y) :-
    Y = [v, b, p, p, b].

solucao(L, S, Y) :-
    write(L),
    write('\n'),
    not_member(L, S),
    append([L], S, Ss),
    swap_vazio(L, X),
    not_member(X, Ss),
    solucao(X, Ss, Y),
    !.


not_member(A, []) :-
    A \= [].
not_member(A, B) :-
    [H|T] = B,
    A \= H,
    not_member(A, T).

swap_vazio([A, v|R], [v, A|R]) :-
    ficha(A).
swap_vazio([v, A|R], [A, v|R]) :-
    ficha(A).
swap_vazio([A, B, v|R], [v, B, A|R]) :-
    ficha(A),
    ficha(B).
swap_vazio([v, B, A|R], [A, B, v|R]) :-
    ficha(A),
    ficha(B).
swap_vazio(L, X) :-
    L \= [],
    [H|T] = L,
    swap_vazio(T, Y),
    append([H], Y, X).
