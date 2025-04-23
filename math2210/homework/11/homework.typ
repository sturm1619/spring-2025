// NOTE: Imports and templates
#import emoji: face
#set enum(numbering: "(a)")
#show enum: set text(weight: "bold")
#set line(length: 100%)

// NOTE: Document
//          Title
#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 9")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

// #text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "March 8th, 2025")
#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "March 8th, 2025")

#pagebreak()

#set rect(stroke: blue)

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

The solution is apparent after plugging in $x(u, v)$ and $y(u, v)$.

The new image of the region after the transformation would be
$x in [0,1], y in [0, 1+x^2]$.

#line()
#pagebreak()

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
  #r _1(t) = t(4,3) arrow.r.l.double.long 3 x - 4y = 0 \
  #r _2(t) = t(-2,1) arrow.r.l.double.long x + 2 y = 0 \
  #r _3(t) = t(-2,1) + (2,4) arrow.r.l.double.long x + 2y = 10 \
  #r _4(t) = t(4,3) + (-2,1) arrow.r.l.double.long 3 x - 4y = - 10
$

If we let $u = 3x - 4y$ and $v = x + 2y$, then $u in [0,10]$ and $v in [0,10]$.
Therefore, the change of basis matrix from $x y$ to $u v$ is given by the
following system of equations:

$ mat(3 x - 4 y; x+2y) = mat(u;v) $

which yields

$ mat(x;y) = mat((2u + v)/10; (4u+3v)/10) $

Here, I got puzzled out by the difference between my results and the ones in
the worksheet. I thought that it was a problem with the determinant, but after
speaking with you (and have that mythical conversation), it became obvious that,
while these are different transformations, this is also a valid one.


#figure(
  image("transformation.png"),
  caption: [How solving without acccounting
    for the right determinant affects the final transformation.],
)

#line()
#pagebreak()

== Problem 4

Evaluate $integral integral_R (x^2 - x y + y^2) d A$, where $R$ is the region
bounded by the ellipse $x^2 - x y + y^2 = 2$ by using the transformation $x =
sqrt(2) u - sqrt(2/3) v, y = sqrt(2)u + sqrt(2/3)v$.

=== Answer

Let $J$ be the Jacobian for the given transformation. Then

$
  J
  &= mat(delim: "|",
  (diff x)/(diff u), (diff x)/(diff v);
  (diff x)/(diff u), (diff x)/(diff v)) \
  &= mat(delim: "|",
  sqrt(2), - sqrt(2/3);
  sqrt(2), sqrt(2/3)
) \
  &= 2 / sqrt(3) + 2 / sqrt(3) \
  &= 4 / sqrt(3)
$

From the given transformation, we know that

$
  x^2 - x y + y^2
  &= (sqrt(2)u - sqrt(2/3)v)^2 - (sqrt(2)u - sqrt(2/3)v)(sqrt(2)u + sqrt(2/3)v)
  + (sqrt(2)u + sqrt(2/3)v)^2 \
  &= (2u^2 - (4u v) / sqrt(3) + 2 / 3v^2) - (2u^2 - 2 / 3v^2)
  + (2u^2 + (4u v) / sqrt(3) + 2 / 3v^2) \
  &= (4u^2 + 4 / 3v^2) - (2u^2 - 2 / 3v^2) \
  &= 4u^2 + 4 / 3v^2 - 2u^2 + 2 / 3v^2 \
  &= 2u^2 + 2v^2 \
$

Note that $2u^2 + 2v^2 <= 2 arrow.r.l.double.long u^2 + v^2 <= 1$. Therefore,
$R = {(u,v) in RR^2 | u^2 + v^2 <= 1}$ describes a circle with radius length
$1$. Therefore, $u in [-1,1]$ and $|v| in [0,sqrt(1 - u^2)]$. But given that
$R$ is a circle, it makes more sense to transform from $u v$-coordinates to
polar. Define that transformation such that

$
  u = r cos theta, quad v = r sin theta,
  quad u^2 + v^2 = r^2 arrow.r.l.double.long r in [0,1],
  quad J = r
$

Therefore,

$
  integral integral_R (x^2 - x y + y^2) d A
  &= 2 integral_(-1)^1 integral_(-sqrt(1-u^2))^(sqrt(1-u^2))
  u^2 + v^2 (4 / sqrt(3) d v d u) \
  &= 8 / sqrt(3) integral_(0)^(2pi) integral_0^1 r^2 (r d r d theta) \
  &= 8 / sqrt(3) integral_(0)^(2pi) integral_0^1 r^3 d r d theta \
  &= 8 / sqrt(3) integral_(0)^(2pi) r^4 / 4|_0^1 d theta \
  &= 8 / sqrt(3) integral_(0)^(2pi) 1 / 4 d theta \
  &= 2 / sqrt(3) (2pi) \
  &= (4pi) / sqrt(3)
$


#line()

== Problem 5

Use an appropiate change of variables to evaluate the integral

$ integral integral_R (x+y)e^(x^2-y^2) d A $

where $R$ is the rectangle enclosed by the lines $x-y=0$, $x-y=2$, $x+y=0$ and
$x+y=3$.

=== Answer

Let $u = x - y$, $v = x + y$, and $J$ be the Jacobian of the transformation.
Then $u in [0,2]$, $v in [0,3]$. Note that the transformation matrix is given
by

$
  mat(u;v) &= mat(x -y;x + y) \
  mat(u;v) &= mat(1, -1; 1,1)mat(x;y) \
  mat(1/2, 1/2; -1/2,1/2) mat(u;v) &= mat(x;y) \
  mat((u+v)/2; (v-u)/2) &= mat(x;y) \
$

Note that $mat(1/2, 1/2; -1/2,1/2)$ is also the Jacobian matrix of our function,
and its determinant $J$ is $1/2$. If we apply this transformation to the
integral, we get:

$
  integral integral_R (x+y)e^(x^2-y^2) d A
  &= 1 / 2 integral_0^3 integral_0^2 v e^(u v) d u d v \
$

Let $x = u v arrow.r.l.double.long d u = v d x$, and $y = 2v
arrow.r.l.double.long d y = 2 d v$. Then:

$
  &= 1 / 2 integral_0^3 integral_0^(2v) e^x d x d v \
  &= 1 / 2 integral_0^3 e^(2v) - 1 d v\
  &= 1 / 2 integral_0^3 e^(2v) d v - 1 / 2 integral_0^3 d v\
  &= 1 / 4 integral_0^(6) e^y d y - 3 / 2 \
  &= e^y / 4|_0^(6) - 3 / 2 \
  &= e^6 / 4 - 1 / 4 - 3 / 2 \
  &= #rect(stroke: red)[$ (e^6 - 7) / 4 $] \
$

