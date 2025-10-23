:- [romania_map].

run_bfs(Start, Path, Cost) :-
    breadth_traverse([[Start]], bucharest, [], Path, Cost).

breadth_traverse([[Goal | Temp] | _], Goal, _, Path, Cost) :-
    reverse([Goal | Temp], Path),
    total_distance(Path, Cost).

breadth_traverse([[Current | Tail] | Rest], Goal, Visited, Path, Cost) :-
    Current \= Goal,
    findall([Next, Current | Tail],
            (edge(Current, Next, _), \+ member(Next, Visited)),
            Children),
    append(Rest, Children, NewQueue),
    breadth_traverse(NewQueue, Goal, [Current | Visited], Path, Cost).

breadth_traverse(_, _, _, [], 0).

total_distance([_], 0).
total_distance([A, B | R], D) :-
    edge(A, B, X),
    total_distance([B | R], Y),
    D is X + Y.
