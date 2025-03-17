// NOTE: Imports and templates
#import emoji: face
#set enum(numbering: "(a)")
#show enum: set text(weight: "bold")
#set line(length: 100%)

// NOTE: Document
//          Title
#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 9")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "March 8th, 2025")

#pagebreak()

// NOTE: Body

= Change of Variables in Multiple Integrals

== Problem 1

Find the Jacobian of the following transformations.

+ $x = u^2 + u v, quad y = u v^2$

+ $x = u + v w, quad y = v + w u, quad z = w + u v$

=== Answer

+
$
  mat(delim: "|", (diff x)/(diff u), (diff x)/(diff v);
        (diff y)/(diff u), (diff y)/(diff v))
  = mat(delim: "|", 2u + v, u;
        v^2, 2 u v)
  = (2u+v)(2u v) - u v^2 \
  = 4u^2 v + 2u v^2 - u v^2
  = 4u^2 v + u v^2
$

#set enum(start: 2)

+

$
  mat(delim: "|",
    (diff x)/(diff u), (diff x)/(diff v), (diff x)/(diff w);
    (diff y)/(diff u), (diff y)/(diff v), (diff y)/(diff w);
    (diff z)/(diff u), (diff z)/(diff v), (diff z)/(diff w)
)
  = mat(delim: "|", 1, w, v; w, 1, u; v, u, 1)
  = (1-u^2) - w(w - u v) + v(w u - v) \
  = (1 - u^2) - w^2 + u w v + w u v - v^2 \
  = 1 - u^2 - w^2 + 2u w v - v^2 \
  = 1 + 2u w v - (u^2 + v^2 + w^2)
$

#line()

== Problem 2

Find the image of the square bounded by the lines $u=0, u=1,
v=0, v=1$ under the transformations $x=v, y=u(1+v^2)$.

=== Answer

The solution is aparent after plugging in $x(u, v)$ and $y(u, v)$.

The new image of the region after the transformation would be
$x in [0,1], y in [0, 1+x^2]$.

== Problem 3

Find the equations for a transformation $T$ that maps a rectangular region $S$
in the $u v$-plane onto the region $R$ consisting of the parallelogram with
verties $(0,0), (4,3), (2,4)$ and $(-2,1)$.

=== Answer

#let r = math.bold("r")

Let $S$ be the region in $u v$-coordinates defined as $u in [0, 1],
v in [0,1]$. Note that, as $R$ is a parallelogram, we can express each of its
vertices as the equation of a line.

$
  #r _1(t): "The line passing through" (0,0)" and "(4,3)
  \ arrow.r.double.long #r _1(t) = t(4,3) \
  #r _2(t): "The line passing through" (-2,1)" and "(0,0)
  \ arrow.r.double.long #r _2(t) = t(-2,1) \
  #r _3(t): "The line passing through" (2,4)" and "(4,3)
  \ arrow.r.double.long #r _3(t) = t(2-4,4-3) + (2,4) = t(-2,1) + (2,4) \
  #r _4(t): "The line passing through" (-2,1)" and "(2,4) \
  arrow.r.double.long #r _4(t) = t(2-(-2), 4-1) + (-2,1) = t(4,3) + (-2,1) \
$

We can deparametrize the given equations:
$
  #r _1(t) = t(4,3) arrow.r.l.double.long 3 / 4 x = y \
  #r _2(t) = t(-2,1) arrow.r.l.double.long -1 / 2 x = y \
  #r _3(t) = t(-2,1) + (2,4) arrow.r.l.double.long -1 / 2 x = y \
  #r _4(t) = t(4,3) + (-2,1) arrow.r.l.double.long 3 / 4 x + 5 / 2 = y
$

