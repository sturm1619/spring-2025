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

= Double Integrals over Rectangles

== Problem 1

Evaluate the double integral
$ integral integral_R (4 - 2y) d A,quad R = [0,1] times [0,1] $

by first identifying it as the volume of a solid.

=== Answer

Student note: _To be honest, I super lost with this one #face.sad. It wasn't hard
to understand that we are integrating into a three dimensional body, and that one
of the faces would be the area under the segment of the hypothenuse of a right
triangle. But I couldn't conclude it be a trapezoidal prism. More over, I don't
think I was ready to say trapezoidal prism._

But once the body is given, the formula is clear. Note that, if we project
this body into th $y z$ plane, we get a trapezoid. For such trapezoid, let
$a$ and $b$ be the length of the sides that are parallel, and $h$ be the height
or distance between those sides. Then $(a+b)/2 dot h$ is the area for this shape.
We can get the magnitude of the volume of the original body by scaling by the
depth $d$ of the original, yielding the formula $(a+b)/2 h d$.

Since we are integrating over $R = [x_0,x_1] times [y_0,y_1]$, let $x_0 = 0$ and
$x_1 = 1$ correspond to the endpoints in the $x$-axis of our shape. Similar for
$y_0 = 0$, $y_1 = 1$. let this segment of the $x y$ plane correspond to the
depth and height of our prism: $h = x_1 - x_0 = 1, d = y_1 - y_0 = 1$. Then, the
lengths $a$ and $b$ are given by our function $f(y) = 4 - 2 y$ evaluated at
$y_0$ and $y_1$ respectively.

$ (a+b) / 2 h d = (4 - 0 + 4 - 2) / 2 (1)(1) = 3 $

#line()
#pagebreak()

== Problem 2

Calculate the double integral

$ integral integral_R (y + x y^(-2)) d A, quad R = { (x,y) | 0 <= x <= 2, 1 <= y <= 2} $

=== Answer

Note that we can rewrite the given integral as

$ integral_0^2 integral_1^2 (y + x y^(-2)) d y d x $

#line(stroke: .5pt)

$
  integral_1^2 y + x y^(-2) d y
  &= integral_1^2 y d y + integral_1^2 x y^(-2) d y \
  &= y^2 / 2 |_1^2 + x integral_1^2 y^(-2) d y \
  &= y^2 / 2 |_1^2 - x y^(-1) |^2_1 \
  &= (4 - 1) / 2 - x / (2 - 1) \
  &= 3 / 2 - x \
$

#line(stroke: .5pt)

$
  integral_0^2 3 / 2 - x d x
  &= 3 / 2integral_0^2 d x - integral_0^2 x d x \
  &= 3 / 2 x|_0^2 - x^2 / 2 |_0^2 \
  &= 3 / 2 (2-0) - (2^2 - 0) / 2 \
  &= 3 - 2 \
  &= 1 \
$

#pagebreak()
== Problem 3

Calculate the interated integrals:

+ $ integral_0^(pi / 6) integral_0^(pi / 2) (sin x + sin y) d y d x $

+ $ integral_1^3 integral_1^5 (ln y) / (x y) d y d x $

+ $ integral_0^1 integral_0^1 x y sqrt(x^2 + y^2) d y d x $

=== Answer

+ $
    integral_0^(pi / 6) integral_0^(pi / 2) (sin x + sin y) d y d x
    &= integral_0^(pi / 6) (integral_0^(pi / 2) (sin x + sin y) d y) d x \
    &= integral_0^(pi / 6) (sin x integral_0^(pi / 2) d y + integral_0^(pi / 2) sin y d y) d x \
    &= integral_0^(pi / 6) ( y|_0^(pi / 2) sin x - cos y|_0^(pi / 2) ) d x \
    &= integral_0^(pi / 6) (pi / 2 sin x - (cos pi / 2 - cos 0)) d x \
    &= integral_0^(pi / 6) (pi / 2 sin x - (0 - 1)) d x \
    &= integral_0^(pi / 6) pi / 2 sin x + 1 d x \
    &= pi / 2 integral_0^(pi / 6) sin x d x + integral_0^(pi / 6) d x \
    &= - pi / 2 cos x|_0^(pi / 6) + x|^(pi / 6)_0 \
    &= - pi / 2 (cos pi / 6 - cos 0) + pi / 6 \
    &= - pi / 2 (sqrt(3) / 2 - 1) + pi / 6 \
    &= #$ pi / 2 (1 - sqrt(3) / 2 + pi / 3) $]
  $

