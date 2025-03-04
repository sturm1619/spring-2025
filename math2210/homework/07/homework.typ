#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 7")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "February 18th, 2025")

#pagebreak()

= Directional Derivatives and the Gradient Vector

== Problem 1

Find the directional derivative of the function at the given point $P$ in the
direction of the vector $bold(v)$.

1. $f(x,y) = x / (x^2+y^2), P = (1,2), bold(v) = angle.l 3, 5 angle.r$

2. $f(x,y,z ) = x y^2 tan^(-1) z, P = (2,1,1), bold(v) = angle.l 1,1,1 angle.r$

=== Answer

Let $bold(u)$ be the unit vector in $RR^n$ with the same direction as $bold(v)$. Let
$u_i$ be the $i$th component of $bold(u)$. Then

$ D_bold(u) f(bold(x)) = sum_(i=1)^n u_i f_(x_i) (bold(x)) $

1.

$
  bold(u) &= bold(v) / (|bold(v)|) \
  &= 1 / sqrt(3^2 + 5^2) angle.l 3, 5 angle.r \
  &= 1 / sqrt(34) angle.l 3, 5 angle.r \
  &= angle.l 3 / sqrt(34), 5 / sqrt(34) angle.r \
$

#line(length: 100%, stroke: .5pt)

$
  (diff f) / (diff x) &= (diff x) / (diff x) 1 / (x^2+y^2) +
  x (diff) / (diff x)(x^2+y^2)^(-1) \
  &= 1 / (x^2+y^2) - (2x^2) / (x^2+y^2)^2 \
  &= (x^2+y^2 - 2x^2) / (x^2+y^2)^2 \
  &= (y^2 - x^2) / (x^2+y^2)^2 \
$

#line(length: 100%, stroke: .5pt)

$
  (diff f) / (diff y) &= (diff x) / (diff y) 1 / (x^2+y^2) +
  x (diff) / (diff y)(x^2+y^2)^(-1) \
  &= - (2x y) / (x^2+y^2)^2 \
$

#line(length: 100%, stroke: .5pt)

$
  D_bold(u) f(bold(x))
  &= 3 / sqrt(34) ((y^2 - x^2) / (x^2 + y^2)^2)
  - 5 / sqrt(34) ((2x y) / (x^2+y^2)^2) \
  &= 1 / (sqrt(34) (x^2+y^2)^2) (3(y^2 - x^2) - 5(2x y)) \
  &= (3y^2 - 10 x y - 3x^2) / (sqrt(34) (x^2+y^2)^2)
$

#line(length: 100%, stroke: .5pt)

$
  D_bold(u) f(P)
  &= (3(2^2) - 10 (1) (2) - 3(1^2)) / (sqrt(34) (1^2+2^2)^2) \
  &= (3(4) - 10 (2) - 3) / (sqrt(34) (1+4)^2) \
  &= (12 - 20 - 3) / (25 sqrt(34) ) \
  &= - 11 / (25 sqrt(34) )
$

#line(length: 100%)

2.

$
  bold(u) &= 1 / sqrt(1^2 + 1^2 + 1^2) angle.l 1, 1, 1 angle.r \
  &= angle.l 1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3) angle.r \
$

#line(length: 100%, stroke: .5pt)

$
  (diff f) / (diff x) &= y^2 tan^(-1)(z) \
  (diff f) / (diff y) &= 2x y tan^(-1)(z) \
  (diff f) / (diff z) &= (x y^2) / (1+z^2)
$

#line(length: 100%, stroke: .5pt)

$
  D_bold(u) f(bold(x))
  &= y / sqrt(3) (y tan^(-1) z + 2x tan^(-1) z + (x y^2) / (1 + z^2)) \
$

#line(length: 100%, stroke: .5pt)

$
  D_bold(u) f(2,1,1)
  &= 1 / sqrt(3) (1 tan^(-1) (1) + 2(2) tan^(-1) (1) + (2 (1^2)) / (1 + 1^2)) \
  &= 1 / sqrt(3) (pi / 4 + (4) pi / 4 + 2 / 2)\
  &= 1 / sqrt(3) (pi / 4 + pi + 1)\
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 2

Find the maximum rate of change of

$ f(x,y,z) = x ln(y z) $

at the point $P = (1,2,1/2)$ at the direction in which it occcurs.

=== Answer

