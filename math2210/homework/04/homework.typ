#set page(
  header: context {
    if counter(page).get().first() > 1 [
      _Homework 4_
      #h(1fr)
      Carlos Rubio
    ]
  },
)

#[
  #set align(center)
  #[
    #set text(size: 32pt)
    *Homework 4*
  ],

  #[
    #set text(size: 27pt)
    _Carlos Rubio_

    _February 2nd, 2025_
  ]
]
#pagebreak()
#set par(justify: true)
#set text(size: 12pt)

= Arc Length and Curvature

== Problem 1

Find the length of the curve $bold(r)(t) = angle.l 2t^(2/3), cos(2t),
sin(2t) angle.r$, $0 <= t <= 1$.

=== Answer

Derivative of $x= 2t^(2/3)$.
$
  (d x) / (d t) &= d / (d t)(2t^(2 / 3)) \
  &= 2 d / (d t) (t^(2 / 3)) \
  &= 4 / 3 t^(-1 / 3) \
$
Derivative of $y= cos(2t)$.
$
  (d y) / (d t) &= d / (d t)(cos(2t)) \
  &= -2sin(2t) \
$
Derivative of $z= sin(2t)$.
$
  (d z) / (d t) &= d / (d t)(sin(2t)) \
  &= 2cos(2t) \
$

$
  |bold(r)'(t)| d t
  &= ((d x) / (d t))^2 + ((d y) / (d t))^2 + ((d z) / (d t))^2 \
  &= (4 / 3 t^(-1 / 3))^2 + (-2sin(2t))^2 + (2cos(2t))^2\
  &= 16 / 9 t^(-2 / 3) + 4sin^2(2t) + 4cos^2(2t) \
  &= 16 / 9 t^(-2 / 3) + 4 \
  &= 16 / (9t^(2 / 3)) + 4 \
  &= 16 / (9t^(2 / 3)) + (36t^(2 / 3)) / (9t^(2 / 3)) \
  &= 4 / (9t^(2 / 3))(4 + 9t^(2 / 3)) \
$

#pagebreak()

Let $u = 4+9t^(2/3) arrow.r.double.long d u = 9(2/(3t^(1/3))) d t
arrow.r.double.long 1 / 9 d u = (2/(3t^(1/3))) d t$. Also, let $L$ be the
length of $bold(r)(t)$. In other words, its arclength.

$
  L &= integral_0^1 |bold(r)'(t)| d t \
  &= integral_0^1 2 / (3t^(1 / 3)) sqrt(4 + t^(2/3)) d t \
  &= 1 / 9 integral_(4)^(13) sqrt(u) d u \
  &= 1 / 9 integral_4^(13) u^(1 / 2) d u \
  &= 2 / 27 u^(3 / 2) |_4^(13) \
  &= 2 / 27 (13^(3 / 2) - 4^(3 / 2)) |_4^(13) \
  &= 2 / 27 (13^(3 / 2) - 8)
$

#pagebreak()

== Problem 2

Reparametrize the curve

$ bold(r)(t) = e^t bold(i) + e^t sin(t) bold(j) + e^t cos(t) bold(k) $

with respect to arc length measured from the point $(1,0,1)$ in the direction
of increasing $t$.

=== Answer

$
  L = integral_0^t sqrt((d/(d u)(e^u))^2 + (d/(d u)(e^u sin u))^2 + (d/(d u) (e^u cos u))^2) d u \ =
  integral_0^t sqrt((e^u)^2 + (e^u sin u + e^u cos u)^2 + (e^u cos u - e^u sin u)^2) d u \ =
  integral_0^t sqrt(e^(2u) + e^(2u) (sin u + cos u)^2 + e^(2u)(cos u - sin u)^2) d u \ =
  integral_0^t sqrt(e^(2u)(1 + (sin u + cos u)^2 +(cos u - sin u)^2)) d u \ =
  integral_0^t sqrt(e^(2u)(1 + (sin^2 u  + 2sin u cos u + cos^2 u) +(cos^2 u - 2cos u sin u + sin^2 u ))) d u \ =
  integral_0^t sqrt(e^(2u)(1 + (1 + 2sin u cos u) + (1- 2cos u sin u))) d u \ =
  integral_0^t sqrt(e^(2u)(1 + 1  + 1)) d u \ =
  sqrt(3) integral_0^t e^u d u \ =
  sqrt(3) (e^t - 1) \ =
$

