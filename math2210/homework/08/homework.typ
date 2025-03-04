#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 7")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "February 26th, 2025")

#pagebreak()

= Extreme Value Theorem

== Problem 1

Find the absolute maximum and minimum values of

$ f(x,y) = x + y - x y $

on the closed triangular region with vertices $(0,0), (0,2), (4,0)$.

=== Answer

To find the absolute extrema in the given area, we need to compute all critical
poits of $f$ in the given area, incluiding the bounderies. Note that the
bounderies are paths in $RR^2$, which we can compute as follows:

$
  bold(r)_1 = (0,0) + t(4,0) arrow.r.double.long forall x in [4,0], y = 0 \
  bold(r)_2 = (0,0) + t(0,2) arrow.r.double.long forall y in [0,2], x = 0 \
  bold(r)_3 = (0,2) + t(4,-2) arrow.r.double.long y = 2 - x / 2
$

Thus, as we search for the critical points of $f$, we will consider the following
subdomains of $f$:

+ $f(x,y) forall (x,y) in RR^2$
+ $f(x,0) forall x in RR$
+ $f(0,y) forall y in RR$
+ $f(x,2-x / 2) forall x in RR$

From computation we get:

+ $f_x (x,y) = 1 - y and f_y (x,y) = 1 - x arrow.r.double.long (1,1)$ is a
  critical point.

+ $f_x (x,0) = 1 arrow.r.double.long$ no critical points in this path.

+ Similarly, $f_y (0,y) = 1 arrow.r.double.long$ no critical points in this
  path.

+ Similarly, $f_x (x,2-x/2) = x - 3/2 arrow.r.double.long (3/4, 5/4)$ is a
  critical point.

If we evaluate the function at the given vertices and the critical points and
compare them, we will find the absolute maxmimum and minimum in the area, which
in this case corresponds to $f(4,0)=4$ and $f(0,0)=0$ respectively.

#pagebreak()

= Lagrange Multipliers

== Problem 2

Each of these extreme value problems has a solution with both a maximum value
and a minimum value. Use Lagrange multipliers to find the extreme values of
the function subject to the given constraint.

#set enum(numbering: "(a)")

+ $f(x,y,z) = e^(x y z), 2 x^2 + y^2 + z^2 = 24$

+ $f(x,y,z) = x^4 + y^4 + z^4, x^2 + y^2 + z^2 = 1$

=== Answer

+
$
  gradient f = angle.l y z e^(x y z), x z e^(x y z), x y e^(x y z) angle.r \
  gradient g = angle.l 4x, 2y, 2z angle.r \
$

Solving for the given system:
#set enum(numbering: "(i)")

+ $y z e^(x y z) & = lambda 4 x$,

+ $x z e^(x y z) & = lambda 2 y$

+ $x y e^(x y z) & = lambda 2 z$

If we multiply (i) with $x$ and (ii) with $y$, we get equivalent expressions
we can simplify:

$
  lambda 4x^2 &= lambda 2y^2 \
  2x^2 &= y^2 \
  sqrt(2)x &= y \
$

We can substitute $y$ in the (ii) and (iii) in the following manner:

(ii)
$
  x z e^(x y z) &= lambda 2 y \
  &= lambda 2 sqrt(2)x \
  z e^(x y z) &= lambda 2 sqrt(2) \
  e^(x y z) &= (lambda 2 sqrt(2)) / z \
$

(iii)

$
  x y e^(x y z) & = lambda 2 z \
  sqrt(2) x^2 e^(sqrt(2) x^2 z) & = lambda 2 z \
  (sqrt(2) x^2) ((lambda 2 sqrt(2)) / z) & = lambda 2 z \
  (sqrt(2) x^2) sqrt(2) & = z^2 \
  2 x^2 & = z^2 \
  sqrt(2) x & = z \
$

We can solve for $x=t,y=sqrt(2)t,z=sqrt(2)t$ in $g$:

$
  2 t^2 + 2t^2 + 2t^2 &= 24 \
  6t^2 &= \
  t^2 &= 4 \
  t &= plus.minus 2 \
$

By pluggin $t=plus.minus 2$ into $f(t,sqrt(2)t, sqrt(2)t)$:

$
  e^(plus.minus (2 dot 2 sqrt(2) dot 2 sqrt(2))) &= e^(plus.minus 16)
$

Therefore, $f(2, 2 sqrt(2), 2 sqrt(2)) = e^16$ and $f(-2, -2 sqrt(2),
-2 sqrt(2)) = 1/e^16$ are the absolute maximum and minimum at the level curve,
respectively.

#line(length: 100%)

(b)

