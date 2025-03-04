#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 5")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "February 11th, 2025")

#pagebreak()
= Partial Derivatives

== Problem 1

Determine the signs of the partial derivatives for the function $f$ whose graph
is shown (see worksheet). The point $(1,2,f(1,2))$ is marked.

1. $f_x (1,2)$

2. $f_y (1,2)$

3. $f_(x x)(1,2)$

4. $f_(y y)(1,2)$

5. $f_(x y)(1,2)$

6. $f_(y x)(1,2)$

=== Answer

To be honest, I struggled a little bit to answer this questions by inspection
because of the perspective issue of projecting 3D into 2D. I also made the
mistake of not realizing we wanted the derivative at _the given point_. After
checking the solution sheet, I started judging the grids on the surface I was
able to start answering.

Also, it helps projecting a slice going in one of the directions into its
orthogonal plane (at least, that's what I mentally tried).

1. Positive

2. Negative

3. Positive

4. Negative

5. Positive

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 2

Find the first partial derivative of the following functions:

1. $f(x,y) = x^2 - 3y^4$

2. $u(r,theta) = sin(r cos(theta))$


=== Answer

1.
$
  f_x (x,y) &= (diff (x^2 - 3y^4)) / (diff x) \
  &= (diff x^2) / (diff y) - 3y^4 diff(1) / (diff y) \
  &= 2x
$
$
  f_y (x,y) &= diff / (diff y) (x^2 - 3y^4) \
  &= x^2 (diff (1)) / (diff y) - 3 diff(y^4) / (diff y) \
  &= -12y^3
$

#line(length: 100%)

2.
$
  u_r (r,theta) &= (diff sin(r cos theta)) / (diff r) \
  &= (diff sin u) / (diff u) dot cos theta (diff r) / (diff r) \
  &= cos(r cos(theta)) dot cos(theta) \
$
$
  u_theta (r,theta) &= (diff sin(r cos theta)) / (diff theta) \
  &= (diff sin u) / (diff u) dot r (diff(cos theta)) / (diff theta) \
  &= cos(r cos theta) dot - r sin theta
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 3

Use implicit differentiation to find $(diff z)/(diff x)$ and $(diff z)/
(diff y)$ if

$ y z + x ln y = z^2 $

=== Answer

$
  (diff (y z)) / (diff x) + ln y diff(x) / diff(x) &= (diff z^2) / (diff x) \
  y (diff z) / (diff x) + ln y &= 2z (diff z) / (diff x) \
  ln y &= 2z (diff z) / (diff x) - y (diff z) / (diff x) \
  &= (diff z) / (diff x) (2z - y) \
  (ln y) / (2z - y) &= (diff z) / (diff x)
$

#line(length: 100%)

$
  (diff (y z)) / (diff y) + diff(x ln y) / (diff y) &= (diff z^2) / (diff y) \
  z + y (diff z) / (diff y) + x / y &= 2z (diff z) / (diff y) \
  z + x / y &= 2z (diff z) / (diff y) - y (diff z) / (diff y) \
  &= (2z - y) (diff z) / (diff y) \
  (z + x / y) / (2z - y) &= (diff z) / (diff y) \
  z / (2z - y) + x / y(2z - y) &= \
  (z y + x) / y(2z - y) &= \
$


#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 4

Find all the second partial derivatives of the function

$ w(u, v) = sqrt(1 + u v^2) $

=== Answer

$
  w_u (u, v) &= (diff sqrt(1 + u v^2)) / (diff u) \
  &= (diff x^(1 / 2)) / (diff x) dot (diff (1 + u v^2)) / (diff u) \
  &= 1 / (2 sqrt(1 + u v^2)) dot v^2
  &= v^2 / (2 sqrt(1 + u v^2))
$

#line(length: 100%)

$
  w_(u u) (u, v) &= diff / (diff u) (v^2 / (2 sqrt(1 + u v^2))) \
  &= v^2 / 2 dot diff / (diff u) ((1 + u v^2)^(-1 / 2)) \
  &= -v^4 / 4 dot (1 + u v^2)^(-3 / 2)) \
  &= -v^4 / (4sqrt((1 + u v^2)^3))