Therefore,
$
  L = sqrt(3) (e^t - 1) \
  L / sqrt(3) = e^t - 1 \
  L / sqrt(3) + 1 = e^t \
  ln(L/ sqrt(3) + 1) = t \
$

Therefore, we get this ugly reparametrization:

$
  bold(r)(t) = (L / sqrt(3) + 1) bold(i) + (L / sqrt(3) + 1) sin(ln(L/ sqrt(3) + 1)) bold(j) + (L / sqrt(3) + 1) cos(ln(L/ sqrt(3) + 1)) bold(k)
$

#pagebreak()

== Problem 3

Consider the curve given by $bold(r)(t) = angle.l sin^3 t, cos^3 t, sin^2 t
angle.r$, $0 <= t <= pi/2$.

+ Find the unit tangent vector. _Note: This question was asked on the previous
homework as well._

+ Find the unit normal vector.

+ Find the unit binormal vector.

+ Find the curvature.

=== Answer

The derivative of $bold(r)'(t)$:

$
  bold(r)'(t) &= angle.l d / (d t)sin^3(t), d / (d t)cos^3(t), d / (d t)sin^2(t) angle.r \
  &= angle.l 3 sin^2(t) cos(t), - 3cos^2(t) sin(t), 2sin(t) cos(t) angle.r \
$

The norm of $|bold(r)'(t)|$:

$
  |bold(r)'(t)| &= sqrt((3 sin^2(t) cos(t))^2 + (3 cos^2(t) sin(t))^2 + (2sin(t) cos(t))^2) \
  &= sqrt(9 sin^4(t) cos^2(t) + 9 cos^4(t) sin^2(t) + 4sin^2(t) cos^2(t)) \
  &= sqrt(sin^2(t) cos^2(t) (9 sin^2(t) + 9 cos^2(t) + 4)) \
  &= sqrt(sin^2(t) cos^2(t) (9 + 4)) \
  &= sqrt(13) sin(t) cos(t)
$

a) The unit tangent vector $bold(T)(t)$:

$
  T(t) &= (bold(r)'(t)) / (|bold(r)'(t)|) \
  &= 1 / (sqrt(13) sin(t) cos(t)) angle.l 3 sin^2(t) cos(t), -3 cos^2(t) sin(t), 2sin(t) cos(t) angle.r \ \
  &= angle.l 3 / sqrt(13) sin(t), - 3 / sqrt(13) cos(t), 2 / sqrt(13) angle.r \ \
$

The derivative of $bold(T)'(t)$:

$
  T'(t) &= angle.l 3 / sqrt(13) d / (d t) sin(t), -3 / sqrt(13) d / (d t) cos(t), d / (d t) 2 / sqrt(13) angle.r \
  &= angle.l 3 / sqrt(13) cos(t), 3 / sqrt(13) sin(t), 0 angle.r
$

#pagebreak()

The norm of $|bold(T)'(t)|$:

$
  |T'(t)| &= sqrt((3 / sqrt(13) cos(t))^2 + (3 / sqrt(13) sin(t))^2 +0) \
  &= sqrt(9 / 13 cos^2(t) + 9/13 sin^2(t)) \
  &= sqrt(9 / 13) \
  &= 3 / sqrt(13)
$

b) The unit normal vector $bold(N)(t)$.

$
  N(t) &= (bold(T)'(t)) / (|bold(T)'(t)|) \
  &= sqrt(13) / 3 angle.l 3 / sqrt(13) cos(t), 3 / sqrt(13) sin(t), 0 angle.r \
  &= angle.l cos(t), sin(t), 0 angle.r \
$

c) The binormal vector $bold(B)(t)$.
$
  bold(B)(t) &= bold(T)(t) times bold(N)(t) \
  &= angle.l 3 / sqrt(13) sin(t), - 3 / sqrt(13) cos(t), 2 / sqrt(13) angle.r
  times angle.l cos(t), sin(t), 0 angle.r \
  &= angle.l - 2 / sqrt(13) sin(t), 2 / sqrt(13) cos(t), 3 / sqrt(13) (sin^2 t + cos^2 t) angle.r \
  &= angle.l - 2 / sqrt(13) sin(t), 2 / sqrt(13) cos(t), 3 / sqrt(13) angle.r
$

d) The curvature $kappa$:

$
  kappa &= (|bold(T)'(t)|) / (|bold(r)'(t)|) \
  &= (3 / sqrt(13)) (1 / (sqrt(13) sin(t) cos(t))) \
  &= 3 / (13 sin(t) cos(t)) \
  &= 6 / (13 sin(2t)) \
  &= 6 / 13 csc(2t)
