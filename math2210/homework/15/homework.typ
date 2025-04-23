// NOTE: Presentation page
#set align(center)

#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 15")

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
#set line(length: 100%)
#set rect(stroke: blue)

#let F = math.bold("F")
#let S = math.bold("S")
#let r = math.bold("r")
#let n = math.bold("n")
#let i = math.bold("i")
#let j = math.bold("j")
#let k = math.bold("k")
#let t = math.bold("t")

// NOTE: Body

= Stokes' Theorem

== Problem 1

Use Stokes' Theorem to evaluate $integral.double_S "curl" #F dot dif #S$ where

$ #F (x,y,z) = e^(x y) #i + e^(x z) #j + x^2 z #k $

and $S$ is the half of the ellipsoid $4x^2 + y^2 + 4z^2 = 4$ that lies to the
right of the $x z$-plane, oriented in the direction of the positive $y$-axis.

=== Answer

From Stokes' theorem, we know that any circuit within $S$ is useful to perform
the integration. From the expression of the boundaries of $S$ we get that

$ y = 2 sqrt(1 - x^2 - z^2) $

can express any of those circuits. If we work with the circuit at the base of
the $x z$ plane (thus, $y=0$ and $x^2 + z^2 = 1$), we can parametrize the
functions in our circuit as a function $#r$ of an angle $theta in [0,2pi)$,
such that

$
  #r (theta) &= sin theta #i + cos theta #k \
  #r' (theta) &= cos theta #i - sin theta #k \
$

Note that