$

#line(length: 100%)

$
  w_(u v) (u, v) &= diff / (diff v) (v^2 / (2 sqrt(1 + u v^2))) \
  &= 1 / 2 diff / (diff v) (v^2 (1 + u v^2)^(-1 / 2)) \
  &= 1 / 2 ((diff v^2) / (diff v) (1 + u v^2)^(-1 / 2) + v^2 diff / (diff v) (1 + u v^2)^(-1 / 2) ) \
  &= 1 / 2 ((2v) / sqrt(1 + u v^2) -2u v^3 / (2 (1 + u v^2)^(3 / 2))) \
  &= 1 / 2 ((2v) / sqrt(1 + u v^2) -(2u v^3) / (2 (1 + u v^2)^(3 / 2))) \
$

#pagebreak()

= Tangent Planes and Linear Approximation

== Problem 5

Find an equation of the tangent plane to the surface given by

$ z = x / y^2 $

at the point $(-4,2,-1)$.

=== Answer

Let $(x_0, y_0, z_0)$ be the given point, and let $T$ be the tangent plane to
the function $z$. Therefore, $T = z - z_0 = (diff z)/(diff x)(x - x_0) +
(diff z)/(diff y)(y - y_0)$.

$
  (diff z) / (diff x) bar.v_(-4,2,-1) &= diff / (diff x) (x / y^2) \
  &= (diff x) / (diff x) (1 / y^2) + x (diff y^(-2)) / (diff x) \
  &= 1 / y^2 -(2x) / (y^3) dot (diff y) / (diff x) \
  &= 1 / y^2 \
  &= 1 / 4
$

#line(length: 100%)

$
  (diff z) / (diff y) bar.v_(-4,2,-1) &= diff / (diff y) (x / y^2) \
  &= (diff x) / (diff y) (1 / y^2) + x (diff y^(-2)) / (diff y) \
  &= (diff x) / (diff y) (1 / y^2) - (2 x) / y^3 \
  &= - (2 x) / y^3 \
  &= - (2 (-4)) / (2)^3 \
  &= 8 / 8 \
  &= 1 \
$

#line(length: 100%)

Therefore:

$
  z &= 1 / 4 (x + 4) + (y - 2) - 1 \
  &= x / 4 + y - 2
$

is the equation for the tagent plane at $(-4,2,1)$.

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 6

Verify the linear approximation

$ (y-1) / (x+1) approx x + y - 1 $

at $(0,0)$.

=== Answer

Let $z = (y-1)/(x+1)$, and $(x_0, y_0) = (0,0)$. Then

$
  z_0 = z(0, 0) = (0-1) / (0+1) = -1
$

We know that the linear approximation of $z$ at the point $(x_0, y_0, z_0)$ can
be found using the following formula:

$ z - z_0 = z_x (x - x_0) + z_y (y - y_0) $

From computation, we know that:

$
  z_x |_((0,0,-1)) &= diff / (diff x) ((y-1) / (x+1))|_((0,0,-1)) \
  &= diff / (diff x) ((y-1) (x+1)^(-1))|_((0,0,-1)) \
  &= (diff (y - 1)) / (diff x) (1 / (x+1)) + (diff (x+1)^(-1)) / (diff x) (y-1)|_((0,0,-1)) \
  &= (diff (x+1)^(-1)) / (diff x) (y-1)|_((0,0,-1)) \
  &= (1-y) / (x+1)^2 |_((0,0,-1)) \
  &= 1
$

#line(length: 100%)