+ $
    integral_1^3 integral_1^5 (ln y) / (x y) d y d x
    &= integral_1^3 (1 / x integral_1^5 (ln y) / y d y) d x \
    &= integral_1^3 (1 / x integral_1^5 (ln y) (d y) / y) d x \
    &= integral_1^3 (1 / x integral_0^(ln 5) u d u) d x \
    &= integral_1^3 (1 / (2x) u^2|_0^(ln 5)) d x \
    &= integral_1^3 (1 / (2x) (ln^2 5 - 0)) d x \
    &= integral_1^3 (ln^2 5) / x d x \
    &= (ln^2 5) / 2 integral_1^3 1 / x d x \
    &= (ln^2 5) / 2 ln |x| |_1^3 \
    &= (ln^2 5) / 2 (ln 3 - ln 1) \
    &= #$ (ln^2 5 ln 3) / 2 $] \
  $

+ #text(weight: "regular")[Let $u = x^2+y^2$ and $v = y^2 + 1$. Then] $
    integral_0^1 integral_0^1 x y sqrt(x^2 + y^2) d x d y
    &= integral_0^1 (integral_0^1 x y sqrt(x^2 + y^2) d x) d y \
    &= integral_0^1 (y integral_0^1 sqrt(x^2 + y^2) x d x) d y \
    &= integral_0^1 (y / 2 integral_(y^2)^(1+y^2) sqrt(u) d u) d y \
    &= integral_0^1 (y / 2 (2 / 3)u^(3 / 2)|_(y^2)^(1+y^2)) d y \
    &= 1 / 3 integral_0^1 y (u^(3 / 2)|_(y^2)^(1+y^2)) d y \
    &= 1 / 3 integral_0^1 y ((1 + y^2)^(3 / 2) - (y^2)^(3 / 2)) d y \
    &= 1 / 3 integral_0^1 y (1 + y^2)^(3 / 2) - y^4 d y \
    &= 1 / 3 ( integral_0^1 y (1 + y^2)^(3 / 2) d y - integral_0^1 y^4 d y) \
    &= 1 / 3 ( integral_0^1 (1 + y^2)^(3 / 2) y d y - y^5 / 5|_0^1) \
    &= 1 / 3 ( 1 / 2 integral_1^2 v^(3 / 2) d v - y^5 / 5|_0^1) \
    &= 1 / 3 ( 1 / 2 (2 / 5) v^(5 / 2)|_1^2 - y^5 / 5|_0^1) \
    &= 1 / 3 ( 1 / 5 (2^(5 / 2) - 1) - 1 / 5) \
    &= 1 / 15 (2^(5 / 2) - 1 - 1 ) \
    &= #$ (4sqrt(2) -2) / 15 $]
  $

#pagebreak()

= Double Integrals over General Regions

== Problem 4

Evaluate the iterated integral

$ integral_0^(pi / 2) integral_0^x x sin y d y d x $

=== Answer

$
  integral_0^(pi / 2) integral_0^x x sin y d y d x
  &= integral_0^(pi / 2) x (integral_0^x sin y d y) d x \
  &= integral_0^(pi / 2) x (- cos y|_0^x) d x \
  &= integral_0^(pi / 2) x (cos 0 - cos x) d x \
  &= integral_0^(pi / 2) x - x cos x d x \
  &= integral_0^(pi / 2) x d x - integral_0^(pi / 2) x cos x d x \
  &= x^2 / 2|_0^(pi / 2) - integral_0^(pi / 2) x cos x d x \
  &= x^2 / 2|_0^(pi / 2) - (x sin x)|_0^(pi / 2) - cos x|_0^(pi / 2) \
  &= ((pi / 2)^2 / 2) - (pi / 2 sin (pi / 2)) - (cos pi / 2 - cos 0) \
  &= pi^2 / 8 - (pi / 2) - (0 - 1) \
  &= #rect()[$ pi^2 / 8 - pi / 2 + 1 $]
$

#line()
#pagebreak()

== Problem 5

Evaluate the double integral

$
  integral integral_D (2x + y) d A,
  quad D = {(x,y) | 1 <= y <= 2, y -1 <= x <= 1}
$

=== Answer

Given $D$,

