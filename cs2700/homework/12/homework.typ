#set par(leading: 1em)
#show heading.where(level: 1): set text(size: 20pt, fill: navy)

= Report on Mechanism and Interaction

#text(weight: "bold")[
  by Carlos Rubio

  #datetime.today().display("[month repr:long] [day padding:none]th, [year]")
]
#line(length: 100%, stroke: 0.5pt)

Mediation and mechanism are two different but related concepts in VanderWeele's
causal model. They differ in their nature: mediation is statistical and
probabilistic, mechanisms are more general and deterministic. Moreover, the first
one doesn't need to exists at all, but if it does, it supposes that the latter
exists. For every event of a sample space, there is a mechanism.

== Mechanism

Mechanism refers to the idea that, behind very causal process, there is an
explanation, whose complete description is outside of the scope of statistics
and probability, that enforces the causal effects. For example: statistics and
causal inference can demonstrate that lack of Vitamin A leads to vision
impairment, but the specifics of how the Vitamin A interacts with the organism
leading to the vision deficit are obscure. These specifics might play a more
crucial role on how to model the stochastic relationship betweeen the exposure,
the outcome and the covariates, shedding light about interactions and conditional
dependence relationships.


== Mediation

Mathematically speaking, in a causal model, a covariate $M$ is said to
*mediate* between an exposure/treatment $X$ and a respose/outcome $Y$ *if and
only if there is an effect* from $X$ on $Y$ *through* $M$. It is said that *M*
is a *mediator from* $X$ *to* $Y$. I like to think about this using an aqueduct
analogy:

Imagine that, somewhere in the aqueduct system of the Ancient Rome, one of the
pipes splits into two. The left split joins another pipe, and that union
eventually "joins" back the right split, and then finally ends in some pit. If
you could *stop the water flow from going into the left split*, and then you
*start measuring how much the income in water changes at the pit when closing
and opening right split before it joins the left split again*, you would see the
*pure direct effect*. Back into VanderWeele's model, this is the same as the
effect caused only by the exposure, without the mediator.

If you would instead *let the water go through the left split* and perform the
same experiment of opening and closing the right split before joining the left
one, you would see the *total direct effect*.

Now, here is the funny part: let it be that instead you would *stop the right
split before it joins the left union split right before the pit*, and then,
instead you start *measuring the differences whenever you stop the water flow
from going to the left split*, you would get the *pure indirect effect*.

If instead, you *let it the right split join the left split again*, but keep
playing with *the splitting*, you get the *total indirect effect*.