$
  z_y|_((0,0,-1)) &= diff / (diff y) ((y-1) / (x+1))|_((0,0,-1)) \
  &= diff / (diff y) ((y-1) (x+1)^(-1))|_((0,0,-1)) \
  &= (diff (y - 1)) / (diff y) (1 / (x+1)) + (diff (x+1)^(-1)) / (diff y) (y-1)|_((0,0,-1)) \
  &= 1 / (x+1) \
  &= 1
$

#line(length: 100%)

Therefore:

$
  z + 1 &= 1x + 1y \
  z &= x + y - 1 \
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 7

Given that $f$ is a differentiable function with $f(2,5) = 6, f_x (2,5) = 1
"and" f_y (2,5) = -1$, use linear approximation to estimate $f(2.2, 4.9)$.

=== Answer

We can approximate $f(x, y) approx (x - 2) + (y + 5) + 6 = x - y + 9$.
If we plug in $(2.2,4.9)$, we get

$
  f(2.2,4.9) &= 2.2 - 4.9 + 9 \
  &= 6.3
$

#line(length: 100%, stroke: 2pt)

== Problem 8

Find the differential of the function $u = sqrt(x^2 + 3y^2)$.

=== Answer

We know that $d u = (diff u)/(diff x) d x + (diff u)/(diff y) + d y$,

$
  u_x &= diff / (diff x) sqrt(x^2+3y^2) \
  &= 1 / (2sqrt(x^2+3y^2)) diff / (diff x) (x^2 + 3y^2) \
  &= x / sqrt(x^2+3y^2) \
$

#line(length: 100%)

$
  u_y &= diff / (diff y) sqrt(x^2+3y^2) \
  &= 1 / (2sqrt(x^2+3y^2)) diff / (diff y) (x^2 + 3y^2) \
  &= (3y) / sqrt(x^2+3y^2) \
$

#line(length: 100%)
Then,

$
  d u &= x / sqrt(x^2+3y^2) d x + (3y) / sqrt(x^2+3y^2) d y \
  &= (x d x + 3y d y) / sqrt(x^2+3y^2)
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 9

The length and width of a rectangle are measured as $30" "c m$ and $24" "c m$,
respectively, with an error in measurement of at most $0.1" "c m$ in each. Use
differentials to estimate the maximum error in the calculated area of the
rectangle.

=== Answer

We know that the area of a rectangle $A$ is a function of its base $b$ and
height $h$: $A = b h$. Therefore, its differential $d A$ is given as

$ d A = (diff A) / (diff b) d b + (diff A) / (diff h) d h $

where $d b = d h = 0.1" "c m$. Then

$
  (diff A) / (diff b) = diff / (diff b) b h = h
$

$
  (diff A) / (diff h) = diff / (diff h) b h &= b
$

Therefore,

$
  d A &= 24(0.1) + 30(0.1) \ &= 5.4
$

or our estimate of the maximum error is $5.4" "c m$.

#pagebreak()

= The Chain Rule

== Problem 10

Use the chain rule to find $(d z)/(d t)$ and $(d w)/(d t)$.

1. $z = x y^3 - x^2 y$, where $x = t^2 +1$ and $y = t^2 -1$.

2. $w = ln sqrt(x^2 + y^2 + z^2)$, where $x = sin t$, $y = cos t$, $z = tan t$.

=== Answer

#line(length: 100%, stroke: 2pt)

1.

$ (d x) / (d t) = (d y) / (d t) = 2t $

$
  (diff z) / (diff x) &= diff / (diff x) (x y^3 - x^2 y) &= y^3 - 2 x y
$

$
  (diff z) / (diff y) &= diff / (diff y) (x y^3 - x^2 y) &= 3x y^2 - x^2
$

$
  (d z) / (d t) &= 2t((y^3 - 2y x) + (3x y^2 - x^2)) \
  &= 2t[((t^2-1)^3 - 2(t^2-1)(t^2+1)) + (3(t^1+1) (t^2-1)^2 - (t^2+1)^2)] \