The maximum rate of change of $f$ at $P$ is given by $|gradient f(P)|$, and it's
direction is $(gradient f)/(|gradient f|)$.

$
  f_x &= ln(y z) \
  f_y &= x / y \
  f_z &= x / z \
$
#line(length: 100%)
$
  gradient f(P) &= angle.l ln(2/2), 1 / 2, 2 angle.r \
  &= angle.l 0, 1 / 2, 2 angle.r \
$

$
  |gradient f(P)| &= |angle.l 0, 1 / 2, 2 angle.r| \
  &= |sqrt(1 / 4 + 4) \
  &= |sqrt(17 / 4) \
$


$
  (gradient f(P)) / (|gradient f(P)|) &=
  2 / sqrt(17) angle.l 0, 1 / 2, 2 angle.r \
  &= angle.l 0, 1 / sqrt(17), 4 / sqrt(17) angle.r \
$

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 3

Find equations of

1. the tangent plane and

2. the normal line to the surface

$ x = y^2 + z^2 + 1 $

at the point $P = (3,1,-1)$. _Hint: Recall that the normal line is the line through
the point that is orthogonal to the surface._

=== Answer

1. The equation for the tangent planes to the equation is given by

$ gradient f(x,y,z) dot bold(r)'(t) $

Then

$
  gradient f(x,y,z) &= angle.l 1, -2y, -2z angle.r \
  gradient f(P) &= angle.l 1, -2, 2 angle.r
$

Which is the normal vector to the tangent plane of $f$ at $P$. The equation of
the tangent plane is:

$
  x - 3 - 2(y - 1) + 2(z + 1) = 0
$

#pagebreak()

= Maximum and Minimum values


== Problem 4

Suppose $(0,2)$ is a critical point of a function $g$ with continuous second
derivative. In each case below, what can you say about $g$? Explain your
reasoning.

1. $g_(x x) (0,2) = -1$, $g_(x y) (0,2) = 6$, $g_(x y) (0,2) = 1$
2. $g_(x x) (0,2) = -1$, $g_(x y) (0,2) = 2$, $g_(x y) (0,2) = -8$
3. $g_(x x) (0,2) = 4$, $g_(x y) (0,2) = 6$, $g_(x y) (0,2) = 9$

=== Answer

We can use the determinant of Hessian matrix $mat(delim:"|", f_(x x), f_(x y);
  f_(y x), f_(y y))$ to reach conclusions about the point and the function.

1.
$
  f_(x x)(0,2) f_(y y)(0,2) - [f_(x y)(0,2)]^2
  &= -1(1) - 6^2 \
  &= -37 < 0 \
$

Therefore, $(0,2)$ is a saddle point.

2.
$
  f_(x x)(0,2) f_(y y)(0,2) - [f_(x y)(0,2)]^2
  &= -1(-8) - 2^2 \
  &= 8 - 4 \
  &= 4 > 0 \
$

Also, $f_(x x) > 0$. Therefore, $(0,2)$ is a local maximum at $f$.

3.
$
  f_(x x)(0,2) f_(y y)(0,2) - [f_(x y)(0,2)]^2
  &= 4(9) - 6^2 \
  &= 36 - 36 \
  &= 0 \
$

Therefore, the test is inconclusive about the relation between $(0,2)$ and $f$.

#line(length: 100%, stroke: 2pt)
#pagebreak()

== Problem 5

Find the local extrema and the saddle point(s) of the given function.

1. $f(x,y) = y(e^x - 1)$

2. $f(x,y) = x y e^(-(x^2+y^2) / 2)$

== Answer

Given $f: RR^n arrow.r RR, bold(x) in RR^n, bold(v) in RR^n$, the critical points
of $f(bold(x))$ are the points for which $forall bold(u) = 1/(|bold(v)|)
bold(v), D_bold(u) f(bold(x)) = 0$. Then, we can use the second derivative
test to infer about the given critical points.

1. $f(x,y) = y(e^x - 1)$

$
  f_x &= diff / (diff x) y e^x - y \
  &= y diff / (diff x) e^x - (diff y) / (diff x) \
  &= y e^x
$

If $y = 0$, then any $f_(x)(x,y) = 0$. If $y != 0$, then

$
  y e^x &= 0 \
  e^x &= -y \
  x &= ln(-y) \
$

Therefore, $(f_x(x, y) = 0) arrow.r.l.double.long (y < 0 and x = ln(-y)) or
(y = 0)$.

