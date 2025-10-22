% loading romanian map data
:- [romania_map].


% A* SEARCH IMPLEMENTAION
/*
  Finds the shortest path from Start to Bucharest using A* search. Path is a list of cities from Start to Bucharest, Cost is the total path cost (sum of distances).
*/
a_star(Start, Path, Cost) :-
    % Initialize the start node with g=0 and h(Start)
    h(Start, H),
    StartNode = node(Start, [Start], 0, H),
    % Begin the search with Fringe containing only the start node
    a_star_search([StartNode], [], Path, Cost).

/*
  Main recursive search procedure
  Fringe: list of nodes to expand, sorted by f(n) = g + h
  Visited: list of cities already expanded
  Path: result path to goal
  Cost: total cost of the path
*/
% Goal test: node at front of fringe is Bucharest
a_star_search(Fringe, _, Path, Cost) :-
    get_best_node(Fringe, node(City, Path, G, _), _Rest),
    City = bucharest,
    Cost is G.

% Recursive expansion
a_star_search(Fringe, Visited, Path, Cost) :-
    % select node with lowest f(n)
    get_best_node(Fringe, node(City, CurPath, G, _), RestFringe),
    % aboid revisiting cities
    \+ member(City, Visited),
    % expand all children
    findall(
        node(Child, NewPath, NewG, HChild),
        (
            edge(City, Child, D),
            \+ member(Child, CurPath),   % avoid cycles
            NewG is G + D,               % update cost-so-far
            h(Child, HChild),            % heuristic for A*
            append(CurPath, [Child], NewPath)
        ),
        Children
    ),
    % append children to fringe and sort by f(n) = g + h
    append(RestFringe, Children, NewFringeUnsorted),
    sort_by_fn(NewFringeUnsorted, NewFringeSorted),
    % Recurse with updated fringe and visited list
    a_star_search(NewFringeSorted, [City|Visited], Path, Cost).

% case where fringe empty, no path found
a_star_search([], _, [], 0).


% HELPER PREDICATES
% Retrieves the first node from the fringe (node with lowest f(n)) and returns the remaining fringe in Rest.
get_best_node([Node|Rest], Node, Rest).


% Sorts list of nodes in nondecreasing order of f(n) = g + h
sort_by_fn(Nodes, Sorted) :-
    map_list_to_pairs(fn_key, Nodes, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, Sorted).

% Compute f(n) = g + h for sorting
fn_key(node(_, _, G, H), F) :-
    F is G + H.
