% Romanian Map: Road Distances (Edges)

edge(arad, zerind, 75).
edge(zerind, arad, 75).

edge(arad, timisoara, 118).
edge(timisoara, arad, 118).

edge(zerind, oradea, 71).
edge(oradea, zerind, 71).

edge(oradea, sibiu, 151).
edge(sibiu, oradea, 151).

edge(arad, sibiu, 140).
edge(sibiu, arad, 140).

edge(timisoara, lugoj, 111).
edge(lugoj, timisoara, 111).

edge(lugoj, mehadia, 70).
edge(mehadia, lugoj, 70).

edge(mehadia, drobeta, 75).
edge(drobeta, mehadia, 75).

edge(drobeta, craiova, 120).
edge(craiova, drobeta, 120).

edge(craiova, rimnicu_vilcea, 146).
edge(rimnicu_vilcea, craiova, 146).

edge(craiova, pitesti, 138).
edge(pitesti, craiova, 138).

edge(sibiu, rimnicu_vilcea, 80).
edge(rimnicu_vilcea, sibiu, 80).

edge(sibiu, fagaras, 99).
edge(fagaras, sibiu, 99).

edge(rimnicu_vilcea, pitesti, 97).
edge(pitesti, rimnicu_vilcea, 97).

edge(fagaras, bucharest, 211).
edge(bucharest, fagaras, 211).

edge(pitesti, bucharest, 101).
edge(bucharest, pitesti, 101).

edge(giurgiu, bucharest, 90).
edge(bucharest, giurgiu, 90).

edge(urziceni, bucharest, 85).
edge(bucharest, urziceni, 85).

edge(urziceni, hirsova, 98).
edge(hirsova, urziceni, 98).

edge(hirsova, eforie, 86).
edge(eforie, hirsova, 86).

edge(urziceni, vaslui, 142).
edge(vaslui, urziceni, 142).

edge(vaslui, iasi, 92).
edge(iasi, vaslui, 92).

edge(iasi, neamt, 87).
edge(neamt, iasi, 87).

% Straight-Line Distance to Bucharest (Heuristic h(n))
h(arad, 366).
h(bucharest, 0).
h(craiova, 160).
h(drobeta, 242).
h(eforie, 161).
h(fagaras, 176).
h(giurgiu, 77).
h(hirsova, 151).
h(iasi, 226).
h(lugoj, 244).
h(mehadia, 241).
h(neamt, 234).
h(oradea, 380).
h(pitesti, 100).
h(rimnicu_vilcea, 193).
h(sibiu, 253).
h(timisoara, 329).
h(urziceni, 80).
h(vaslui, 199).
h(zerind, 374).