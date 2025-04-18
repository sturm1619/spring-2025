= Teatrise on Pearl's Causal Model

#let A = math.bold("A")
#let perm(unordered_set) = math.hat(unordered_set)

== Notation for Combinations

+ Let $#A$ be set.

+ Let a sequence $#perm(A) in #A ^n$ be an *$n$-permutation* of $#A$.

+ Let a sequence $#perm(A) in #A ^(|#A|)$ be a *total permutation* of $#A$.

== Notation for Graphs

#let G = math.bold("G")
#let V = math.bold("V")
#let E = math.bold("E")

+ Let $#G: (#V, #E)$ be a directed acyclic graph representing a causal model.

+ Let $#V _#G$ be the set of all vertices/nodes/variables in the model.

+ Let $#E _#G subset.eq #V^2 _#G$ be the set of all ordaired pairs representing
  edges/arcs/relationships in the model.

+ $forall (W_i, W_j) in #V^2 _#G$, $W_i$ is the _exposure variable_, and $W_j$
  be the _response variable_.

  === Notation for relationships/edges

+ $W_i arrow.bar W_j arrow.r.l.double.long (W_i, W_j) in #E$.

+ _Directionality principle of directed acyclic graphs_: $W_i arrow.bar W_j != W_j
  arrow.bar W_i$.

+ Commutativity of edges: $W_i arrow.l.bar W_j arrow.r.l.double.long W_j
  arrow.bar W_i$.

  === Paths

#let P = math.bold("P")

+ Let $#P _(W_i, W_j) = (#V _#P, #E _#P)$ be a path in $#G$ if:
  + $#V _#P subset.eq #V _#G$,
  + $#E _#P subset.eq #E _#G$,
  + $forall W in #V _#P, exists e in #E _#P$ such that $W in e$.
  + $exists X in #V _#P, exists Y in #V _#P$ such that $W in e$.
  + $forall W in #V _#P, exists e in #E _#P$ such that $W in e$.
