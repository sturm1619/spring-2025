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

= Triple Integral

== Problem 1

Evaluate the integral.

+ $integral_0^1 integral_0^1 integral_0^sqrt(1-z^2) d x d z d y$

+ $integral integral integral_E e^(z/y) d V $, #text(weight: "regular")[where]
  $E = {(x,y,z) | 0 <= y <= 1, y <= x <= 1, 0 <= z <= x y}$

=== Answer

+ #text(
    weight: "regular",
  )[Let $z = sin theta arrow.r.double.long d z = cos
  theta d theta$, and $u = 2 theta arrow.r.double.long d u = 2 d theta$.]

$
  integral_0^1 integral_0^1 integral_0^sqrt(1-z^2) d x d z d y
  &= integral_0^1 integral_0^(pi / 2) sqrt(1-z^2) d z d y \
  &= integral_0^1 integral_0^(pi / 2) sqrt(1-sin^2 theta) cos theta d theta d y \
  &= integral_0^1 integral_0^(pi / 2) cos^2 theta d theta d y \
  &= 1 / 2 integral_0^1 integral_0^(pi / 2) cos 2 theta + 1 d theta d y \
  &= 1 / 2 integral_0^1 (integral_0^(pi / 2) cos 2 theta d theta) +
  (integral_0^(pi / 2) d theta) d y \
  &= 1 / 2 integral_0^1 1 / 2 (integral_0^(pi) cos u d u) + (pi / 2) d y \
  &= 1 / 2 integral_0^1 0 + (pi / 2) d y \
  &= pi / 4 integral_0^1 d y \
  &= pi / 4 y|_0^1 \
  &= #rect()[$ pi / 4 $] \
$

#pagebreak()
#set enum(start: 2)
+ #text(weight: "regular")[Let $u = z/y arrow.r.double.long y d u = d z$.]

$
  integral integral integral e^(z / y) d V
  &= integral_0^1 integral_y^1 integral_0^(x y) e^(z / y) d z d x d y \
  &= integral_0^1 y integral_y^1 integral_0^(x) e^u d u d x d y \
  &= integral_0^1 y integral_y^1 e^x - e^0 d x d y \
  &= integral_0^1 y integral_y^1 e^x - 1 d x d y \
  &= integral_0^1 y (e^x - x)|_y^1 d y \
  &= integral_0^1 y ((e^1 - 1) - (e^y - y)) d y \
  &= integral_0^1 y e - y - y e^y + y^2 d y \
  &= integral_0^1 y^2 + y(e - 1) - y e^y d y \
  &= (y^3 / 3 + y^2 / 2(e - 1) - e^y (y-1))|_0^1 \
  &= (1^3 / 3 + 1^2 / 2(e - 1) - e^1 (1-1))
  - (0^3 / 3 + 0^2 / 2(e - 1) - e^0 (0-1)) \
  &= 1 / 3 + (e - 1) / 2 - 1 \
  &= #rect()[$ (3e - 7) / 6 $] \
$

#line()
#pagebreak()

== Problem 2

Use a triple integral to find the volume of the solid enclosed by the
paraboloids $y = x^2 + z^2$ and $y = 8 - x^2 - z^2$.

=== Answer

#figure(
  image("paraboloids.png", height: 25%),
  caption: "Projection of the paraboloids to the " + $x y$ + "-plane.",
)

#figure(
  image("xz_paraboloids.png", height: 25%),
  caption: "Projection of the paraboloids to the " + $x z$ + "-plane.",
)

Notice that $x^2 + z^2 = 8 - x^2 + z^2 arrow.r.double.long x^2 + z^2 = 4$,
which is the equation of the circle in the $x z$-plane where the paraboloids
intersect. In other words, we can express the region as

$
  E = {(x,y,z) |
    -2 <= x <= 2, -sqrt(4-x^2) <= z <= sqrt(4-x^2),
    (x^2+z^2) <= y <= (8 - x^2 - z^2)}
$