$
  integral integral_D (2x + y) d A
  &= integral_1^2 integral_(y-1)^(1) (2x + y) d x d y \
  &= integral_1^2 (integral_(y-1)^(1) (2x + y) d x) d y \
  &= integral_1^2 (2 integral_(y-1)^(1) x d x + y integral_(y-1)^(1) d x) d y \
  &= integral_1^2 (x^2|_(y-1)^1 + y x|_(y-1)^(1)) d y \
  &= integral_1^2 ((1)^2 - (y-1)^2) + y(1 - y + 1 ) d y \
  &= integral_1^2 (1 - (y^2-2y + 1)) + y(2 - y) d y \
  &= integral_1^2 (1 - y^2 + 2y -1) + 2y - y^2 d y \
  &= integral_1^2 2y - y^2 + 2y - y^2 d y \
  &= 2 (integral_1^2 2y - y^2 d y) \
  &= 2 (2 integral_1^2 y d y - integral_1^2 y^2 d y) \
  &= 2 ( y^2|_1^2 - y^3 / 3|_1^2 ) \
  &= 2 ( (2^2 - 1^2) - 1 / 3(2^3 - 1^3) ) \
  &= 2 ( 3 - 7 / 3 ) \
  &= #rect(stroke: 1pt)[$ 4 / 3 $]
$

#line()
#pagebreak()

== Problem 6

Consider

$ integral integral_D y^2 e^(x y) d A $

where $D$ is bounded by $y = x$, $y = 4$, and $x = 0$. Set up iterated integral
for both orders of integration. Then evaluate the double integral using the
easier order and explain why it's easier.

=== Answer

This iterated integral can be expressed as $integral_0^4 integral_0^y y^2 e^(x y)
d x d y$ or $integral_0^4 integral_x^4 y^2 e^(x y) d y d x$. If we choose the
first order, the first integral simplifis nicely as the $y^2$ factor is treated
like a constant. With the oher order, we are force to do integration by parts.

$
  integral integral_D y^2 e^(x y) d A
  &= integral_0^4 integral_0^y y^2 e^(x y) d x d y \
  &= integral_0^4 y^2 (integral_0^y e^(x y) d x) d y \
  &= integral_0^4 y^2 ( e^(x y) / y)|_0^y d y \
  &= integral_0^4 y (e^(y^2) - e^0) d y \
  &= integral_0^4 y e^(y^2) - y d y \
  &= integral_0^4 y e^(y^2) d y - integral_0^4 y d y \
  &= 1 / 2 integral_0^16 e^(u) d u - y^2 / 2|_0^4 \
  &= 1 / 2 (e^(u)|_0^(16)) - y^2 / 2|_0^4 \
  &= 1 / 2 (e^16 - 1) - 16 / 2 \
  &= #rect()[$ (e^16 - 1) / 2 - 8 $]
$

#line()
#pagebreak()

== Problem 7

Evaluate the double integral

$ integral integral_D y d A $

where $D$ is the triangular region with verties $(0,0), (1,1)$ and $(4,0)$.

=== Answer

$D$ is a triangular region whose sides are given by the lines

$
  x=0, quad
  x=y, quad \ " and " \
  (4-1)x + (0-1)y = 4 arrow.l.r.double.long #rect(stroke: .75pt)[$ x = -3y + 4 $]
$

Therefore:

$
  integral integral_D y d A
  = integral_0^4 integral_y^(-3y+4) y d x d y
  = integral_y^(-3y+4) integral_0^4 y d y d x
$

Since it's easier to start with the $x$-simple method:


$
  integral integral_D y d A
  &= integral_0^1 y integral_y^(-3y+4) d x d y \
  &= integral_0^1 y x|_y^(-3y+4) d y \
  &= integral_0^1 y (-3y+4 - y) d y \
  &= 4 integral_0^1 y-y^2 d y \
  &= 4(y^2 / 2 - y^3 / 3) |_0^1 \
  &= 4(1^2 / 2 - 1^3 / 3) \
  &= 2 - 4 / 3 \
  &= #$ 2 / 3 $] \
$

#line()
#pagebreak()

== Problem 8

Find the volume of the solid bounded by the planes $z= x, y = x, x + y = 2$ and
$z = 0$.

=== Answer

Let $R$ be the region in the $x y$-plane bounded by

#set rect(stroke: .75pt)
$
  #$ y=x $] \
  (x + y = 2) arrow.r.l.long.double #$ y = 2 - x $] \
  (z - x = z) arrow.r.l.long.double #$ x = 0 $] \
  (y - x = x + y - 2) arrow.r.l.long.double #$ x = 1 $]