$

#line(length: 100%)

2.
$
  (d w) / (d t) = (diff w) / (diff x) (d x) / (d t)
  + (diff w) / (diff y) (d y) / (d t) + (diff w) / (diff z) (d z) / (d t)
$

$
  (d x) / (d t) = cos t, (d y) / (d t) = - sin t, (d z) / (d t) = sec^2 t
$

$
  (diff w) / (diff x) &= (diff) / (diff x) ln sqrt(x^2 + y^2 + z^2) \
  &= 1 / sqrt(x^2 + y^2 + z^2) (diff) / (diff x) sqrt(x^2 + y^2 + z^2) \
  &= 1 / sqrt(x^2 + y^2 + z^2) (1 / (2 sqrt(x^2 + y^2 + z^2)))
  ((diff) / (diff x)(x^2 + y^2 + z^2)) \
  &= (1 / (2 (x^2 + y^2 + z^2))) (2x) \
  &= x / ( (x^2 y^3 + z^2)) \
  &= (sin t) / (sin^2 t + cos^2 t + tan^2 t) \
  &= (sin t) / (1 + tan^2 t)
$

$
  (diff w) / (diff y) &= (diff) / (diff y) ln sqrt(x^2 + y^2 + z^2) \
  &= 1 / sqrt(x^2 + y^2 + z^2) (1 / (2 sqrt(x^2 + y^2 + z^2)))
  ((diff) / (diff y)(x^2 + y^2 + z^2)) \
  &= (1 / (2 (x^2 + y^2 + z^2))) (2y) \
  &= y / ( (x^2 y^3 + z^2)) \
  &= (cos t) / (sin^2 t + cos^2 t + tan^2 t) \
  &= (cos t) / (1 + tan^2 t)
$

$
  (diff w) / (diff z) &= (diff) / (diff z) ln sqrt(x^2 + y^2 + z^2) \
  &= 1 / sqrt(x^2 + y^2 + z^2) (1 / (2 sqrt(x^2 + y^2 + z^2)))
  ((diff) / (diff z)(x^2 + y^2 + z^2)) \
  &= (1 / (2 (x^2 + y^2 + z^2))) (2z) \
  &= z / ( (x^2 y^3 + z^2)) \
  &= (tan t) / (sin^2 t + cos^2 t + tan^2 t) \
  &= (tan t) / (1 + tan^2 t)
$

Then,

$
  (d w) / (d t) &= (sin t) / (1 + tan^2 t) (cos t) +
  (cos t) / (1 + tan^2 t) (- sin t) + (tan t) / (1 + tan^2 t) (sec^2 t) \
  &= (sin t cos t) / (1 + tan^2 t) - (sin t cos t) / (1 + tan^2 t) +
  (tan t) / (cos^2 t (1 + tan^2 t)) \
  &= (tan t) / (cos^2 t + sin^2 t) \
  &= tan t
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 11

Use the chain rule to find $(diff z)/(diff s)$ and $(diff z)/(diff t)$ if

$ z = sqrt(x) e^(x y), "where" x = 1 + s t "and" y = s^2 - t^2 $

=== Answer

$
  (diff z) / (diff t) = (diff z) / (diff x)(diff x) / (diff t) +
  (diff z) / (diff y)(diff y) / (diff t)
$

$
  (diff x) / (diff t) = s, (diff y) / (diff t) = -2t
$

$
  (diff z) / (diff x) = diff / (diff x) sqrt(x)e^(x y)
  = e^(x y) / (2sqrt(x)) + sqrt(x) y e^(x y)
  = e^(x y) ( 1 / (2sqrt(x)) + sqrt(x) y)
$

$
  (diff z) / (diff y) = diff / (diff y) sqrt(x)e^(x y)
  = sqrt(x^3) e^(x y)
$

