// NOTE: Presentation page
#set align(center)

#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 9")

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
#let r = math.bold("r")
#let i = math.bold("i")
#let j = math.bold("j")
#let k = math.bold("k")
#set line(length: 100%)
#set rect(stroke: red)

// NOTE: Body


= The Fundamental Theorem of Line Integrals

== Problem 1

Determine whether or not $#F$ is a conservative vector field. If it is, find a
function $f$ such that $#F = gradient f$.

+ $#F (x,y) = y e^x #i + (e^x + e^y) #j$

+ $#F (x,y) = (ln y + y/x) #i + (ln x + x/y) #j$

=== Answer

+ Note that a vector field $#F$ is conservative if $gradient times #F =
  bold(0)$. Since

  $
    gradient times #F
    &= (diff/(diff x) (e^x + e^y) - diff/(diff y) (y e^x)) #k \
    &= (e^x - e^x) #k \
    &= bold(0) arrow.r.double.long #rect()[$#F$ is conservative]
  $

  This implies that $exists f$ such that $#F = gradient f$. Note that, since
  $exists f | (#F = gradient f) arrow.r.double.long exists g(y) |$ #linebreak()
  $(integral F_1 d x = f + g(y))$, where $F_1$ is the component of $#F$ in the
  $x$ direction:

  $
    diff / (diff y) (integral F_1 d x + g(y))
    &= diff / (diff y) (integral y e^x d x) \
    &= diff / (diff y) (y e^x + C + g(y)) \
    &= e^x + g'(y) \
  $
  #align(center, line(stroke: 0.5pt, length: 50%))
  $
    e^x + g'(y) &= e^x + e^y \
    g'(y) &= e^y \
    integral g'(y) d y &= integral e^y d y
    g(y) &= e^y
  $
  #align(center, line(stroke: 0.5pt, length: 50%))

  $ #rect()[$ therefore f = y e^x + e^y $] quad qed $

  #line(stroke: 0.5pt)
+ $
    gradient times #F
    &= (diff/(diff x) (ln x + x/y) - diff/(diff y) (ln y + y/x)) #k \
    &= (1/x + 1/y - 1/y - 1/x) #k \
    &= bold(0) arrow.r.double.long #rect()[$#F$ is conservative]
  $
  Therefore, $#F$ is conservative and $exists f$ such that $#F = gradient f$.
  By the same argument as before:

  $
    diff / (diff y) (integral F_1 d x)
    &= diff / (diff y) (integral ln y + y / x d x) \
    &= diff / (diff y) (x ln y + y ln x + g(y)) \
    &= x / y + ln x + g'(y)
  $
  #align(center, line(stroke: 0.5pt, length: 50%))
  $
    x / y + ln x + g'(y) &= ln x + x / y \
    g'(y) &= 0 \
    g(y) &= 0
  $

  $ #rect()[$ therefore f = x ln y + y ln x $] quad qed $

#line()

== Problem 2

Consider the vector field

$ #F (x,y) = (1 + x y)e^(x y) #i + x^2 e^(x y) #j $

Find a function $f$ such that $#F = gradient f$ and use this fact to evaluate $
integral_C #F dot d #r$ along the curve given by the vector equation

$ #r (t) = cos t #i + 2 sin #j, quad 0 <= t <= pi/2 $

=== Answer

Let $F_2$ be the component of $#F$ in the $y$ direction. Then:
$
  diff / (diff x) (integral F_2 d y)
  &= diff / (diff x) (integral x^2 e^(x y) d y) \
$

Let $u = x y arrow.r.double.long d u = x d y$. Then:

$
  diff / (diff x) (integral x^2 e^(x y) d y)
  &= diff / (diff x) (integral x e^u d u + g(x)) \
  &= diff / (diff x) (x e^(x y) + g(x)) \
  &= e^(x y) + x y e^(x y) + g'(x) \
$

Then:
$
  e^(x y) + x y e^(x y) + g'(x) &= (1 + x y)e^(x y) \
  &= e^(x y) + x y e^(x y) \
  g'(x) &= 0 \
  g(x) &= 0
$

$ #rect()[$ therefore f = x e^(x y) $] $

#line(stroke: 0.5pt)

By the Fundamental Theorem of Line Integrals:

$ integral_C gradient f dot d #r = f(#r (b)) - f(#r (a)) $

Then

$
  integral_C #F (x, y) dot d #r
  &= x e^(x y)|^(cos pi/2 #i + 2 sin pi/2 #j)_(cos 0 #i + 2 sin 0 #j) \
  &= x e^(x y)|^(2#j)_(#i) \
  &= 0 e^(0(2)) - 1 e^(1(0)) \
  &= #rect()[$ -1 $] quad qed
$

#line()

== Problem 3

Show that the integral

$ integral_C sin y d x + (x cos y - sin y) d y $

is independent of path. Then evaluate the integral for any path from $(2,0)$ to
$(1, pi)$.

=== Answer

Note that

$
  integral_C sin y d x + (x cos y - sin y) d y
  = integral_C (sin y #i + (x cos y - sin y)#j) dot d #r
$
Let $#F$ be the integrand. Then

$
  gradient times #F
  &= (diff/(diff x) (x cos y - sin y) - diff/(diff y) sin y) #k \
  &= (cos y - cos y) #k \
  &= bold(0)
$

Which implies that $#F$ is conservative. By the Fundamental Theorem of Line
Integrals, _since $#F$ is conservative, then $integral_C #F dot d #r$ is
independent of path_. Therefore, $exists f | #F = gradient f$:

$
  diff / (diff y) (integral sin y d x) &= diff / (diff y) (x sin y + g(y)) \
  &= x cos y + g'(y)
$
Then:
$
  x cos y + g'(y) &= x cos y - sin y \
  g'(y) &= - sin y \
  integral g'(y) d y &= integral - sin y d y \
  g(y) &= cos y \
$

Therefore, $f =  x sin y + cos y$, and

$
  integral_C sin y d x + (x cos y - d y) d y
  &= (x sin y + cos y)|_((2,0))^(1,pi) \
  &= 1 (sin pi) + cos pi - 2(sin 0) - (cos 0) \
  &= 0 + 1 - 0 - 1 \
  &= #rect()[$ -2 $] quad qed
$

#pagebreak()

= Green's Theorem

== Problem 4

Evaluate the line integral

$ integral.cont_C y d x - x d y $

where $C$ is the circle with center the origin and radius $4$. Do this two ways;
first directly, and second, using Green's Theorem.

=== Answer

If $C$ is a circle centered at the origin with radius $4$, then

$
  C &= x^2 + y^2 = 16 \
    &= 16 cos^2 t + 16 sin^2 t = #r (t)
$
is the vector function of of the curve $C$, where $t in [0, pi/2)$. Then

$
  x = 4 cos t, quad y = 4 sin t \
  (d x) / (d t) = - 4 sin t, quad (d y) / (d t) 4 cos t \
$
Then

$
  integral.cont_C y d x - x d y
  &= integral_0^(2 pi) (diff / (d t) (4 cos t) (- 4 sin t) d t
    - diff / (d t) (4 sin t)(4 cos t) d t) \
  &= integral_0^(2 pi) (- (4 sin t)^2 d t - (4 cos t)^2 d t) \
  &= integral_0^(2 pi) - 16 sin^2 t d t - 16 cos^2 t d t \
  &= - 16 integral_0^(2 pi) cos^2 t + sin^2 t d t \
  &= - 16 integral_0^(2 pi) d t \
  &= - 16 t|_0^(2 pi) \
  &= #rect()[$ - 32 pi $] \
$
#line(stroke: 0.5pt)

Recall that, by Green's Theorem:

$
  integral.cont_C #F dot d #r = integral.double_D gradient times #F dot #k d A
$
where $#F = y#i - x#j$, and $D$ is the region enclosed by $C$. Note that $#F$ is
a continuous function. Therefore:

$
  D = {(x,y) in RR^2 | x^2 + y^2 <= 16}
  = {(r, theta) | r in [0,4], theta in [0, 2 pi]} \
  gradient times #F = ((diff (-x))/(diff x) - (diff y)/(diff y)) #k = -2 #k
$

Then

$
  integral.cont y d x - x d y
  &= -2 integral_0^4 integral_0^(2pi) r d theta d r \
  &= -2 integral_0^4 r integral_0^(2pi) d theta d r \
  &= -4 pi integral_0^4 r d r \
  &= -4 / 2 pi (r^2|_0^4) \
  &= - 2 pi (16) \
  &= #rect()[$ - 32 pi $] quad qed
$

#line()

== Problem 5

Use Green's Theorem to evaluate the line integral

$ integral.cont_C (x^2 + y^2) d x + (x^2 - y^2) d y $

where $C$ is the positively oriented curve consisting of the triangle with
vertices $(0,0), (2,1) "and" (0,1)$.

=== Answer

Let $#F = (x^2 + y^2) #i + (x^2 - y^2) #j$. Note that $D = {(x,y) | y in [0,1], x
in [0, 2y]}$. Then, by Green's Theorem:

$
  integral.cont_C #F dot angle.l d x, d y angle.r
  &= integral.double_D gradient times #F dot #k d A \
  &= integral_0^1 integral_0^(2y) diff/(diff x) (x^2 - y^2)
  - diff/(diff y) (x^2 + y^2) d x d y \
  &= integral_0^1 integral_0^(2y) (2x - 2 y) d x d y \
  &= integral_0^1  (x^2 - 2x y)|_0^(2y) d y \
  &= integral_0^1  ((2y)^2 - 2(2y) y) d y \
  &= integral_0^1  (4y^2 - 4y^2) d y \
  &= integral_0^1  0 d y \
  &= #rect()[$ 0 $] quad qed
$

#line()

== Problem 6

Let $#F (x,y) = angle.l e^(-x) + y^2, e^(-y) + x^2 angle.r$, and let $C$ be the
arc of the curve $y = cos x$ from $(-pi/2,0) "to" (pi/2,0)$ followed by the
line segment from $(pi/2, 0) "to " (-pi/2, 0)$. Use Green's Theorem to compute
$integral_C #F dot d #r$.

=== Answer

Let $D = {(x,y)| x in [-pi/2, pi/2], y in [0, cos x])}$. Also note that

$
  gradient times #F
  &= (diff/(diff x) (e^(-y) + x^2) - diff/(diff y) (e^(-x) + y^2)) #k \
  &= (2x - 2y) #k
$

Since $C$ is a closed path in the clockwise direction,

$
  integral_C #F dot d #r &= - integral_(-C) #F dot d #r \
  &= - integral.double_D gradient times #F dot #k d A \
  &= - integral_(-pi/2)^(pi/2) integral_0^(cos x) (2x - 2 y) d y d x \
  &= - integral_(-pi/2)^(pi/2) (2x y - y^2)|_0^(cos x) d x \
  &= - integral_(-pi/2)^(pi/2) (2x cos x - cos^2 x) d x \
  &= - integral_(-pi/2)^(pi/2) (2x cos x) d x
      + integral_(-pi/2)^(pi/2) cos^2 x d x \
$
Since $2 x cos x$ is an odd function, and $cos^2 x$ is an even function,
$integral_(-a)^a 2 x cos x = 0$ and $integral_(-a)^a cos^2 x = 2 integral_0^a
cos^2 x$. Therefore

$
  - integral_(-pi / 2)^(pi / 2) (2x cos x) d x
  + integral_(-pi / 2)^(pi / 2) cos^2 x d x
  &= 2 integral_0^(pi / 2) cos^2 x d x \
  &= integral_0^(pi / 2) 1 + cos(2 x) d x \
  &= x|_0^(pi / 2) + 1 / 2 integral_0^(pi) cos u d u \
  &= pi / 2 + 1 / 2 sin u|_0^pi \
  &= #rect()[$ pi / 2 $] quad qed
$

#line()

== Problem 7

A particle starts at the origin, moves along the $x$-axis to $(5,0)$, then
along the quarter circle $x^2 + y^2 = 25, x >= 0, y >= 0$ to the point
$(0,5)$, and then down the $y$-axis back to the origin. Use Green's Theorem to
find the work done on this particle by the force field

$ #F (x,y) = angle.l sin x, sin y + x y^2 + 1/3 x^3 angle.r $

=== Answer

Note that $C$ is a counterclockwise closed circuit enclosing the area $D =
{(r, theta) | r in [0, 5], y in [0, pi/2]$. Therefore

$
  integral.cont_C #F dot d #r
  &= integral.double_D gradient times #F dot #k d A \
  &= integral.double_D diff/(diff x) (sin y + x y^2 + 1/3 x^3)
  - diff/(diff y) (sin x) d A \
  &= integral.double_D (y^2 + x^2) d A \
  &= integral_0^5 integral_0^(pi/2) (r^2 sin^2 theta + r^2 cos^2 theta)
  r d theta d r \
  &= integral_0^5 r^3 d r integral_0^(pi/2) d theta \
  &=  (5^4/4) pi/2 \
  &=  #rect()[$ (625pi)/8 $] quad qed
$

#line()

