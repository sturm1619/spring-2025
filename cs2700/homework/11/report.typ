#set par(leading: 1em)
#show heading.where(level: 1): set text(size: 20pt, fill: navy)

= Report on Interaction

#text(weight: "bold")[
  by Carlos Rubio

  #datetime.today().display("[month repr:long] [day padding:none]th, [year]")
]
#line(length: 100%, stroke: 0.5pt)

"The effect is greater (or less) that the sum of the parts" is a great way to
explain intervention. Intervention refers to the phenomena where the effect of
one treatment/exposure on an outcome depends on the level of a third variable,
such that the combined effect of both variables is the sum or product of their
individual effects.

Imagine a parametrization for a response variable given by $y(x, w)$ such that:

$ y(x, w) = a_1 + a_2 x + a_3 w + a_4 (x w) + epsilon $

where $x$ is the value of the treatment $x$ and $w$ is the value for a third
variable $W$. For example, we are testing the effect $X$ of a new hypertension
drug on a population. As we understand, the levels of blood presure $Y$ depend
on the age of the person. Now, it happens that the drug has a negative
interaction with the age $W$, such that the older the person receiving the
drug is, the greater the effect of the drug is in reducing the blood pressure
levels as given by:

$ y(x, w) = 75 - 5 x + 0.92 w - .70 x w + epsilon $

#figure(
  image("graph.png", width: 65%),
  caption: [The slope of $y$ increases with
    respect to $x$ and $w$.],
)

Understanding the possibility of interaction help us understand certain that
the assumption of certain models is not enough to account for the total direct
effect of a variable over the response.