$
  (diff z) / (diff t)
  &= s(e^(x y) / (2sqrt(x)) + sqrt(x) y e^(x y)) - 2t(sqrt(x^3) e^(x y)) \
  &= e^(sqrt(1-s t) (s^2 + t^2))
  (s( 1 / (2 sqrt(1-s t)) + sqrt(1- s t) (s^2 + t^2))- 2t sqrt((1 - s t)^3 ))
$

#line(length: 100%)
Note that $(diff z)/(diff x)$ and $(diff z)/(diff y)$ have been computed.
$
  (diff z) / (diff s) = (diff z) / (diff x)(diff x) / (diff s) +
  (diff z) / (diff y)(diff y) / (diff s)
$

$
  (diff x) / (diff s) = t, (diff y) / (diff s) = 2s
$

$
  (diff z) / (diff s)
  &= t(e^(x y) / (2sqrt(x)) + sqrt(x) y e^(x y)) + 2s(sqrt(x^3) e^(x y)) \
  &= e^(sqrt(1-s t) (s^2 + t^2))
  (t( 1 / (2 sqrt(1-s t)) + sqrt(1- s t) (s^2 + t^2)) + 2s sqrt((1 - s t)^3 ))
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 12

Use the chain rule to find $(diff w)/(diff r)$ and $(diff w)/(diff theta)$ if

$
  w = x y + y z + z x
  "where" x = r cos theta, y = r sin theta "and" z = r theta
$

when $r=2$ and $theta = pi/2$.

=== Answer

We know that for $(r,theta) = (2, pi/2)$, $x = 0$, $y = 2$, $z = pi$. Also:

$
  (diff w) / (diff r) = (diff w) / (diff x)(diff x) / (diff r) +
  (diff w) / (diff y)(diff y) / (diff r) + (diff w) / (diff z)(diff z) / (diff r)
$

$
  (diff x) / (diff r) &= cos theta = , (diff y) / (diff r) = sin theta,
  (diff z) / (diff r) = theta
$

$
  (diff w) / (diff x) &= (diff x y) / (diff x) +
  (diff y z) / (diff x) + (diff x z) / (diff x) \
  &= y + z \
$

$
  (diff w) / (diff y) &= (diff x y) / (diff y) +
  (diff y z) / (diff y) + (diff x z) / (diff y) \
  &= x + z \
$

$
  (diff w) / (diff z) &= (diff x y) / (diff z) +
  (diff y z) / (diff z) + (diff x z) / (diff z) \
  &= x + y \
$

Therefore,

$
  (diff w) / (diff r) |_((2,pi / 2)) &= (2+pi)(0) + (pi)(1) + (pi)(pi / 2) \
  &= 2 pi
$

#line(length: 100%)

$
  (diff w) / (diff theta) = (diff w) / (diff x)(diff x) / (diff theta) +
  (diff w) / (diff y)(diff y) / (diff theta) + (diff w) / (diff z)(diff z) / (diff theta)
$

$
  (diff x) / (diff r) &= - sin theta , (diff y) / (diff r) = cos theta,
  (diff z) / (diff r) = r
$

$
  (diff w) / (diff r) |_((2,pi / 2)) &= (2+pi)(-2) + (pi+0)(0) + (2)(0 + 2) \
  &= -4 -2pi + 4 \
  &= -2pi
$
#line(length: 100%, stroke: 2pt)

== Problem 13

Use the equations

$
  (diff z) / (diff x) = -((diff F) / (diff x)) / ((diff F) / (diff z)) \
  (diff z) / (diff y) = -((diff F) / (diff y)) / ((diff F) / (diff z))
$

to compute $(diff z) / (diff x)$ and $(diff z) / (diff y)$, where

$
  y z + x ln y = z^2
$

=== Answer

Let the given equation be $F(x,y,z)$. Then

$
  (diff F) / (diff x) = ln y \
  (diff F) / (diff y) = z + x / y \
  (diff F) / (diff z) = y - 2z