#line(length: 100%, stroke: .5pt)
$
  f_y &= diff / (diff y) y e^x - y \
  &= e^x diff / (diff y) y - (diff y) / (diff y) \
  &= e^x - 1
$

$
  e^x - 1 &= 0 \
  e^x &= 1 \
  x &= 0 \
$

Therefore, $forall y, x = 0 arrow.r.long.double f_y(x,y) = 0$.

#line(length: 100%, stroke: .5pt)

Since $f$ is a continuous function, and the conditions for critical point
require $x = 0$, and $exists.not y != 0 " "(ln(-y) = 0)$, then $(0,0)$ is only
critical point at $f$.

#line(length: 100%, stroke: .5pt)

If we use the determinant of the Hessian matrix in the second derivative test:

$
  f_(x x)(x, y) &= y e^x \
  f_(y x)(x, y) &= e^x \
  f_(y x)(x, y) &= 0 \
$

$
  mat(delim: "|", f_(x x), f_(x y); f_(y x), f_(y y))
  &= mat(delim: "|", y e^x, e^x; e^x, 0) \
  &= (0)y e^x - (e^x)^2 \
  &= - e^(2x) \
$

Since $- e^(2x)|_(x=0,y=0) = -1$, $(0,0)$ is a saddle point in $f$.

#line(length: 100%)

#pagebreak()

2. $f(x,y) = x y e^(-(x^2+y^2) / 2)$

$
  f_x &= diff / (diff x) (x y e^(-(x^2+y^2) / 2)) \
  &= y ((diff x) / (diff x) e^(-(x^2+y^2) / 2)
    + x diff / (diff x) (e^(-(x^2+y^2) / 2))) \
  &= y (e^(-(x^2+y^2) / 2) - x^2 e^(-(x^2+y^2) / 2)) \
  &= (1 - x^2)y e^(-(x^2+y^2) / 2) \
$

Here, I made the mistake of trying to solve the derivative at $0$. When it got
too complicated, I checked the solution sheet to see what method was employed,
when I saw that the $e$ factor could never be equal to $0$. This means that
$forall x in RR, y = 0 arrow.r.l.double.long f_x = 0$ and $forall y in RR, x =
plus.minus 1 arrow.r.l.double.long f_x = 0$.

#line(length: 100%, stroke: .5pt)

$
  f_y &= diff / (diff y) (x y e^(-(x^2+y^2) / 2)) \
  &= x ((diff y) / (diff y) e^(-(x^2+y^2) / 2)
    + y diff / (diff y) (e^(-(x^2+y^2) / 2))) \
  &= y (e^(-(x^2+y^2) / 2) - y^2 e^(-(x^2+y^2) / 2)) \
  &= (1 - y^2)x e^(-(x^2+y^2) / 2) \
$

In this case, we have a similar argument to the solutions of $f_x$, except that
now $x=0$ and $y = plus.minus 1$. Or, more formally, $forall y in RR, x = 0
arrow.r.l.double.long f_y = 0$ and $forall x in RR, y =
plus.minus 1 arrow.r.l.double.long f_y = 0$

#line(length: 100%, stroke: .5pt)

Let's check a couple of cases where a point $(x,y)$ could be a critical point.

- Let $x = 0$, implying $f_y = 0$. Then, for $(x, y)$ to be a critical point, $f_x = 0 arrow.r.double.long x = plus.minus 1$ or $y = 0$. Since we established $x = 0$, then $y = 0$. The same happens if we let $y = 0$ and then try to find a suitable value for $x$.

- Let $x = plus.minus 1$, implying $f_x = 0$. Then, for $(x, y)$ to be a critical point, $f_y = 0 arrow.r.double.long y = plus.minus 1$ or $x = 0$. Since we established $x = plus.minus 1$, then $y = plus.minus 1$.

Therefore, ${(-1,-1), (-1,1), (0,0), (1,-1), (1,1)}$ is the set of critical points
of $f$.

#line(length: 100%, stroke: .5pt)


