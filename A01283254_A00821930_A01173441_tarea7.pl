% Tarea 7: Problemas con Soluciones en Lenguaje Prolog
% ----------------------------------------------------
% Equipo #2:
% Guillermo Andrés García Vázquez A01283254
% Oscar Antonio Hinojosa Salum    A00821930
% Mauricio Martínez Toledo        A01173441
% ----------------------------------------------------

% ================ PROBLEMA #1: ================
% Implementar el predicado enesimo en Prolog encuentra el n-ésimo elemento de una 
% lista. El primer elemento de la lista es el número 1. 

enesimo(1,[H|_], H) :-
    !.
enesimo(N, [_|T], H) :-
    N > 0, 
    N1 is N-1,
    enesimo(N1,T,H).


% ================ PROBLEMA #2: ================
% Implementar  el  predicado  rango  en  Prolog  que  obtenga  una  lista  incremental  de 
% números enteros entre dos valores pasados como argumentos. Asumir que el segundo 
% argumento es un número mayor o igual al primero. 

rango(X,X,[X]) :- !.
rango(X,Y,[X|Xs]) :- %Xs is rest of the list(tails)
    X =< Y,
    Z is X+1,
    rango(Z,Y,Xs).


% ================ PROBLEMA #3: ================
% Implementar  el  predicado  cartesiano  en  Prolog  que  obtenga  una  lista  de  pares  de 
% elementos  construida  como  el  producto  cartesiano  de  dos  conjuntos  representados como listas. 

cartesiano([],_,[]).
cartesiano([H1|T1],L2,R):- aux(H1,L2,R1),cartesiano(T1,L2,R2),append(R1,R2,R).

aux(X,[],[]).
aux(X,[H|T],[[X,H]|R]):- aux(X,T,R).

% ================ PROBLEMA #4: ================
% Implementar el predicado cuenta_profundo en Prolog que cuente las veces que 
% aparece un elemento particular dentro de una lista imbricada. 



% ================ PROBLEMA #5: ================
% Implementar el predicado lista_unicos en Prolog que obtenga una lista con los 
% elementos que no aparecen repetidos dentro de una lista imbricada. 




% ================ PROBLEMA #6: ================
% Implementar el predicado mayores en Prolog que regrese una lista con los 
% elementos mayores que un valor dado en un árbol binario descrito con la función: 



% ================ PROBLEMA #7: ================
% Implementar el predicado siembra en Prolog que a partir de una lista de 
% números cree un árbol binario de búsqueda descrito con la función:  



% ================ PRUEBAS: ================
