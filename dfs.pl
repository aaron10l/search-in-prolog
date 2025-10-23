:- [romania_map].

run_dfs(Start, Path, Cost) :-
    depth_traverse(Start, bucharest, [Start], Path, Cost).

depth_traverse(Goal, Goal, Visited, Path, 0) :-
    reverse(Visited, Path).

depth_traverse(Current, Goal, Visited, Path, Cost) :-
    Current \= Goal,
    edge(Current, Next, Step),
    \+ member(Next, Visited),
    depth_traverse(Next, Goal, [Next | Visited], Path, Remaining),
    Cost is Step + Remaining.