$

Note that the height of the given solid is given by $z=x$. Therefore,

$
  integral integral_R z d A
  &= integral_0^1 integral_x^(2-x) x d y d x \
  &= integral_0^1 x integral_x^(2-x) d y d x \
  &= integral_0^1 x y|_x^(2-x) d x \
  &= integral_0^1 x (2 - x - x) d x \
  &= 2 integral_0^1 x - x^2 d x \
  &= x^2 - (2x^3) / 3|_0^1 \
  &= 1^2 - (2(1)^3) / 3 \
  &= 1 / 3 \
$

#line()
#pagebreak()

== Problem 9

Sketch the region of integration and change the order of integration for the
integral

$ integral_(-2)^2 integral_0^sqrt(4-y^2) f(x,y) d x d y $

=== Answer

Note that the regions of this graph are given by $y = -2$, $y=2$, $x=0$
and $x=sqrt(4-y^2)$. Also, note that $x=sqrt(4-y^2)$ describes a half circle
with radius $2$ centered at the origin.

#figure(
  image("region.png", height: 25%),
  caption: "Region of integration (" + [$R$] + "). Generated using Python/matplotlib.",
)

A rotation of $90 degree$ counter clockwise would yield a region covered by
$y = sqrt(4-x^2)$.
#figure(
  image("x_rotation.png", height: 25%),
  caption: [$R$] + " rotated 90" + [$degree$] + ". Generated using Python/matplotlib.",
)

Now, note that $integral sqrt(4-y^2) d y = integral sqrt(4 - x^2) d x$.
Therefore

$
  integral_(-2)^2 integral_0^sqrt(4-y^2) f(x,y) d x d y =
  integral_(-2)^2 integral_0^sqrt(4-x^2) f(x,y) d y d x
$

#pagebreak()

= Double Integrals in Polar Coordinates

== Problem 10

Evaluate the integral

$ integral integral_R (2x - y) d A $

where $R$ is the region in the first quadrant enclosed by the circle $x^2 + y^2
= 4$ and the lines $x=0$ and $y=x$, by changing to polar coordinates.

=== Answer

First, note that $x^2 + y^2 = 4 arrow.r.l.long.double y = sqrt(4-x^2)$.
Note that $x = r cos theta$ and $y = r sin theta$. Therefore

$
  x^2 + y^2 = 4 arrow.r.l.long.double r = 2 \
  2x - y = 4(2 cos theta - sin theta) \
  y = x arrow.r.l.long.double sin theta = cos theta \
$

We can rewrite into polar coordinates:

$
  integral integral_R (2x - y) d A
  &= integral_0^2 integral_(pi / 4)^(pi / 2) r(2 cos theta - sin theta) r d theta d r \
  &= integral_0^2 r^2 integral_(pi / 4)^(pi / 2) (2 cos theta - sin theta) d theta d r \
  &= integral_0^2 r^2 (2 sin theta + cos theta)|_(pi / 4)^(pi / 2) d r \
  &= integral_0^2 r^2 (2 sin pi / 2 + cos pi / 2 - 2 sin pi / 4 - cos pi / 4) d r \
  &= (2 - 3sqrt(2) / 2) integral_0^2 r^2 d r \
  &= (2 - 3sqrt(2) / 2) r^3 / 3|_0^2 \
  &= (2 - 3sqrt(2) / 2) 8 / 3 \
  &= 16 / 3 - 4sqrt(2) \
$

#line()
#pagebreak()

== Problem 11

Use a double integral to find the area of the region enclosed by both of the
cardioids $r = 1 + cos theta$ and $r = 1 - cos theta$.

=== Answer