Let $x = 2 sin theta arrow.r.double.long (d x = 2 cos theta d theta) and sqrt(
4-x^2) = 2 cos theta$. Therefore

$
  integral integral integral_E d V
  &= integral_(-2)^2 integral_(-sqrt(4-x^2))^sqrt(4-x^2)
  integral_(x^2+z^2)^(8-x^2-z^2) d y d z d x \
  &= integral_(-2)^2 integral_(-sqrt(4-x^2))^sqrt(4-x^2)
  8 - x^2 - z^2 - x^2 - z^2 d z d x \
  &= 2 integral_(-2)^2 integral_(-sqrt(4-x^2))^sqrt(4-x^2)
  4 - x^2 - z^2 d z d x \
  &= 4 integral_(-2)^2 integral_0^sqrt(4-x^2) (4 - x^2) - z^2 d z d x \
  &= 4 integral_(-2)^2 (4 - x^2)z - z^3 / 3|_0^sqrt(4-x^2) d x \
  &= 4 integral_(-2)^2 (4 - x^2)sqrt(4-x^2) - (sqrt(4-x^2))^3 / 3 d x \
  &= 4(2 / 3) integral_(-2)^2 (sqrt(4-x^2))^3 d x \
  &= 8 / 3 integral_(-2)^2 (4-x^2)^(3 / 2) d x \
  &= 8 / 3 integral_(-pi / 2)^(pi / 2) (2 cos theta)^3 (2 cos theta d theta) \
  &= 128 / 3 integral_(-pi / 2)^(pi / 2) cos^4 theta d theta \
  &= 128 / 3 integral_(-pi / 2)^(pi / 2) ((1-cos 2theta) / 2)^2 d theta \
  &= 32 / 3 integral_(-pi / 2)^(pi / 2) 1 - 2 cos 2theta + cos^2 2theta d theta \
  &= 32 / 3 (integral_(-pi / 2)^(pi / 2) d theta -
    2 integral_(-pi / 2)^(pi / 2) cos 2theta d theta +
    integral_(-pi / 2)^(pi / 2) cos^2 2theta d theta) \
  &= 32 / 3 (pi - integral_(-pi)^(pi) cos u d u +
    1 / 2 integral_(-pi / 2)^(pi / 2) 1 - cos 4theta d theta) \
  &= 32 / 3 (pi + sin u|_(-pi)^(pi) + 1 / 2 integral_(-pi / 2)^(pi / 2) d theta
    - 1 / 2 integral_(-pi / 2)^(pi / 2) cos 4theta d theta) \
  &= 32 / 3 (pi + pi / 2 - 1 / 8 integral_(-2 pi)^(2 pi) cos u d u) \
  &= 32 / 3 ((3pi) / 2 - 1 / 8 sin u|_(-2 pi)^(2 pi)) \
  &= 32 / 3 ((3pi) / 2 ) = #rect()[$ 16pi $] \
$

#line()
#pagebreak()

== Problem 3

Sketch the solid whose volume is given by

$ integral_0^2 integral_0^(2-y) integral_0^(4-y^2) d x d z d y $

=== Answer

By looking at the integration boundaries and the differentials, we see that the
function is integrated within $y in [0,2]$. Also, $z in [0, 2 - y]$ and $x in [0,
4 - y^2]$.

#figure(
  image("./ugly.jpg"),
  caption: "My best attempt",
)

#pagebreak()

= Triple Integrals in Cylindrical Coordinates

== Problem 4

Sketch the solid whose volume is given by the integral

$ integral_0^2 integral_0^(2pi) integral_0^(r) r d z d theta d r $

and evaluate the integral.

=== Answer

The given integral corresponds to the volume of the region ${(r,theta,z) |
0 <= r <= 2, 0 <= theta <= 2, 0 <= z <= r}$. We can see that the projection
of this solid into the $x y$ plane is a disk with radius $2$. This solid has
a convex shape that could be described as a cylinder "pierced" by a cone radius
$2$ with base centered at the origin and the height proportional to the the
distace to the origin.

The volume of this shape is given by:

$
  integral_0^2 integral_0^(2pi) integral_0^r (r) d z d theta d r
  &= integral_0^2 r integral_0^(2pi) integral_0^r d z d theta d r \
  &= integral_0^2 r^2 integral_0^(2pi) d theta d r \
  &= 2 pi integral_0^2 r^2 d r \
  &= 2 pi r^3 / 3|_0^2 \
  &= #rect()[$ 16 / 3 pi $] \
$

#line()
#pagebreak()

== Problem 5

Use cylindrical coordinates to find the volume of the solid that lies within both the cylinder $x^2 + y^2 = 1$ and the sphere $x^2 + y^2 + z^2 = 4$.

=== Answer

Note that the region encompases all points such that $x^2+y^2=1$ and $x^2 + y^2
+ z^2 = 4$. This implies that, given $x,y$, $z <= plus.minus sqrt(4 - x^2 - y^2)
$. Therefore, the region can be described as

$
  {(r, theta, z) |
    r in [0,1],
    quad theta in [0,2pi],
    quad z in [- sqrt(4 - r^2), sqrt(4 - r^2)]}
$

_Student note: When setting up the volume, I totally forgot to plug in the
determinant of the Jacobian._

Let $u = 4 - r^2 arrow.r.double.long -(d u)/2 = r d r$. The volume is given by

$
  integral_0^1 integral_0^(2pi) integral_(-sqrt(4-r^2))^(sqrt(4-r^2)) (r)
  d z d theta d r
  &= integral_0^1 r integral_0^(2pi) (sqrt(4-r^2)) - (-sqrt(4-r^2))
  d theta d r \
  &= 2 integral_0^1 r sqrt(4-r^2) integral_0^(2pi) d theta d r \
  &= 4 pi integral_0^1 r (4-r^2)^(1 / 2) d r \
  &= 4 pi (-1 / 2) integral_4^3 sqrt(u) d u \
  &= 2 pi integral_3^4 sqrt(u) d u \
  &= 2 pi (2 / 3) (u)^(3 / 2)|_3^4 \
  &= (4 pi) / 3 (4^(3 / 2) - 3^(3 / 2)) \
  &= #rect()[$ (4 pi) / 3 (8 - 3sqrt(3)) $] \
$

#line()
#pagebreak()

= Triple Integrals in Spherical Coordinates

== Problem 6

Change from rectangular to spherical coordinates.

#set enum(start: 1)

+ $(1,0,sqrt(3))$

+ $(sqrt(3),-1,2 sqrt(3))$

=== Answer

For both cases, let $bold(x) = (x,y,z)$.

+
$
  rho = |bold(x)| = 2 \
  phi = sin^(-1)(z/rho) = sin^(-1)(sqrt(3)/2) = pi/6 \
  theta = cos^(-1)(x/rho csc phi) = cos^(-1)(1) = 0 \
  #line(length:70%, stroke:.5pt) \
  #rect()[$ therefore (2, 0, pi / 6) $]
$

#set enum(start: 2)
+
$
  rho = |bold(x)| = 4 \
  phi = sin^(-1)(z/rho) = sin^(-1)(sqrt(3)/2) = pi/6 \
  theta = sin^(-1)(y/rho csc phi) = sin^(-1)(-1/2) = (11pi)/6 \
  #line(length:70%, stroke:.5pt) \
  #rect()[$ therefore (2, (11pi)/6, pi / 6) $]
$

#line()
#pagebreak()

== Problem 7

Write the equation in spherical coordinates

$ z = x^2 + y^2 $

=== Answer

Note that $z = rho cos phi$, $x^2 + y^2 = rho^2 sin^2 phi$. Then

$
  rho cos phi &= rho^2 sin^2 phi \
  rho (rho sin^2 phi - cos phi) &= 0 \
$

Of which one of the solutions is $rho = 0$. Supposing that $rho != 0$

$
  rho sin^2 phi - cos phi &= 0 \
  rho sin^2 phi &= cos phi \
  rho &= (cos phi) / (sin phi) 1 / (sin phi) \
  rho &= cot phi csc phi \
