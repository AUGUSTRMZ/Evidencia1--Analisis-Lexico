
% Automata 
% Acepta: Aduial, Aglarond, Aha, Ai, Aina


transicion(inicial, 'A', q1).

% Aduial
transicion(q1, 'd', q2).
transicion(q2, 'u', q3).
transicion(q3, 'i', q4).
transicion(q4, 'a', q5).
transicion(q5, 'l', final).

% Aglarond
transicion(q1, 'g', q6).
transicion(q6, 'l', q7).
transicion(q7, 'a', q8).
transicion(q8, 'r', q9).
transicion(q9, 'o', q10).
transicion(q10, 'n', q11).
transicion(q11, 'd', final).

% Aha
transicion(q1, 'h', q20).
transicion(q20, 'a', final).

% Ai
transicion(q1, 'i', q12).
transicion(q12, 'a', final).

% Aina
transicion(q12, 'n', q13).
transicion(q13, 'a', final).

% estados de aceptacion

estado_final(q5). % estado de aceptacion solamente de 'Ai'
estado_final(final).


% caso_base: si ya no hay letras y esta en un estado final lo acepta
recorrer(Estado, []) :-
    estado_final(Estado).

% caso_recursivo: consume letra y continua el recorrido
recorrer(EstadoActual, [Letra | Resto]) :-
    transicion(EstadoActual, Letra, EstadoSiguiente),
    recorrer(EstadoSiguiente, Resto).

% acepta/1: inicia el recorrido desde el estado inicial
acepta(Palabra) :-
    recorrer(inicial, Palabra).
