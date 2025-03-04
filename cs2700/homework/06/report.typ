
#import "@preview/cetz:0.3.2": canvas, draw, tree
// #set page(paper: "a5")
#set page(paper: "iso-b4")
#set text(font: "Noto Serif Armenian")

#text(
  size: 1.7em,
  fill: navy,
  stroke: navy,
  "The Back Door Criterion",
)

#text(
  size: 1.3em,
  fill: blue,
  stroke: blue,
)[
  by Carlos Rubio
]

#set text(font: "Libertinus Serif")

In order to understand the backdoor criterion (or admisible sets), let's review
the concept of $d$-separation.

Consider a directed acyclic graph that contains a path $p$ like the following:

#let data = ([$W_1$], ([$W_2$], ([$W_3$], [$W_4$])))

#align(
  center,
  canvas({
    import draw: *

    set-style(
      content: (padding: .2),
      fill: gray.lighten(95%),
      length: 10pt,
    )

    tree.tree(
      data,
      spread: 2.5,
      direction: "right",
      draw-node: (node, ..) => {
        circle((), radius: .35) //stroke: gray.lighten(90%))
        content((), text([#node.content]))
      },
      draw-edge: (from, to, ..) => {
        let (a, b) = (from + ".center", to + ".center")
        line((a, .3, b), (b, .3, a), mark: (end: ">"))
      },
      grow: 2,
    )
  }),
)

Define $S$ as any of set of nodes that _blocks_ the path $p$: meaning, *one of
the arrow emiting nodes of* $p$ *is in* $S$, or $S$ *_excludes_ at least one of
the collision nodes* of $p$ *and their descendant*. For $p$, any $S in
2^{W_1, W_2, W_3} = {{W_1}, {W_2},...{W_1, W_3},...}$ blocks $p$.

Another example: let $p$ be the following path.

#let data = (
  $W_2$,
  $W_1$,
  $W_3$,
)

#align(
  center,
  canvas({
    import draw: *

    set-style(
      content: (padding: .2),
      fill: gray.lighten(95%),
      length: 10pt,
      // stroke: black,
    )

    tree.tree(
      data,
      direction: "up",
      spread: 2.5,
      draw-node: (node, ..) => {
        circle((), radius: .35) //stroke: gray.lighten(90%))
        content((), text([#node.content]))
      },
      draw-edge: (from, to, ..) => {
        let (a, b) = (from + ".center", to + ".center")
        line((a, .3, b), (b, .3, a), mark: (start: ">"))
      },
      grow: 2,
    )
  }),
)

For $p$, $S = emptyset$ blocks $p$, as $p$ contains the collision node $W_2$.

Two things to note about this definition:

+ Note that an "arrow emiting node in a path" includes collider nodes that emit arrows out of the path as well as nodes that have descendants in the path. Therefore, *if a node is emiting an arrow there are only to possibilities:* *it has descendants in the path*, or *it's a collider of two other nodes.*

+ The reasoning behind the second part of the definition is that, as long as the path includes a collider, the propagation of the effect will be restricted. I like to think about this preposition as, given a collider in a path, such collider _implicitly blocks_ the path, and for purposes explained later, we will not include it.

#line(length: 100%)

Now, consider a causal model $G$, were $X, Y in G$ are considered the exposure
variable and the outcome variables, respectively. A set $S$ *adjusts the* $G$,
or *to be admissible for adjustment*, if

1. *None of its nodes are descendants of* $X$, and

2. *It blocks all the backdoor paths from* $Y$ *"to"* $X$. By backdoor, we mean all *paths that include nodes* $X$ *and* $Y$, and $X$ *has an arrow point to it*.

In practice, the nodes/variables in $S$ must be observable variables. If not,
it's impossible to condition on them in practise.

Note that the set $S$ must block *all* paths in order to be admissible. *If the
set doesn't block all paths* (which includes opening a path), *it is not an
admissible set.*

Consider the path $p$:

#let data = (
  [$W_1$],
  ([$W_2$], [$X$]),
  ([$W_3$], [$Y$]),
)

#align(
  center,
  canvas({
    import draw: *

    set-style(
      content: (padding: .2),
      fill: gray.lighten(95%),
      length: 10pt,
    )

    tree.tree(
      data,
      spread: 2,
      direction: "down",
      draw-node: (node, ..) => {
        circle((), radius: .35) //stroke: gray.lighten(90%))
        content((), text([#node.content]))
      },
      draw-edge: (from, to, ..) => {
        let (a, b) = (from + ".center", to + ".center")
        line((a, .3, b), (b, .3, a), mark: (end: ">"))
      },
      grow: 1.5,
    )
  }),
)

Note that $p = X arrow.l W_2 arrow.l W_1 arrow.r W_3 arrow Y$ is the only
backdoor path.

The sets $S$ that can be consider admissible for adjustment are

1. ${W_1}$,
2. ${W_2}$
3. ${W_3}$
4. ${W_1,W_2}$
5. ${W_1,W_3}$
6. ${W_2,W_3}$
7. ${W_1,W_2,W_3}$

While in theory all these sets are admisible, in practice the *best option is to
condition for either of the minimal sets.* Therefore, either of the first three
sets is admissible.

#line(length: 100%)

Now, let's consider Pearl's classic butterfly causal model. I reproduced it
using the causal graph simulator hosted in _dagitty.net_. I also include some of
the metadata in the screenshot in order to compare my arguments with the results
from the algorithm.

#figure(image("butterfly.png", width: 80%), caption: "No adjustments made.")

In this model, the backdoor baths are

1. $X arrow.l W_1 arrow.r Y$
2. $X arrow.l W_2 arrow.r W_1 arrow.r Y$
3. $X arrow.l W_1 arrow.l W_3 arrow.r Y$

Let's consider we might consider $S = {W_2}$ or $S = {W_3}$ for adjustment. This
sets only block 2 out of 3 backdoor paths. Then, we might consider the set
$S = {W_1}$ for adjustment, as it blocks all the foremention paths. But in doing
so it opens the path $p = X arrow.l W_2 arrow.r W_1 arrow.l W_3 arrow.r Y$ that
was being _implictly blocked by_ the collider $W_1$,

#figure(
  image(
    "butterfly_wrong.png",
    width: 80%,
  ),
  caption: $W_1$ + " is insufficient.",
)

The solution is blocking $p$ without having to exclude $W_1$ from $S$. We can
do this by including either $W_2$ or $W_3$.

#figure(
  image(
    "butterfly_right.png",
    width: 80%,
  ),
  caption: $S = {W_1, W_2}$ + " is admissible.",
)

#line(length: 100%)