$

Therefore,

$
  (diff z) / (diff x) = - (ln y) / (y - 2z) \
  (diff z) / (diff y) = -(z + x / y) / (y - 2z) = - (z y + x) / (y(y-2z))
$

== Problem 14

The radius of a right circular cone is increassing at a rate of $1.8$ _in/s_
while its height is decreasing at a rate of $2.5$ _in/s_. At what rate is the
volume of the cone changin when the radius is $120$ _in_ and the height is
_140_ in?

=== Answer

Let the volume of the cone be a function $V(r, h) = 1/3 pi r^2 h$. From chain
rule, we know that

$ (d V) / (d t) = (diff V) / (diff r) (d r) / (d t) + (diff V) / (diff h) (d h) / (d t) $

where $(d r)/(d t)$ and $(d h)/(d t)$ are the rate of change of the radius and
height of the cone with respect of time, respectively. Then,

$
  (diff V) / (diff r) = 2 / 3 pi r h, " and " (diff V) / (diff h) = 1 / 3 pi r^2
$

Therefore, for $r = 120, h=140, (d r)/(d t)=1.8, (d h)/(d t)=2.5$:

$
  (d V) / (d t) &= pi (10 / 18)(2 / 3)(140)(100) + pi(25/10)(1 / 3)(120)^2 \
  &= 40(271400 / 9)pi \
  & approx 3789458.872
$

== Problem 15

Show that any function of the form

$
  z = f(x + a t) + g(x - a t)
$

is a solution of the wave equation

$
  (diff^2 z) / (diff t^2) = a^2 (diff^2 z) / (diff x^2)
$

_Hint: Let $u = x + a t$ and $v = x - a t$._

=== Answer

Note that $(diff z)/(diff t) = (diff f)/(diff t) + (diff g)/(diff t)$ and
$(diff z)/(diff x) = (diff f)/(diff x) + (diff g)/(diff x)$. From computation,
we know that

$
  (diff f) / (diff t) &= (d f) / (d u) (diff u) / (diff t) \
  &= a (d f) / (d u) \ &= a f'(u)
$
$
  (diff g) / (diff t) &= (d g) / (d v) (diff v) / (diff t) \
  &= -a (d g) / (d v) \ &= -a g'(v)
$
$
  (diff f) / (diff x) &= (d f) / (d u) (diff u) / (diff t) \
  &= (d f) / (d u) \ &= f'(u)
$
$
  (diff g) / (diff x) &= (d g) / (d v) (diff v) / (diff t) \
  &= (d g) / (d v) &= g'(v)
$

Then $(diff z)/(diff t) = a f'(u) - a g'(v)$, and $(diff z)/(diff x)
= f'(u) + g'(v)$. Now,

$
  (diff^2 z) / (diff t^2) &= (diff) / (diff t) (diff z) / (diff t) \
  &= a (diff) / (diff t) (f'(u) - g'(v)) \
  &= a ((diff) / (diff t) f'(u) - (diff) / (diff t) g'(v)) \
  &= a (a f''(u) - (-a) g'(v)) \
  &= a^2 (f''(u) + g''(v)) \
$

and

$
  (diff^2 z) / (diff x^2) &= (diff) / (diff x) (diff z) / (diff x) \
  &= (diff) / (diff x) (f'(u) + g'(v)) \
  &= ((diff) / (diff x) f'(u) + (diff) / (diff t) g'(v)) \
  &= f''(u) + g''(v) \
$

Therefore $a^2 (diff^2 z) / (diff x^2) = (diff^2 z) / (diff t^2)$. $qed$

Honestly, while I was able to solve this problem with one of the tutors, I'm
still a little uncertain of the way I'm manipulating the composition of this
functions. I see that we have a succession of chain rules: we simplify the
input in the first part in order to find some total derivatives, then we
find the derivative of those totals by looking at their partials... It might
take a bit...