$
  gradient f = angle.l 4x^3, 4y^3, 4z^3 angle.r \
  gradient g = angle.l 2x, 2y, 2z angle.r \
$

Note that $forall x_i != 0 in bold(x), (f_(x_i) - lambda g_(x_i) = 0)
arrow.l.r.double.long (lambda = 2x_i^2)$. In other words, there are
three cases we must consider: (i) $exists x_i = 0$, (ii) $exists x_i exists x_j
(x_i= 0), (x_j = 0)$ and (iii) $exists.not x_i = 0$.

(i) Suppose $forall x_i != 0$. Then $ (lambda = 2x_i^2) arrow.r.l.double.long
 (x=y=z=t)$. If we plug $(t,t,t)$ to $g(x,y,z)$, then

$
  g(t,t,t) &= 1 \
  3t^2 &= 1 \
  t^2 &= 1 / 3 \
  t &= plus.minus sqrt(1/3)
$

Which, if plugged into $f$:

$
  f(bold(r)(plus.minus sqrt(1/3))) &= 3(plus.minus sqrt(1/3))^4 \
  &= 3(1 / 9) \
  &= 1 / 3
$

(ii) I owe the next two parts of the work to Rhett, who pointed out that these
cases exists. Suppose $exists x_i = 0$. Without loss of generality, let $x_i = x
= 0$. Then

$
  g(0,t,t) &= 1 \
  2t^2 &= 1 \
  t &= plus.minus sqrt(1/2) \
$

Which, if plugged into $f$:

$
  f(bold(r)(plus.minus sqrt(1/3))) &= 3(plus.minus sqrt(1/2))^4 \
  &= 3 / 8
$

(iii) Suppose $exists (x_i = 0), exists (x_j = 0)$. Let $x_i = x = 0$ and
$x_j = y = 0$. Then

$
  g(0,0,t) &= 1 \
  t^2 &= 1 \
  t &= plus.minus 1 \
$

Which, if plugged into $f$:

$
  f(bold(r)(plus.minus 1)) &= 3(plus.minus 1)^4 \
  &= 1
$

Therefore, $f(sqrt(1/3),sqrt(1/3),sqrt(1/3)) = 1/3$ and $f(1,0,0) = 1$ are the
minimum and maximum at the given surface level, respectively.


#line(length: 100%, stroke: 2pt)

#pagebreak()

== Problem 3

Find the extreme values of the function

$ f(x,y) = 2 x^2 + 3y^2 - 4x - 5 $

on the region described by $x^2 + y^2 <= 16$.

=== Answer

$
  gradient f = angle.l 4(x-1), 6y angle.r \
  gradient g = angle.l 2x, 2y angle.r
$

Note the solving for the critical points in $f$ without bounds to the domain
returns $(1,0)$ as a critical point. Also, $g(1,0) = 1 < 16$. Therefore, $f(1,0)
= -7$ is the only extrema inside the bounded region of the function.

#line(length: 100%)

To find the critical points at the bounderies, we can use Lagrange's method,
were our constraint is redifined as a strict equality $g(x,y) = x^2 + y^2 = 16$.
Note that:

$
  f_y &= lambda g_y \
  6y &= 2 lambda y \
  3y &= lambda y \
$

implies that there are two cases: (i) $y!=0$ and (ii) $y=0$.

(i) Suppose $y!=0$. Then
$
  f_y = lambda g_y arrow.r.l.double.long 3 &= lambda
$

Then, if we plug $lambda = 3$ into $f_x = lambda g_x$:

$
  f_x &= lambda g_x \
  4(x-1) &= 6 x \
  2x-2 &= 3x \
  2x - 3 x &= 2\
  -x &= 2\
  x &= -2
$
Then, we can plug $x=-2$ to our constraint to find $y$:
$
  g(-2, y) &= 16 \
  4 + y^2 &= 16 \
  y^2 &= 12 \
  y &= plus.minus 2sqrt(3)
$

which implies that $f(-2, plus.minus 2sqrt(3)) = 47$ is another potential
extrema in the boundaries.

#line(length: 100%)

Suppose $y=0$. We can solve for $x$ using just the constrain:

$
  g(x,0) &= 16 \
  x^2 &= 16 \
  x &= plus.minus 4
$

which implies that $f(-4,0) = 43$ and $f(4,0) = 11$ are potential extremas in the
boundaries.

#line(length: 100%)

By inspection, $-7 < 19 < 43 < 47$, then $f(1,0) = -7$ and
$f(-2, plus.minus 2 sqrt(3)) = 47$ are the absolute minimum and maximum within
the bounded region of the function.