(Honestly, I'm really bad with polars and cardioids, so I needed to peek).

#figure(image("cardioids.png", height: 25%), caption: "Plotted in Desmos")

The given cardioids happen to be a reflexion of each other over the $y$-axis.
Also, both cardioids are symmetric over the $x$-axis. Therefore, the given
integral is equal to the quadruple of the area enclosed by both functions in
the first quadrant. Since the first quadrant corresponds to $0 <= theta
<= pi/2$, the area in the first quadrant is exactly underneath the curve $r = 1
- cos theta$, we can express the integral as follows:

$
  integral integral_D d A
  &= 4 integral_0^(pi / 2) integral_0^(1 - cos theta) r d r d theta \
  &= 2 integral_0^(pi / 2) r^2|_0^(1 - cos theta) d theta \
  &= 2 integral_0^(pi / 2) (1 - cos theta)^2 d theta \
  &= 2 integral_0^(pi / 2) 1 - 2 cos theta + cos^2 theta d theta \
  &= 2 integral_0^(pi / 2) 1 - 2 cos theta + 1 / 2(1 + cos 2theta) d theta \
  &= integral_0^(pi / 2) 2 - 4 cos theta + (1 + cos 2theta) d theta \
  &= integral_0^(pi / 2) 3 - 4 cos theta + cos 2theta d theta \
  &= 3 theta - 4 sin theta + (sin 2theta) / 2 |_0^(pi / 2) \
  &= (3pi) / 2 - 4 sin pi / 2 - (sin pi) / 2 \
  &= #rect[$ (3 pi) / 2 - 4 $] \
$

#line()
#pagebreak()

== Problem 12

Use polar coordinates to find the volume inside the sphere $x^2 + y^2 + z^2 =
16$ and outside the cylinder $x^2 + y^2 = 4$.

=== Answer

Note that $z = sqrt(16 - r^2)$ only accounts for half of the sphere. Also, the
region $R$ is within $ 2<= r <= 4$. Since both of the figures make a circular
projection over the $x y$ plane, $R$ includes $0 <= theta <= 2 pi$.

Let $u=16 - r^2 arrow.r.double.long d u = -2r$.

$
  2 integral_0^(2pi) integral_2^4 r sqrt(16 - r^2) d r d theta
  &= 2 integral_2^4 r sqrt(16 - r^2) integral_0^(2pi) d theta d r \
  &= 2 integral_2^4 r sqrt(16 - r^2) (theta|_0^(2pi)) d r \
  &= 4pi integral_2^4 r sqrt(16 - r^2) d r \
  &= -2pi integral_2^4 sqrt(16 - r^2) (-2 r d r) \
  &= -2pi integral_12^0 sqrt(u) d u \
  &= 2pi integral_0^12 sqrt(u) d u \
  &= (4pi) / 3 (u)^(3 / 2)|_0^12 \
  &= (4pi) / 3 (12)^(3 / 2) \
  &= (4pi) / 3 sqrt((4^3)(3^3)) \
  &= (4pi) / 3 sqrt(2^6(3^2)3) \
  &= ((4pi) 24) / 3 sqrt(2^6(3^2)3) \
  &= #rect[$ 32sqrt(3)pi $] \
$

#line()
#pagebreak()

== Problem 13

Evaluate the integral

$ integral_0^2 integral_0^sqrt(2x - x^2) sqrt(x^2 + y^2) d y d x $

by converting to polar coordinates.

=== Answer

(Again, I needed to peek. Please let me know how much polar coordinates we will
have to do after this homework #face.concern).

Note that $ 1 - 1 + 2x - x^2 = 1 - (x - 1)^2$. Therefore, the expression $sqrt(
  2x-x^2)$ in the the upper bound refers to a the half circle $(x - 1)^2 + y^2
= 1$. Supposing that $r != 0$, we express this circle in polar coordinates:

$
  (x - 1)^2 + y^2 &= 1 \
  x^2 - 2x + 1 + y^2 &= 1 \
  x^2 + y^2 - 2x &= 0 \
  r^2 - 2r cos theta &= 0 \
  r(r - 2 cos theta) &= 0 \
  r &= 2 cos theta \
$

#line(stroke: .5pt)

$
  integral_0^2 integral_0^sqrt(2x - x^2) sqrt(x^2 + y^2) d y d x
  &= integral_0^(pi / 2) integral_0^(2 cos theta) r^2 d r d theta \
  &= 1 / 3 integral_0^(pi / 2) r^3|_0^(2 cos theta) d theta \
  &= 1 / 3 integral_0^(pi / 2) 8 cos^3 theta d theta \
  &= 8 / 3 integral_0^(pi / 2) 1 - sin^2 theta (cos theta d theta) \
  &= 8 / 3 integral_0^(1) 1 - u^2 d u \
  &= 8 / 3 (u - u^3 / 3)|_0^(1) \
  &= 8 / 3 (1 - 1 / 3) \
  &= 8 / 3 (2 / 3) \
  &= 16 / 9 \
$