$

#pagebreak()

= Motion in Space: Velocity and Acceleration

== Problem 4

Find the velocity, speed and acceleration of a particle moving with position
function:

$ bold(r)(t) = (2t^2 - 3) bold(i) + 2t bold(j) $

Sketch the path the particle on the axes below and draw the position, velocity
and acceleration vectors for $t = 1$.

== Answer

$
  bold(v)(t) &= bold(r)'(t) \
  &= 4t bold(i) + 2 bold(j)
$

$
  |bold(v)(t)| &= sqrt((4t)^2  + 2^2) \
  &= sqrt(16t^2 + 4) \
  &= sqrt(4(4t^2 + 1)) \
  &= 2 sqrt(4t^2 + 1)
$

$
  bold(a)(t) &= bold(v)'(t) \
  &= 4 bold(i)
$

At $t=1$, this functions have values $bold(r)(t) = -bold(i) + 2 bold(j)$,
$bold(v)(t) = 4 bold(i) + 2 bold(j)$, $|bold(v)(t)| = 2 sqrt(5) $ and
$bold(a)(t) = 4 bold(i)$.

In the figure, the orange segment represents the position vector, the green
segment represents the velocity, and the purple represents the acceleration at
$t=1$. The red line is $bold(r)(t)$.

#figure(image("vectors.png", width: 50%))

#pagebreak()

== Problem 5

Find the tangential and normal components of the acceleration vector of the
curve $ bold(r)(t) = t bold(i) + 2 e^t bold(j) + e^(2t) bold(k) $

=== Answer

Computing the second derivative of $bold(r)(t)$:

$
  bold(v)(t) &= bold(i) + 2 e^t bold(j) + 2e^(2t) bold(k) \
  bold(a)(t) &= 2 e^t bold(j) + 4e^(2t) bold(k) \
$

The speed $|bold(v)(t)|$:
$
  |bold(v)(t)| &= sqrt(1^2 + (2 e^t)^2 + (2e^(2t))^2) \
  &= sqrt(1^2 + 2 (1) (2 e^(2t)) + (2e^(2t))^2) \
  &= sqrt((1 + 2 e^(2t))^2) \
  &= 1 + 2 e^(2t) \
$

The cross product of $bold(v)$ and $bold(a)$:

$
  bold(v) times bold(a) &= ((2e^t)(4e^(2t)) - (2e^t)(2e^(2t))) bold(i) -
  (4e^(2t))bold(j) + (2e^t) bold(k) \
  &= ((2e^t)(4e^(2t) - 2e^(2t))) bold(i) - (4e^(2t))bold(j) + (2e^t) bold(k) \
  &= (2e^t)(2e^(2t)) bold(i) - 4e^(2t) bold(j) + 2e^t bold(k) \
  &= 4e^(3t) bold(i) - 4e^(2t) bold(j) + 2e^t bold(k) \
$

The tangential component:

$
  a_bold(T) &= (bold(v) dot bold(a)) / (|bold(v)|) \
  &= ((1)(0) + (2e^t)(2e^t) + (2e^(2t))(4e^(2t))) / (1 + 2 e^(2t)) \
  &= (4e^(2t) + 8e^(4t)) / (1 + 2 e^(2t)) \
  &= (4e^(2t))(1+2 e^(2t)) / (1 + 2 e^(2t)) \
  &= 4e^(2t)
$

The normal component:

$
  a_bold(N) &= (|bold(v)(t) times bold(a)(t)|) / (|bold(v)(t)|) \
  &= sqrt(((4e^(3t))^2 + (4e^(2t))^2 + (2e^t)^2)) / (1 + 2 e^(2t)) \
  &= sqrt(16e^(6t) + 16e^(4t) + 4e^(2t)) / sqrt(1 + 4 e^(2t) + 4e^(4t)) \
  &= sqrt((4e^(2t))(4e^(4t) + 4e^(2t) + 1)) / sqrt(1 + 4 e^(2t) + 4e^(4t)) \
  &= 2e^t sqrt((4e^(4t) + 4e^(2t) + 1)) / sqrt(1 + 4 e^(2t) + 4e^(4t)) \
  &= 2e^t
$

Therefore, the acceleration $bold(a)(t)$ in terms of its components:

$
  bold(a)(t) = 4e^(2t)bold(T) + 2e^t bold(N)
$
