// NOTE: Presentation page
#set align(center)

#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 14")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(
  size: 18pt,
  font: "Noto Serif",
  stroke: navy,
  fill: navy,
  datetime.today().display("[month repr:long] [day padding:none]th, [year]"),
)

#pagebreak()

#set align(left)

// NOTE: Imports and templates
#import emoji: face
#set enum(numbering: "(a)")
#let F = math.bold("F")
#let S = math.bold("S")
#let r = math.bold("r")
#let i = math.bold("i")
#let j = math.bold("j")
#let k = math.bold("k")
#set line(length: 100%)
#set rect(stroke: blue)

// NOTE: Body

= Parametric Surfacces and Their Areas

== Problem 1

Find the area of the surface $2y + 4z - x^2 = 5$ that lies above the triangle
with verties $(0,0), (2,0)$ and $(2,4)$.

=== Answer

Let $D$ be the triangular region with vertices $(0,0), (2,0)$ and $(2,4)$, and
let $S = {(x,y,z)| (x,y) in D, z = f(x,y)}$. The area of the surface in the
region $D$ is the integral of the differential of the surface $dif S$ over the
region $D$.

$ integral.double_D dif S $

We can describe this region with a single parameter $y$, where $0 <= x <= 2$ and
$0 <= y <= g(x)$, where $g(x)$ is the diagonal line cutting the triangle above.
Then

$
  g(x)
  &= (4-0) / (2-0) x
  &= 2x
$

Therefore,
$ D = #rect(stroke:red)[$ {(x,y) in RR^2 | 0 <= x <= 2, 0 <= y <= 2x} $] $

#line(stroke: 0.5pt)

Note that we can write the $z$-component of the surface is a function $f$ of
$(x,y)$:

$
  2y + 4z - x^2 &= 5 \
  2y + 4z - x^2 &= 5 \
  4z &= 5 - 2y + x^2 \
  z &= (5 - 2y + x^2) / 4
$

Now, note

$ f_x = (diff z) / (diff x) = x / 2, quad f_y = (diff z) / (diff y) = -1 / 2 $

The differential of the surface $dif S$ is product of the norm of the gradient
of the surface with the differentials of the parameters.

$
  dif S &= ||S'|| dif x dif y dif z\
$

Since we can paramatrize $S$ as a function of $#r (x,y) = (x, y, f(x))$:

$
  dif S &= sqrt(1 + (f_x)^2 + (f_y)^2) dif x dif y \
  &= sqrt(1 + x^2/4 + 1/4) dif x dif y \
  &= #rect(stroke:red)[$ sqrt((5 + x^2)/4) dif x dif y $]
$

#line(stroke: .5pt)

Therefore,

$
  integral.double_D dif S
  &= integral_0^2 integral_0^(2x) sqrt(5 + x^2) / 2 dif y dif x \
  &= integral_0^2 sqrt(5 + x^2) / 2 integral_0^(2x) dif y dif x \
  &= integral_0^2 sqrt(5 + x^2) / 2 dot [y]_0^(2x) dif x \
  &= integral_0^2 2x sqrt(5 + x^2) / 2 dif x \
  &= integral_0^2 x sqrt(5 + x^2) dif x \
$

Let $u = 5+x^2 arrow.double.long (dif u)/2 = x dif x, quad u(0) = 5, u(2) = 9$.
Then

$
  integral_0^2 x sqrt(5 + x^2) dif x
  &= 1 / 2 integral_5^9 u^(1 / 2) dif u \
  &= 1 / 2 (2 / 3) [u^(3 / 2)]_5^9\
  &= [u^(3 / 2)]_5^9 / 3\
  &= (sqrt(9 dot 81) - sqrt(125)) / 3\
  &= #rect[$ (27 - 5 sqrt(5)) / 3 $]
$

#line()

#pagebreak()

== Problem 2

Find the area of the part of the sphere $x^2 + y^2 + z^2 = 4$ that lies above
the plane $z=1$.

=== Answer

Note that the region of integration $D subset RR^2$ can expressed in polar
coordinates such that $x = r cos theta, y = r sin theta$, which implies that
$x^2 + y^2 = r^2$.

Since we are integrating the surface area of the portion of the sphere
$x^2+y^2 + z^2 <= 4$ (note that the sphere with radius $2$) where $1 <= z <= 2$.
We can parametrize $z$ as a function of $(x,y)$:

