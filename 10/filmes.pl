filme([amnesia, suspense, nolan, 2000, 113]).
filme([babel, drama, inarritu, 2006, 142]).
filme([capote, drama, miller, 2005, 98]).
filme([casablanca, romance, curtiz, 1942, 102]).
filme([matrix, ficcao, wachowsk, 1999, 136]).
filme([rebecca, suspense, hitchcock, 1940, 130]).
filme([shrek, aventura, adamson, 2001, 90]).
filme([sinais, ficcao, shymalan, 2002, 106]).
filme([spartacus, acao, kubrik, 1960, 184]).
filme([superman, aventura, donner, 1978, 143]).
filme([titanic, romance, cameron, 1997, 194]).
filme([tubarao, suspense, spielberg, 1975, 124]).
filme([volver, drama, almodovar, 2006, 121]).

quem_dirigiu(N, X) :-
    filme([Nome, _, Diretor, _, _]),
    Nome = N,
    X = Diretor.

filmes_genero(G, X) :-
    filme([Nome, Genero, _, _, _]),
    Genero = G,
    X = Nome.

filmes_diretor(D, X) :-
    filme([Nome, _, Diretor, _, _]),
    Diretor = D,
    X = Nome.

ano_lancamento(N, X) :-
    filme([Nome, _, _, Ano, _]),
    Nome = N,
    X = Ano.

duracao_ate(T, X) :-
    filme([Nome, _, _, _, Dur]),
    Dur < T,
    X = Nome.

lancamento_range(I, F, X) :-
    filme([Nome, _, _, Ano, _]),
    Ano >= I,
    Ano =< F,
    X = Nome.

classicos(X) :-
    lancamento_range(0, 1980, X).

genero(G, X) :-
    filmes_genero(G, X).

consulta(X) :-
    classicos(X),
    genero(suspense, X).