$

Therefore, $ #rect()[$ rho = 0, cot phi csc phi $] $

#line()
#pagebreak()

== Problem 8

Use spherical coordinates to evaluate

$ integral integral integral_E y^2 d V $

where $E$ is the solid hemisphere $x^2 + y^2 + z^2 <= 9$, $y >= 0$.

=== Answer

Note that $x^2 + y^2 + z^2 <= 9 arrow.r.l.double.long rho <= 3$. Also, $y >= 0$
implies that $theta in [0, pi]$. Moreover, $y^2 = rho^2 sin^2 phi sin^2 theta$
and $d V = rho^2 sin phi d rho d theta d phi$. Therefore, the integral equivalent
to the volume:

$
  integral_0^(pi) integral_0^pi integral_0^3
  (rho^2 sin^2 phi sin^2 theta)
  (rho^2 sin phi)
  d rho d phi d theta \
  = integral_0^(pi) sin^2 theta d theta
  integral_0^pi sin^3 phi d phi
  integral_0^3 rho^4 d rho \
  = rho^5 / 5 |_0^3
  integral_0^(pi) 1 / 2 (1 - cos 2theta) d theta
  integral_0^pi (1 - cos^2 phi) sin phi d phi \
  = 243 / 10 (integral_0^(pi) d theta - integral_0^(pi) cos 2theta d theta)
  (integral_0^pi sin phi d phi - integral_0^pi cos^2 phi sin phi d phi) \
  = 243 / 10 (pi - 1 / 2 integral_0^(2pi) cos u d u)
  (- cos phi|_0^pi - integral_(-1)^(1) v^2 d v) \
  = 243 / 10 (pi - 1 / 2 sin u |_0^(2pi))
  (- cos phi|_0^pi - v^3 / 3|_(-1)^(1)) \
  = 243 / 10 (pi) ((- cos pi + cos 0) - (1^3 / 3 - (-1)^3 / 3)) \
  = (243 pi) / 10 ((1 + 1) - (1 / 3 + 1 / 3)) \
  = (243 pi) / 10 (2 - 2 / 3) \
  = (243 pi) / 10 (4 / 3) \
  = #rect()[$ (162 pi) / 5 $]
$

#line()
#pagebreak()

== Problem 9

Evaluate the integral by changing to spherical coordinates

$
  integral_(-a)^a integral_(-sqrt(a^2 - y^2))^sqrt(a^2 - y^2)
  integral_(-sqrt(a^2 - x^2 - y^2))^sqrt(a^2 - x^2 - y^2)
  (x^2z + y^2z + z^3) d z d x d y
$

=== Answer

Note that the boundaries imply the sphere containing all vectors such that $rho <=
a$. Also, $(x^2z + y^2z + z^3) = z(x^2 + y^2 + z^2) = (rho cos phi)rho^2 = rho^3
cos phi$.

Let $u=cos phi arrow.r.double.long d u = - sin phi d phi$. Therefore

$
  integral_(-a)^a integral_(-sqrt(a^2 - y^2))^sqrt(a^2 - y^2)
  integral_(-sqrt(a^2 - x^2 - y^2))^sqrt(a^2 - x^2 - y^2)
  (x^2z + y^2z + z^3) d z d x d y
  &= integral_0^a integral_0^(2pi) integral_0^pi
  (rho^3 cos phi)
  (rho^2 sin phi) d phi d theta d rho \
  &= integral_0^a rho^5 d rho
  integral_0^(2pi) d theta
  integral_0^pi cos phi sin phi d phi \
  &= (rho^6 / 6 |_0^a ) (2pi) (integral_(-1)^1 u d u) \
  &= 2pi (a^6 / 6) (u^2 / 2|_(-1)^1) \
  &= 2pi (a^6 / 6) (1^2 / 2 - (-1)^2 / 2) \
  &= 2pi (a^6 / 6) (0) \
  &= #rect()[$ 0 $] (!!)
$

_Student note: Yeah, you got me here._ #face.rofl