$
  x^2 + y^2 + z^2 &<= 4 \
  z^2 &<= 4 - x^2 - y^2 \
  z &<= sqrt(4 - x^2 - y^2) \
  &<= sqrt(4 - r^2) \
$

for which its gradient $gradient z$ is given as:

$
  gradient z &= angle.l (diff z) / (diff x), (diff z) / (diff y) angle.r \
  &= angle.l - x / sqrt(4 - r^2), - y / sqrt(4 - r^2) angle.r \
$

This implies that

$
  1 <= z <= 2 \
  1 <= sqrt(4 - r^2) <= 2 \
  1 <= 4 - r^2 <= 4 \
  -3 <= - r^2 <= 0 \
  3 >= r^2 >= 0 \
  #rect(stroke: red)[$ sqrt(3) >= r >= 0 $] \
$

and

$
  d S
  &= sqrt(1 + (- x/sqrt(4 - r^2))^2 + (- y/sqrt(4 - r^2))^2)
  dif x dif y \
  &= sqrt(1 + x^2/(4 - r^2) + y^2/(4 - r^2)) dif x dif y \
  &= sqrt((4 - r^2 + r^2)/(4 - r^2)) dif x dif y \
  &= sqrt((4 )/(4 - r^2)) dif x dif y \
  &= 2 / sqrt(4 - r^2) dif x dif y \
  &= #rect(stroke: red)[$ 2 / sqrt(4 - r^2) r dif r dif theta $] \
$

#line(stroke: 0.5pt)

Therefore, the surface area is given by:

$
  integral.double_D d S
  &= integral_0^(2pi) integral_0^sqrt(3) (2r) / sqrt(4-r^2) dif r dif theta \
  &= integral_0^(2pi) dif theta integral_0^sqrt(3) (2r) / sqrt(4-r^2) dif r \
  &= 2pi integral_0^sqrt(3) (2r) / sqrt(4-r^2) dif r \
$

Let $u = 4 - r^2, dif u = -2r d r, u(0) = 4, u(sqrt(3)) = 1$:

$
  2pi integral_0^sqrt(3) (2r) / sqrt(4-r^2) dif r
  &= 2pi integral_1^4 1 / sqrt(u) dif u \
  &= 2pi (2) [sqrt(u)]_1^4 \
  &= 4pi (sqrt(4) - sqrt(1)) \
  &= #rect[$ 4pi $] \
$

#line()

#pagebreak()

== Problem 3

Determine if the points $P(1,2,1)$ and $Q(2,3,3)$ lie on the surface defined by

$ #r (u,v) = angle.l 1 + u - v, u + v^2, u^2 - v^2 angle.r $

=== Answer

The point $P$ lies on the given surface if and only if $exists (u_0, v_0) in
RR^2 | P = #r (u_0, v_0)$. Therefore

$
  #r (u_0, v_0) &= mat(1;2;1) \
  mat(1 + u_0 - v_0; u_0 + (v_0)^2; (u_0)^2 - (v_0)^2) &=  \
  mat(u_0 - v_0; u_0 + (v_0)^2; (u_0)^2 - (v_0)^2) &= mat(0;2;1) \
$

Note that $u_0 - v_0 = 0 arrow.double.long u_0 = v_0$. But, $(u_0)^2 - (v_0)^2
= 1 arrow.double.long (u_0)^2 - (u_0)^2 = 1$, which is inconsistent. Therefore,
$P$ is not in the surface.

Similarly for $Q$, $exists(u_1, v_1) in RR^2 | Q = #r (u_1, v_1)$:

$
  #r (u_1, v_1) &= mat(2;3;3) \
  mat(1 + u_1 - v_1; u_1 + (v_1)^2; (u_1)^2 - (v_1)^2) &= \
  mat(u_1 - v_1; u_1 + (v_1)^2; (u_1)^2 - (v_1)^2) &= mat(1;3;3) \
$

Note that $u_1 = 1 + v_1$. Then

$
  1 + v_1 + (v_1)^2 &= 3 \
  v_1 + (v_1)^2 -2 &= 0 \
  (v_1 - 1)(v_1 + 2) &= 0 \
  v_1 = -2, 1
$

and

