
% Automata 
% Acepta: Aduial, Aglarond, Aha, Ai, Aina


transicion(inicial, 'A', q1).

% Aduial
transicion(q1, 'd', q2).
transicion(q2, 'u', q6).
transicion(q6, 'i', q7).
transicion(q7, 'a', q8).
transicion(q8, 'l', final).

% Aglarond
transicion(q1, 'g', q3).
transicion(q3, 'l', q10).
transicion(q10, 'a', q11).
transicion(q11, 'r', q12).
transicion(q12, 'o', q13).
transicion(q13, 'n', q14).
transicion(q14, 'd', final).

% Aha
transicion(q1, 'h', q4).
transicion(q4, 'a', final).

% Ai
transicion(q1, 'i',q5).

% Aina
transicion(q5, 'n', q18).
transicion(q18, 'a', final).

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
