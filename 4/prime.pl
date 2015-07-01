is_prime(A) :-
    A \= 1,
    Ax is A - 1,
    not_divide(A, Ax).

not_divide(A, B) :-
    once(
        (
        jB \= 1,
        Resto is mod(A, B),
        Resto \= 0,
        Bx is B - 1,
        not_divide(A, Bx)
        );
        B is 1
    ).