$
  (u_1)^2 - (v_1)^2 &= 3 \
  (1 + v_1)^2 - (v_1)^2 &= 3 \
  1 + 2v_1 + (v_1)^2 - (v_1)^2 &= 3 \
  1 + 2v_1 + &= 3 \
  2v_1 &= 2 \
  v_1 &= 1 \
$

Since the system is consistent for $v_1 = 1$, $Q$ is on the surface. $qed$

#line()

== Problem 4

Identify the surface given by the equation

$ #r (s,t) = angle.l 3 cos t, s, sin t angle.r, quad -1 <= s <= 1 $

=== Answer

It's the surface of cylinder with eliptical base on the $x z$ plane
and height (or width, depending of perspective) $2$ (where $y in [-1,1]$. We can
think of it as an eliptical wrist band.

#line()

== Problem 5

Find the parametric equation for the part of the ellipsoid $x^2 + 2y^2 + 3z^2
= 1$ that lies to the left of the $x z$-plane.

=== Answer

Note that the left of the $x z$-plane correponds to $forall y <= 0$. We can
express $y$ as function of $(x,z) in RR^2$, such that

$ y = - sqrt((1 - x^2 - 3z^2)/2) $

and our parametrization becomess

$ #r (x, z) = #rect[$ angle.l x, - sqrt((1 - x^2 - 3z^2)/2), z angle.r $] $

#line()
#pagebreak()

== Problem 6

Find an equation of the tangent plane to the parametric surface

$ x = u^2 + 1, quad y = v^3 + 1, quad z = u + v $

at the point $(5,2,3)$.

=== Answer

Note that the surface is parametrized by the function

$ #r (u, v) = angle.l u^2 + 1, v^3 + 1, u + v angle.r $

of which its partial derivatives are:

$
  #r _u &= angle.l 2u,0, 1 angle.r \
  #r _v &= angle.l 0,3v^2, 1 angle.r
$

We can find the $(u_0,v_0)$ corresponding to $(5,2,3)$ by solving the system:

$
  mat(u_0^2+1;v_0^3+1;u_0+v_0) &= mat(5;2;3) \
  mat(u_0^2;v_0^3;u_0+v_0) &= mat(4;1;3) \
  mat(u_0;v_0;u_0+v_0) &= mat(plus.minus 2;1;3) \
$

which is consistent for $(u_0,v_0) = (2,1)$. The tangent plane of a surface is
given by the equation

$ 0 = [#r _u (u_0,v_0) times #r _v (u_0, v_0)] dot (angle.l x,y,z angle.r - P) $

where $#r _u times #r _v$ is the normal vector to the at $P$ (remember that $#r
(u_0, v_0) = P$), and $P$ is the given point. Note that

$
  #r _u (2, 1) = angle.l 4, 0, 1 angle.r,
  quad #r _v (2, 1) = angle.l 0, 3, 1 angle.r
$

$ #r _u times #r _v = angle.l -3, -4, 12 angle.r $

Therefore, the tangent plane is

$
  0 &= angle.l -3,-4,12 angle.r dot angle.l x -5, y -2, z-3 angle.r \
  &= #rect[$ -3(x-5) -4(y-2) + 12(z-3) $]
$

#line()
#pagebreak()

== Problem 7

Find the area of the suface $x = z^2 + y$ that lies between the planes $y = 0,
y = 2, z = 0$, and $z=2$.

=== Answer

Note that $ R = {(z^2 + y, y, z) in RR^3 | y in [0,2], z in [0,2] } $
is an image of $ D  = {(y,z) in RR^2| y in [0,2], z in [0,2]} $ thus can be
parametrized by a function $#r (y,z) = angle.l z^2 + y, y, z angle.r$. Note that

$
  #r _y = angle.l 1, 1, 0 angle.r, quad #r _z = angle.l 2z, 0, 1 angle.r \
  #r _y times #r _z = angle.l 1, -1, -2z angle.r
  ||#r _y times #r _z|| = sqrt(1 + 1 + 4z^2) = sqrt(2 + 4z^2)
$

Thus

$
  integral.double_D dif S
  &= integral_0^2 integral_0^2 sqrt(2 + 4z^2) dif y dif z \
  &= sqrt(2) integral_0^2 dif y integral_0^2 sqrt(1 + 2z^2) dif z \
  &= 2 sqrt(2) integral_0^2 sqrt(1 + 2z^2) dif z \
$
\ Let $z = 1/sqrt(2) tan theta arrow.double dif z = 1/sqrt(2) sec^2 theta dif
theta$, $sqrt(1 + 2z^2) = sqrt(1 + 2/2 tan^2 theta) = sqrt(sec^2 theta) =
sec theta$. Then \

$
  2 sqrt(2) integral_0^2 sqrt(2(1/2 + z^2)) dif z
  = 2 sqrt(2) integral_b^a sqrt(1 + 2 (1/2 tan^2 theta))
  (sec^2 theta) / sqrt(2) dif theta \
  = 2 integral_b^a sec^3 theta dif theta
  = 2 (1 / 2)[sec theta tan theta + ln |sec theta + tan theta| ]_b^a \
  = [sqrt(2) z sqrt(1 + 2z^2) + ln |sqrt(1 + 2z^2) + sqrt(2) z| ]_0^2 \
  = [sqrt(2) (2) sqrt(2 + 2(2)^2) + ln |sqrt(1 + 2(2)^2) + sqrt(2) (2)| ]
  - [sqrt(2) (0) sqrt(2 + 2(0)^2) + ln |sqrt(1 + 2(0)^2) + sqrt(2) (0)| ] \
  = [6 sqrt(2) + ln |sqrt(9) + (2)sqrt(2) | ] - ln |sqrt(1)| \
  = #rect[$ 6 sqrt(2) + ln |3 + 2 sqrt(2)| $]
$

#pagebreak()

= Surface Integrals

== Problem 8

Evalate the surface integral

$ integral.double_S x y z d S $

where $S$ is the cone with parametric equations

$
  x = u cos v, quad y = u sin v, quad z = u, quad 0 <= u <= 1,
  quad 0 <= v <= pi / 2
$

=== Answer

Note that

$ d S = ||#r _u times #r _v|| dif u dif y $

where $#r (u,v) = angle.l u cos v, u sin v, u angle.r$. Therefore

$
  #r _u &= angle.l cos v, sin v, 1 angle.r \
  #r _v &= angle.l - u sin v, u cos v, 0 angle.r \
  #r _u times #r _v
  &= angle.l - u cos v, u sin v, u (cos^2 v - sin^2 v) angle.r \
  ||#r _u times #r _v||
  &= sqrt((- u cos v)^2 + u^2 sin^2 v + (u (cos^2 v + sin^2 v))^2) \
  &= sqrt(u^2 cos^2 v + u^2 sin^2 v + u^2) \
  &= sqrt(2u^2) \
  &= sqrt(2)u \
$

Therefore,

$
  integral.double_S x y z d S
  &= sqrt(2) integral_0^1 integral_0^(pi / 2)
  u(u cos v)(u sin v) u dif v dif u \
  &= sqrt(2) integral_0^1 u^4 dif u integral_0^(pi / 2) cos v sin v dif v \
  &= sqrt(2) [u^5 / 5]_0^1 integral_0^(pi / 2) cos v sin v dif v \
  &= sqrt(2) / 5 integral_0^(pi / 2) cos v sin v dif v \
  &= sqrt(2) / 5 integral_0^1 p dif p \
$

Let $p = cos v arrow.double.long dif p = - sin v dif v, p(0) = 1, p(pi/2) = 0$.

$
  &= sqrt(2) / 5 integral_0^(pi / 2) cos v sin v dif v \
  &= sqrt(2) / 5 integral_0^1 p dif p \
  &= sqrt(2) / 5 [p^2 / 2]_0^1 \
  &= #rect[$ sqrt(2) / 10 $] \
$
#line()

== Problem 9

Evaluate the surface integral

$ integral.double_S x z dif S $

where $S$ is the part of the plane $2x + 2y + z = 4$ that lies in the first
octant.

=== Answer

Note that we can express this curve as $z = 4 - 2x - 2y$, which yields the next
parametrization

$ #r (x, y) = angle.l x, y, 4 - 2x - 2y angle.r $

Note that

$
  #r _x &= angle.l 1, 0, -2 angle.r \
  #r _y &= angle.l 0, 1, -2 angle.r \
  #r _x times #r _y &= angle.l 2, 2, 1 angle.r
  ||#r _x times #r _y|| &= sqrt(2^2 + 2^2 + 1^2) \
  &= #rect(stroke: red)[$ 3 $] \
$

Therefore

$ dif S = #rect(stroke: red)[$ 3 dif x dif y $] $

Since the region is in the first octant, $x >= 0, y >= 0$. Also, note that when
$z = 0$, $y = 2 - x$. Thus $0 <= x <= 2$, $0 <= 2 - x$.

Thus

$
  integral.double_S x z dif S
  &= integral_0^2 integral_0^(2-x) x (4 - 2x - 2y) 3 dif y dif x \
  &= 3 integral_0^2 integral_0^(2-x) 4x - 2x^2 - 2y x dif y dif x \
  &= 3 integral_0^2 [4x y - 2x^2y - y^2 x]_0^(2-x) dif x \ \
  &= 3 integral_0^2 4x (2-x) - 2x^2(2-x) - x (2-x)^2 dif x \
  &= 3 integral_0^2 4x (2-x) - 2x^2(2-x) - x (4-4x + x^2) dif x \
  &= 3 integral_0^2 8x - 4x^2 - 4x^2 + 2x^3 - 4 + 4x^2 - x^3 dif x \
  &= 3 integral_0^2 (8x - 4x) + (-4x^2 - 4x^2 + 4x^2) + (2x^3 - x^3) dif x \ \
  &= 3 integral_0^2 4x - 4x^2 + x^3 dif x \
  &= 3 [2x^2 - 4x^3 / 3 + x^4 / 4]_0^2 \
  &= 3 [2(2)^2 - (4(2)^3) / 3 + (2^4) / 4] \
  &= 3 [8 - (32) / 3 + 4] \
  &= 3 [12 - (32) / 3] \
  &= 36 - (32) \
  &= #rect[$ 4 $] \
$

#line()
#pagebreak()

== Problem 10

Evaluate the surface integral

$ integral.double_S y^2 dif S $

where $S$ is the part of the sphere $x^2 + y^2 + z^2 = 1$ that lies above the
cone $z = sqrt(x^2 + y^2)$.

=== Answer

Note that we can use spherical coordinates to represent the cone, holding
$rho = 1$ constant:

$
  #r (theta, phi)
  = angle.l sin phi cos theta, sin phi sin theta, cos phi angle.r
$

For which

$
  #r _theta &= angle.l - sin phi sin theta, sin phi cos theta, 0 angle.r \
  #r _phi &= angle.l cos phi cos theta, cos phi sin theta, - sin phi angle.r \
  #r _theta times #r _phi
  &= angle.l - sin^2 phi cos theta, - sin^2 phi sin theta,
  (- sin^2 theta sin phi cos phi - cos^2 theta cos phi sin phi) angle.r \
  &= angle.l - sin^2 phi cos theta, - sin^2 phi sin theta,
  - cos phi sin phi angle.r \
  ||#r _theta times #r _phi|| &= sqrt(sin^4 phi + cos^2 phi sin^2 phi ) \
  &= sqrt(sin^2 phi (sin^2 phi + cos^2  phi)) \
  &= sin phi
$

Note that a point in the surface is above the cone if and only its $z$ component
is greater than the $z$ component of the cone. Let $r^2 = x^2 + y^2$ be the
radius of the region containing the surface. Then

$
  z_"cone" &<= z_"sphere" \
  sqrt(x^2+y^2) &<= sqrt(1-y^2-x^2) \
  sqrt(r^2) &<= sqrt(1-r^2) \
  r^2 &<= 1-r^2 \
  2r^2 &<= 1 \
  r^2 &<= 1 / 2 \
  r &<= sqrt(2) / 2 \
$

Since the radius $r$ the cross section of the cone containing the preimage of
the sphere is $r = z = sin phi$,

$
  sin phi &<= sqrt(2) / 2 \
  phi &<= sin^(-1) sqrt(2) / 2 \
  phi &<= pi / 4 \
$

Thus, $phi <= pi/4$ corresponds to the section of the circle that is above the
cone, and $S = {(theta, phi) in RR^2 | theta in [0,2pi), phi in [0, pi/4]}$
is the region containing the surface of the sphere above the cone.

#line(stroke: 0.5pt)

Therefore,

$
  integral.double_S y^2 dif S
  &= integral_0^(2pi) integral_(0)^(pi / 4)
  sin^2 phi sin^2 theta (sin phi) dif phi dif theta \
  &= integral_0^(2pi) sin^2 theta dif theta
  integral_(0)^(pi / 4) sin^3 phi dif phi \
  &= 1 / 2 integral_0^(2pi) (1 - cos 2theta) dif theta
  integral_(0)^(pi / 4) (1 - cos^2 phi) sin phi dif phi \
$

Let $u = cos phi arrow.double dif u = - sin phi dif phi, u(0) = 1, u(pi/4)
= sqrt(2)/2$, then:

$
  &= 1 / 2integral_0^(2pi) (1 - cos 2theta) dif theta
  integral_1^(sqrt(2) / 2) u^2 - 1 dif u \
  &= 1 / 2integral_0^(2pi) (1 - cos 2theta) dif theta
  [u^3 / 3 - u]_1^(sqrt(2) / 2) \
$

Let $v = 2 theta arrow.double dif v = 2 dif theta arrow v(2pi) = 4 pi, v(0)
= 0$, then:

$
  &= 1 / 4 integral_0^(4pi) (1 - cos v) dif v [u^3 / 3 - u]_1^(sqrt(2) / 2) \
  &= 1 / 4 [v - sin v]_0^(4pi) [u^3 / 3 - u]_1^(sqrt(2) / 2) \
  &= 1 / 4 (4pi) ((sqrt(2) / 2)^3 / 3 - sqrt(2) / 2 - 1 / 3 + 1) \
  &= #rect[$ pi (2 / 3-(5sqrt(2)) / 12) $] \
$

#line()

== Problem 11

Evaluate the surface integral $display(integral.double_S #F dot dif #S)$ for
the given fector field $#F$ and the oriented surface $S$.

+ $#F (x,y,z) = -x #i - y #j + z^3 #k$ and $S$ is the part of the cone $z =
  sqrt(x^2 + y^2)$ between the planes $z = 1$ and $z =3 $ with downward
  orientation.

+ $#F (x,y,z) = y z #i + z x #j + x y #k$ and $S$ is the part of the cone $z =
  x sin y$, $0<=x<=2$ and $0<=y<=pi$ with upward orientation.

=== Answer

+ Note that the radius $r$ of the cone grows with its $z$ component, thus
  $r in [1,3]$. We can express this region in polar coordinates, such that

  $
    #r (r, theta) &= angle.l r cos theta, r sin theta, r angle.r \
    #r _theta &= angle.l - r sin theta, r cos theta, 0 angle.r \
    #r _r &= angle.l cos theta, sin theta, 1 angle.r
  $

  Since we are measuring the integral in the downward direction, we compute
  $#r _theta times #r _r$:

  $
    #r _theta times #r _r &= angle.l r cos theta, r sin theta, - r angle.r \
  $

  Note that

  $
    #F (#r (r, theta)) &= angle.l - r cos theta, - r sin theta, r^3 angle.r \
  $

  Thus:

  $
    integral.double_S #F dot dif #S &= integral_1^3 integral_0^(2pi)
    angle.l - r cos theta, - r sin theta, r^3 angle.r dot
    angle.l r cos theta, r sin theta, - r angle.r dif theta dif r \
    &= integral_1^3 integral_0^(2pi)
    - r^2 cos^2 theta - r^2 sin^2 theta - r^4 dif theta dif r \
    &= integral_1^3 integral_0^(2pi) - r^2  - r^4 dif theta dif r \
    &= integral_3^1  r^2  + r^4 dif r integral_0^(2pi) dif theta \
    &= 2pi integral_3^1  r^2  + r^4 dif r \
    &= 2pi [r^3/3  + r^5/5]_3^1 \
    &= 2pi (1/3 + 1/5 - 27/3 - 243/5) \
    &= #rect[$ 2pi (26/3 - 242/5) $] \
  $

+ Note that
  $
    #r (x, y) &= angle.l x, y, x sin y angle.r \
    #r _x &= angle.l 1, 0, sin y angle.r \
    #r _y &= angle.l 0, 1, x cos y angle.r \
    #r _x times #r _y &= angle.l - sin y, -x cos y, 1 angle.r \
    #F (#r (x, y)) &= angle.l x y sin y, x^2 sin y, x y angle.r
  $

  Thus

  $
    integral.double_S #F (#r (x,y)) dot dif #S
    &= integral_0^2 integral_0^pi angle.l x y sin y, x^2 sin y, x y angle.r
    dot angle.l - sin y, - x cos y, 1 angle.r dif y dif x \
    &= integral_0^2 integral_0^pi - x y sin^2 y - x^3 cos y + x y dif y dif x \
    &= integral_0^2 -x integral_0^pi y sin^2 y + x^2 cos y - y dif y dif x \
  $

  Let $u = sin^2 y arrow.double dif u = 2 sin y cos y dif y$ and $dif v =
  y dif y arrow.double v = y^2/2$. Then $integral y sin^2 y dif y = y^2/4
  - y/4 sin(2y) - 1/8 cos(2y) + C$. Then

  $
    &= integral_0^2 -x [(y^2 / 4 - y / 4 sin(2y) - 1 / 8 cos(2y))
      + x^2 sin y - y^2 / 2]_0^pi dif x \
    &= integral_0^2 -x [- y / 4 sin(2y) - 1 / 8 cos(2y)
      + x^2 sin y - y^2 / 4]_0^pi dif x \
    &= integral_0^2 -x [- 1 / 8 cos(2pi) - pi^2 / 4 + 1 / 8 cos(0)] dif x \
    &= integral_0^2 -x [- pi^2 / 4] dif x \
    &= pi^2 / 4 integral_0^2 x dif x \
    &= pi^2 / 4 [x^2 / 2]_0^2 \
    &= #rect[$ pi^2 / 2 $] \
  $

#line()

== Problem 12

The temperature at a point in a ball with conductivity $K$ is inversely
proportional to the distance from the center of the ball. Find the rate of heat
flow across the sphere $S$ of radius $a$ with center at the center of the ball
and $a$ is less than the radius of the ball.

=== Answer

Let $T(x,y,z)$ be the temperature of the ball at the point $(x,y,z)$. Since it
is inversely proportional to the distance of that point $||(x,y,z)||$ to the
center of the ball (supposing the ball is centered at the origin),

$ T(x,y,z) = p / sqrt(x^2 + y^2 + z^2) $

where $p$ is a constant that ensures the proportionality. The heat flow $#F$
is given by

$
  #F &= - K gradient T \
  &= -K p angle.l - x/(x^2 + y^2 + z^2)^(3/2), - y/(x^2 + y^2 + z^2)^(3/2),
  - z/(x^2 + y^2 + z^2)^(3/2) angle.r \
  &= K p angle.l  x/(x^2 + y^2 + z^2)^(3/2),  y/(x^2 + y^2 + z^2)^(3/2),
   z/(x^2 + y^2 + z^2)^(3/2) angle.r
$

Since the radius of the sphere is constant $a$, we can parametrize the sphere
using spherical coordinates:

$
  #r (theta, phi)
  = angle.l a sin phi cos theta, a sin phi sin theta, a cos phi angle.r \
  #r _theta = angle.l - a sin phi sin theta, a sin phi cos theta, 0 angle.r \
  #r _phi
  = angle.l a cos phi cos theta, a cos phi sin theta, - a sin phi angle.r \
  #r _theta times #r _phi
  = angle.l - a^2 sin^2 phi cos theta, - a^2 sin^2 phi sin theta,
  -a^2 sin phi cos phi angle.r
$

Note that

$
  #F (#r (x,y)) = K p angle.l (a sin phi cos theta)/a^3,
  (a sin phi sin theta)/a^3, (a cos phi)/a^3 angle.r
$

Therefore, the

$
  integral.double_S #F dot dif #S \
  = integral_0^(2pi) integral_0^(pi) K p angle.l (a sin phi cos theta)/a^3,
  (a sin phi sin theta)/a^3, (a cos phi)/a^3 angle.r dot \
  angle.l - a^2 sin^2 phi cos theta, - a^2 sin^2 phi sin theta,
  -a^2 sin phi cos phi angle.r dif phi dif theta \
  = K p (a^3/a^3) integral_0^(2pi) integral_0^(pi) sin^3 phi cos^2 theta
    + sin^3 phi sin^2 theta + sin phi cos^2 phi dif phi dif theta \
  = K p integral_0^(2pi) integral_0^(pi)
    sin phi dif phi dif theta \
  = - K p integral_0^(2pi) [cos phi]^pi_0 dif theta \
  = - K p integral_0^(2pi) -1 -1 dif theta \
  = 2 K p integral_0^(2pi)  dif theta \
  = #rect[$ 4 pi K p $] \
$