$
  f_(x x)(x,y) &= (diff) / (diff x) f_x \
  f_(x x)(x,y) &= y e^(-(x^2+y^2) / 2) (diff) / (diff x) (1 - x^2) +
  (1 - x^2) (diff) / (diff x) (y e^(-(x^2+y^2) / 2)) \
  f_(x x)(x,y) &= - 2x e^(-(x^2+y^2) / 2) +
  (1 - x^2) (y e^(-(x^2+y^2) / 2)) (diff) / (diff x)(-(x^2+y^2) / 2) \
  f_(x x)(x,y) &= - 2x e^(-(x^2+y^2) / 2) +
  (1 - x^2) (y e^(-(x^2+y^2) / 2)) (-x) \
  f_(x x)(x,y) &= x y(x^2 - 3) e^((-x^2+y^2) / 2) \
$
#line(length: 100%, stroke: .5pt)

(Note that computations for $f_(x x)$ and $f_(y y)$ are similar.)

$
  f_(y y)(x,y) &= (diff) / (diff y) f_y \
  &= x y(y^2 - 3) e^((-x^2+y^2) / 2)
$

#line(length: 100%, stroke: .5pt)

$
  f_(x y)(x,y) &= (diff) / (diff y) f_x \
  &= (1 - x^2) (diff) / (diff y) (y e^(-(x^2+y^2) / 2)) \
  &= (1 - x^2) (diff) / (diff y) (y e^(-(x^2+y^2) / 2)) \
  &= (1 - x^2) ((diff y) / (diff y) e^(-(x^2+y^2) / 2)
    + y diff / (diff y) e^(-(x^2+y^2) / 2)) \
  &= (1 - x^2) (e^(-(x^2+y^2) / 2) - y^2 e^(-(x^2+y^2) / 2)) \
  &= (1 - x^2) (e^(-(x^2+y^2) / 2)) (1 - y^2) \
$

#line(length: 100%, stroke: .5pt)

The determinant of the Hessian Matrix is:

$
  mat(delim:"|", f_(x x), f_(x y); f_(y x), f_(y y))
  &= (x y e^(-(x^2+y^2) / 2))^2(x^2 - 3)(y^2 -3) -
  ((1-x^2)(1-y^2)(e^(-(x^2+y^2) / 2)))^2 \
  &= (x^2 - 3)(y^2 -3) x^2 y^2 (e^(-(x^2+y^2) / 2))^2 -
  (1-x^2)^2(1-y^2)^2(e^(-(x^2+y^2) / 2))^2 \
  &= e^(-(x^2+y^2)) ( (x^2 - 3)(y^2 -3) x^2 y^2 - (1-x^2)^2(1-y^2)^2 )
$

and if we evaluated the Hessian determinant at the critical points:

+ At $(0,0)$:
$
  e^(-x^2-y^2) ( (x^2 - 3)(y^2 -3) x^2 y^2 - (1-x^2)^2(1-y^2)^2 )|_(0,0) \
  = e^(0) ( (-3)(-3) (0^2) (0^2) - (1)^2(1)^2 ) \ = -1 < 0
$

Therefore, $(0,0)$ is a saddle point.

2. At $(-1,-1)$:

$
  e^(-x^2-y^2) ( (x^2 - 3)(y^2 -3) x^2 y^2 - (1-x^2)^2(1-y^2)^2 )|_(-1,-1) \
  = e^(-2) ( (-2)(-2) - (1-1)(1-1)) \ = (4-0) / e^2 = 4 / e^2 > 0
$

and

$
  f_(x x) (0,0) = (-1)(-1)((-1)^2-3)e^(-((-1)^2+(-1)^2) / 2)
  = (-2)e^(-1) = - 2 / e < 1
$

Therefore, $(-1,-1)$ is a local minimum.

Note that, for $(|x|, |y|) = (1,1)$, the determinant of the Hessian is always
$4 / e^2$. I'll skip computation for brevity.


3. At $(-1,1)$:

$
  f_(x x) (-1, 1) = (-1)(1)((-1)^2-3)e^(-((-1)^2+(1)^2) / 2)
  = (2)e^(-1) = 2 / e > 1
$


Therefore, $(-1,1)$ is a local maximum.

4. At $(1,-1)$:

$
  f_(x x) (1, -1) = (1)(-1)((1)^2-3)e^(-((1)^2+(-1)^2) / 2)
  = (2)e^(-1) = 2 / e > 1
$


Therefore, $(1,-1)$ is a local maximum.

5. At $(1,1)$:

$
  f_(x x) (1, 1) = (1)(1)((1)^2-3)e^(-((1)^2+(1)^2) / 2)
  = (-2)e^(-1) = - 2 / e < 1
$


Therefore, $(1,1)$ is a local minimum.