$
  #F (#r (theta)) dot #r' (t)
  &= (#i + e^(sin theta cos theta)#j + sin^2 theta cos theta #k) dot
  (cos theta #i - sin theta #k) \
  &= cos theta (1 - sin^3 theta)
$

Thus

$
  integral.double_S gradient times #F dot dif #S
  &= integral.cont_C #F dot dif #r \
  &= integral_0^(2pi) cos theta (1 - sin^3 theta) dif theta \
  &= integral_0^0 1 - u^3 dif u \
  &= #rect[$ 0 $]
$

#line()

#pagebreak()

== Problem 2

Use Stokes' Theorem to evaluate $integral_C #F dot dif #r$ for each $C$ oriented
counterclockwise as viewed from above.

+ $#F (x,y,z) = #i + (x + y z) #j + (x y - sqrt(z)) #k$ and $C$ is the boundary
  of the part of the plane $3x + 2y + z = 1$ in the first octant.

+ $#F (x,y,z) = 2y #i + x z #j + (x + y) #k$ and $C$ is the curve of
  intersection of the plane $z = y + 2$ and the cylinder $x^2 + y^2 = 1$.

=== Answer

+ We can parametrize the region circumscribed by $S$ as

  $ {(x,y,z) | x in [0,1 / 3], y in [0, (1-3x) / 2], z in [0, 1 - 3x - 2y]} $

  where $#n = 3#i + 2#j + #k$ is the normal vector of the region. According to
  Stokes', we only need a circumscribing circuit, so we can use
  $z = 0 arrow.double.long {(x,y) | x in [0,1/3], y in [0,(1-3x)/2]}$. Also,
  note that $gradient times #F = (x - y)#i - y #j + #k$. Then

  $
    integral.cont_C #F dot dif #S
    &= integral_0^(1/3) integral_0^((1-3x)/2) gradient times #F dot #n dif A \
    &= integral_0^(1/3) integral_0^((1-3x)/2)
    [(x - y)#i - y #j + #k] dot (3#i + 2#j + #k) dif y dif x \
    &= integral_0^(1/3) integral_0^((1-3x)/2) 3(x - y) - 2y + 1 dif y dif x \
    &= integral_0^(1/3) integral_0^((1-3x)/2) 3x - 5y + 1 dif y dif x \
    &= integral_0^(1/3) [3x y- 5/2y^2 + y]_0^((1-3x)/2) dif x \
    &= integral_0^(1/3) 3x ((1-3x)/2) - 5/2((1-3x)/2)^2 + ((1-3x)/2) dif x \
    &= 1/2 integral_0^(1/3) -1/4 + 15/2x -81/4x^2 dif x \
    &= 1/2 [-1/4x + 15/4x^2 -81/12x^3]_0^(1/3) \
    &= [-1/8x + 15/8x^2 - 27/8x^3]_0^(1/3) \
    &= [-1/8(1/3) + 15/8(1/9) - 27/8(1/27)] \
    &= [-1/24 + 5/24 - 1/8] \
    &= #rect[$ 1/24 $] \
  $

+ Since $C$ is the intersection of $z = y+2$ and $x^2 + y^2 = 1$, it corresponds
  to the region $#r (r, theta) = r cos theta #i + r sin theta #j + r cos theta
  + 2$, where ${(r, theta) | r in [0,1], theta in [0, 2pi)}$ in the plane with
  normal $-#j + #k$. Note that

  $
    gradient times #F &= (diff/(diff y) (x+y) - diff/(diff z) (x z))#i
    - (diff/(diff x) (x + y) - diff/(diff z) (2 y))#j + (diff/(diff x) (x z)
    - diff/(diff y) (2 y))#k \
    &= (1-x)#i - #j + (z-2)#k \
  $

  Then

  $
    integral.double_S gradient times #F dot dif #S
    &= integral_0^1 integral_0^(2pi) [1 + (y + 2) - 2] dif A \
    &= integral_0^1 integral_0^(2pi) [1 + y] dif A \
    &= integral_0^1 r integral_0^(2pi) 1 + r sin theta dif theta dif r \
    &= integral_0^1 r  [theta - r cos theta]_0^(2pi) dif r \
    &= 2pi integral_0^1 r dif r \
    &= [pi r^2]_0^1 \
    &= #rect[$ pi $] \
  $


#line()

== Problem 3

Verify that Stokes' Theorem is true for the vector field

$ #F (x,y,z) = - 2y z #i + y #j + 3x #k $

and the surface $S$ that is part of the paraboloid $z = 5 - x^2 - y^2$ that
lies above the plane $z=1$, oriented upward.

=== Answer

Calculating $integral.double_S gradient times #F dot dif #S$:

Since $S$ circumscribes a simply connected region in $RR^3$, we can find a
function $#r: RR^2 arrow RR^3$ that parametrizes $S$. Note that

$
  z &>= 1 \
  5 - x^2 - y^2 &>= 1 \
  4 &>= x^2 + y^2
$

Which corresponds to a disk includint all points with a distance $r >= 2$. In
general,

$ #r (x, y) = x #i + y #j + (5 - x^2 - y^2) #k $

We can also describe this parametrization using polar coordinates:

$ #r (r, theta) = r cos theta #i + r sin theta #j + (5 - r^2) #k $

where $theta in [0,2pi)$ and $r in [0, 2]$. Note that

$
  #r _r &= cos theta #i + sin theta #j - 2 r #k \
  #r _theta &= - r sin theta #i + r cos theta #j \
  #r _r times #r _theta &= 2 r^2 cos theta #i + 2 r^2 sin theta #j + r #k \
  dif #S &= #r _r times #r _theta dif A  \
  &= (2 r^2 cos theta #i - 2 r^2 sin theta + r) dif A
$

Also note that

$
  gradient times #F &= (diff/(diff y) (3x) - diff/(diff z) y)#i -
  (diff/(diff x) 3x - diff/(diff z) (-2y z))#j +
  (diff/(diff x) y - diff/(diff y) (-2y z))#k \
  &= -(2y +3)#j - 2z #k \
  &= -(2 r sin theta + 3)#j + (10 - 2r^2) #k
$

Therefore,

$
  integral.double_S gradient times #F dot dif #S
  &= integral_0^2 integral_0^(2pi) [-(2 r sin theta + 3)#j + (10 - 2r^2)#k]
  dot (2 r^2 cos theta #i + 2 r^2 sin theta #j + r #k) dif theta dif r \
  &= integral_0^2 r integral_0^(2pi) - 4 r^2 sin^2 theta + 6 r sin theta +
  10 - 2r^2 dif theta dif r \
  &= integral_0^2 r [-r^3 (2theta - sin 2 theta) - 6 r cos theta +
  10theta - 2r^2theta]_0^(2pi)  dif theta dif r \
  &= integral_0^2 20pi r - 8pi r^3 dif r \
  &= [10pi r^2 - 2pi r^4 ]_0^2 \
  &= 10pi (4) - 2pi (16) \
  &= #rect[$ 8pi $]
$

#line(stroke: 0.5pt)

Calculating $integral.cont_C #F dot dif #r$:

Note that $S$ circumscribes a simply connected region in $RR^3$. We can also
parametrize the circuit in $S$ at $z=1$ as a function $#r$ of $theta in [0,
2pi)$ such that

$
  #r (theta) = 2 cos theta #i + 2 sin theta #j + #k
$

thus,

$
  dif #r &= #r' (theta) dif theta \
  &= (- 2 sin theta #i + 2 cos theta #j) dif theta
$

Also note that

$
  #F (#r (t)) &= -2(2 sin theta)#i + (2 sin theta)#j + 3(2 cos theta)#k \
  &= -4 sin theta#i + 2 sin theta#j + 6 cos theta#k \
$

Thus

$
  integral.cont_C #F dot dif #r
  &= integral_0^(2pi) (-4 sin theta#i + 2 sin theta#j + 6 cos theta#k) dot
    (-2 sin theta#i + 2 cos theta#j) dif theta \
  &= integral_0^(2pi) 8 sin^2 theta + 4 sin theta cos theta dif theta \
  &= 2 integral_0^(2pi) 2 - 2 cos 2theta + 2 sin theta cos theta dif theta \
  &= 2 [2theta - sin 2theta - sin^2 theta]_0^(2pi) \
  &=  #rect[$ 8pi $] \
$

#pagebreak()

= The Divergence Theorem

== Problem 4

Verify that the Divergence Theorem is true for the vector field

$ #F (x,y,z) = angle.l x^2, -y, z angle.r $

on the region $E$ consisting of the solid cylinder $y^2 + z^2 <= 9, 0 <= x <=
2$.

=== Answer

Calculating $integral.triple_E gradient dot #F dif V$:

We can use a similar coordinate system to the cylindrical to simplify the
integration of this problem. Let $r^2 = y^2 + z^2$ and $theta = tan^(-1) y/z$.
Note that $r^2 <= 9 arrow.double r <= 3$. Note that the codomain of $theta$ is
$[0, 2pi)$. Then our region $E$

$ E = {(x,r cos theta,r sin theta) | x in [0,2], r in [0,3], theta in [0,2pi)} $

Note that

$
  gradient dot #F &= diff/(diff x) x^2 + diff/(diff y) (-y) + diff/(diff z) z \
  &= 2x \
  dif V &= r dif x dif r dif theta
$

Thus,

$
  integral.triple_E gradient dot #F dif V
  &= integral_0^2 integral_0^3 integral_0^(2pi) 2 x r dif x dif r dif theta \
  &= integral_0^2 2 x dif x integral_0^3 r dif r integral_0^(2pi) dif theta \
  &= [x^2]_0^2 [r^2/2]_0^3 [theta]_0^(2pi) \
  &= 4 (9/2)(2pi) \
  &= #rect[$ 36pi $] \
$

#line(stroke: 0.5pt)

Calculating $integral.surf_S #F dot dif #S$:

Since this is a cylinder bordered by the planes $x = 0$ and $x=2$, we must
consider three different surfaces of the cylinder: the surface $S_1$ at $x=2$,
the surface $S_2$ at $x_0$, and the surface $S_3$ corresponding to the neck of
the cylinder.

For $S_3 = {(x,y,z) | x in [0,2], y^2 + z^2 = 3}$, note that we can parametrize
using $x$-oriented cylindrical coordinates with a function that holds the radius
$r=3$ and $theta in [0,2pi)$. Thus,

$
  #r _3 (x, theta) = x#i + 3 cos theta #j + 3 sin theta #k \
  #r _(3, x) &= #i \
  #r _(3, theta) &= - 3 sin theta#j + 3 cos theta \
  #r _(3,x) times #r _(3,theta)
  &= #rect(stroke: red)[$ - 3 cos theta #j - 3 sin theta #k $]
$

Note $#F (#r (x, y)) = x^2#i - 3 cos theta#j + 3 sin theta#k$. Thus,

$
  integral.surf_S_3 #F dot dif S
  &= integral_0^2 integral_0^(2pi) #F (#r _3(x, theta)) dot
  #r _(3, x) times #r _(3, theta) dif theta dif x \
  &= integral_0^2 integral_0^(2pi) (x^2#i - 3 cos theta#j + 3 sin theta#k)
  dot ( - 3 cos theta #j - 3 sin theta #k ) dif theta dif x \
  &= integral_0^2 integral_0^(2pi) 9 cos^2 theta - 9 sin^2 theta
  dif theta dif x \
  &= integral_0^2 9 dif x integral_0^(2pi) cos 2 theta dif x \
  &= 18 [(-sin 2 theta)/2]_0^(2pi) \
  &= #rect(stroke:red)[$ 0 $]
$

With respect to the upper tap $S_1 = {(2,y,z) | y^2 + z^2 <= 9} = {(2,r,theta)
| r in [0,3], theta in [0, 2pi)}$, we can parametrize it as

$
  #r _1 (r, theta) &= 2 #i + r cos theta #j + r sin theta #k \
  #r _(1,r) &= cos theta #j + sin theta #k \
  #r _(1,theta) &= -sin theta #j + cos theta #k \
  #r _(1,r) times #r _(1,theta) &= r #i
$

which implies that $#F (#r _1 (r, theta) = 4#i - r cos theta + r sin theta$. Thus

$
  integral.surf_S_1 #F dot dif S &=
  integral_0^3 integral_0^(2pi) #F (#r _1(r, theta)) dot r#i dif r dif theta \
  &= integral_0^3 integral_0^(2pi) (4#i - r cos theta + r sin theta)
  dot r#i dif r dif theta \
  &= integral_0^3 integral_0^(2pi) 4r dif r dif theta \
  &= 9 (2pi)(4)  \
  &= #rect(stroke:red)[$ 36pi $]  \
$

Finally, we can use a similar argument to the last one to calculate $S_2$,
except that we are interested in the outward direction of this surface

$
  #r _2 (r, theta) &= 0 #i + r cos theta #j + r sin theta #k \
  #r _(2,r) &= cos theta #j + sin theta #k \
  #r _(2,theta) &= -sin theta #j + cos theta #k \
  #r _(2,theta) times #r _(2,r) &= - r #i \
  #F (#r _2 (r, theta) &= - r cos theta + r sin theta
$

And

$
  integral.surf_S_2 #F dot dif S &=
  integral_0^3 integral_0^(2pi) #F (#r _2(r, theta)) dot r#i dif r dif theta \
  &= integral_0^3 integral_0^(2pi) (0#i - r cos theta + r sin theta)
  dot -r#i dif r dif theta \
  &= integral_0^3 integral_0^(2pi) 0 dif r dif theta \
  &= #rect(stroke:red)[$ 0 $]  \
$

We can add all the calculated areas to find the total area of the cylinder:

$
  integral.surf_S #F dot dif S = #rect[$ 36 pi $]
$

#line()

== Problem 5

For each of the following, use the Divergence Theorem to calculate the surface
integral $integral.double_S #F dot dif #S$; that is, calculate the flux of $#F$
across $S$.

+ $#F (x,y,z) = x^2 y z #i + x y^2 z #j + x y z^2 #k$ and $S$ is the surface of
  the box enclosed by the planes $x=0, x=a, y=0, y=b, z=0$, and $z=c$, where
  $a, b, c$ are positive numbers.

+ $#F (x,y,z) = (x^3 + y^3) #i + (y^3 + z^3) #j + (z^3 + x^3) #k$ and $S$ is a
  sphere with center the origin and radius $2$.

=== Answer

+ Note that $
    gradient dot #F
    &= diff/(diff x) x^2 y z + diff/(diff y) x y^2 z + diff/(diff y) x y z^2 \
    &= 6 x y z
  $

  and $E = {(x,y,z) | x in [0,2], y in [0,2], z in [0,2]}$. Thus

  $
    integral.surf #F dot dif #S &= integral.triple_E gradient dot #F dif V \
    &= integral_0^a integral_0^b integral_0^c 6 x y z dif z dif y dif x \
    &= 6 integral_0^a x dif x integral_0^b y dif y integral_0^c z dif z \
    &= #rect[$ 3/4 (a b c)^2 $] \
  $

  #line(stroke: 0.5pt)

+ Since we are integrating a sphere, let $rho = x^2 + y^2 + z^2$ and $dif V =
  rho^2 sin phi dif rho dif phi dif theta$.
  Note that $
    gradient dot #F &= diff/(diff x) (x^3 + y^3) + diff/(diff y) (y^3 + z^3) +
    diff/(diff z) (x^3 + z^3) \
    &= 3(x^2 + y^2 + z^2) \
    &= 3 rho^2
  $

  Then
  $
    integral.surf_S #F dot dif S
    &= integral.triple_D gradient dot #F dif V \
    &= integral_0^2 integral_0^pi integral_0^(2pi)
    (3 rho^2)(rho^2 sin phi) dif rho dif phi dif theta \
    &= 3 integral_0^2 rho^4 dif rho integral_0^pi sin phi dif phi
    integral_0^(2pi) dif theta \
    &= 3/5 [rho^5]_0^2 dot [- cos phi]_0^pi dot [theta]_0^(2pi) \
    &= 3/5 (32) (2) (2 pi) \
    &= #rect[$ 384/5 $]
  $

#line()

== Problem 6

Verify the identify

$ V(E) = 1/3 integral.double_S #F dot dif #S $

where $#F (x,y,z) = x #i + y #j + z #k$ assuming that $S$ and $E$ satisfy the
conditions of the Divergence Theorem.

=== Answer

Note that $gradient dot #F &= diff/(diff x) x + diff/(diff y) y
+ diff/(diff z) z = 3 $. Then

$
  1/3 integral.surf_S #F dot dif #S
  &= 1/3 integral.triple_E gradient dot #F dif x dif y dif z \
  &= 1/3 integral.triple_E 3 dif x dif y dif z \
  &= V(E) \
$

#line()

== Problem 7

Verify the identity

$
  integral.double_S (f gradient g - g gradient f) dot #n dif S =
  integral.triple_S (f gradient^2 g - g gradient^2 f) dif V
$

assuming that $S$ and $E$ satisfy the conditions of the Divergence Theorem and
the scalar functions have continuous second-order partial derivatives.

=== Answer

Note that $gradient f &= angle.l f_x, f_y, f_z angle.r$. Then

$
  gradient dot (f gradient g - g gradient f)
  &= gradient dot [(f g_x - g f_x)#i +(f g_y - g f_y)#j +(f g_z - g f_z)] \
  &= diff / (diff x)(f g_x - g f_x) + diff / (diff y)(f g_y - g f_y)
  + diff / (diff_z)(f g_z - g f_z) \
  &= (f g_(x x) - g f_(x x)) + (f g_(y y) - g f_(y y))
  + (f g_(z z) - g f_(z z)) \
  &= (f g_(x x) + f g_(y y) f g_(z z)) - ( g f_(x x) + g f_(y y) + g f_(z z))
  + (f g_(z z) - g f_(z z)) \
  &= (f gradient^2 g) - (g gradient^2 f) \
$

Then

$
  integral.surf_S (f gradient g - g gradient f) dot #n dif S
  &= integral.surf_S (f gradient g - g gradient f) dif #S \
  &= integral.triple_E gradient dot (f gradient g - g gradient f) dif V \
  &= integral.triple_E (f gradient^2 g - g gradient^2 f) dif V \
$
