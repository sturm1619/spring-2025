#set page(
  header: context {
    if counter(page).get().first() > 1 [
      _Homework 2_
      #h(1fr)
      Carlos Rubio
    ]
  },
)

#[
  #set align(center)
  #[
  #set text(size: 32pt)
  *Homework 3*
  ],

  #[
    #set text(size: 27pt)
    _Carlos Rubio_

    _January 21th, 2025_
  ]
]
#pagebreak()
#set par(justify: true)
#set text(size: 12pt)

= Vector Functions and Space Curves

== Problem 1

Let $hat(r)(t) = angle.l sqrt(2-t), (e^t - 1)/t, ln(1+t) angle.r$

+ Find the domain of $hat(r)(t)$

+ Find $lim_(t arrow.r 0) hat(r)(t)$

=== Answer:

1. Originally, I thought that the $z$-component ($ln(1+t))$ would influence the
domain such that we could discard all the numbers in $RR^-$ (therefore, $t in
 (0, 2]$). This is mistaken, since $ln(1+t) arrow.r.long.double 1 + t >= 0
arrow.r.long.double t >= -1$. Therefore, the correct domain is
$ t in (-1, 0) union (0, 2) $

2. I made a mistake while computating the limit and applying L'hopital's rule
mentally, and concluded that $lim_(t arrow.r 0) (e^t-1)/t = lim_(t arrow.r 0)
(e^t) = 0$ instead of $1$. Of course, this is a very dumb mistake. Here is the
actual limit:

$ lim_(t arrow.r 0) hat(r)(t) = angle.l sqrt(2), 1, 0 angle.r $

#pagebreak()

== Problem 2

Sketch the curve with the equation

$ hat(r)(t) = angle.l sin(pi t), t, cos(pi t) angle.r $

and indicate with an arrow the direction in which $t$ increases.

=== Answer:

This is a helix with radius 1. When looked from the $y$-axis, the helix casts a
circle shadow over the $x z$-plane, that is maped in a counter-clockwise motion with
respect to $t$. The helix progreses in the positive direction along the $y$-axis.

#figure(
  image("helix.png", width: 50%),
  caption: [Nice image of a the given
    function, powered by Desmos 3D
  ],
)
#figure(
  image("ugly.jpg", width: 50%),
  caption: [My attempt to make the helix look
    like the one in the solution sheet],
)

#pagebreak()

== Problem 3

Find a vector function that represents the curve of intersection of the cylinder
$x^2+y^2=16$ and the plane $x+z = 5$

=== Answer:

$x^2 + y^2 = 16 arrow.r.double.long x(t) = 4 cos(t) "and" y(t) = 4 sin(t), 0 <=
t <= 4 pi$.

Then, $x+z=5 arrow.r.double.long z = 5 - 4 cos(t)$.

The vector function for the curve of the intersection is $hat(r)(t) = angle.l
4cos(t), 4sin(t), 5 - 4cos(t) angle.r$.

#pagebreak()

= Derivatives and Integral of Vector Fuctions

== Problem 4

Let $hat(r)(t) = angle.l sqrt(2-t), (e^t - 1)/t, ln(1+t)$. Find $hat(r)'(t)
angle.r$.

=== Answer:

$
  (d hat(r)(t)) / (d t) &=
  angle.l (d sqrt(2-t)) / (d t), (d (e^t - 1) / t) / (d t), (d ln(1+t)) / (d t) angle.r \
  &= angle.l (d (2-t)^(1 / 2)) / (d t), (d (e^t - 1) / t) / (d t), (d ln(1+t)) / (d t) angle.r \
  &= angle.l - 1 / (2sqrt(2-t)), e^t / t + (e^t+1) / t^2, 1 / (1 + t) angle.r
$


== Problem 5

Consider the curve given by $hat(r)'(t) = angle.l sin^3(t), cos^3(t), sin^2(t)
angle.r, 0 <= t <= pi/2$. Find the unit tangent vector.

=== Answer:
$
  hat(r)'(t)
  &= angle.l (d sin^3(t)) / (d t), (d cos^3(t)) / (d t), (d sin^2(t)) / (d t) angle.r \
  &= angle.l 3sin^2 t cos t, -3cos^2 t sin t, 2sin t cos t angle.r
$

By Pythagoras' Theorem, the norm of $hat(r)'(t)$ at $t in RR$:

$
  |hat(r)(t)| &= sqrt((3 sin^2(t) cos(t))^2 + (-3 cos^2 t sin t)^2 + (2 sin t cos t)^2) \
  &= sqrt(9 sin^4 t cos^2 t + 9 cos^4 t sin^2 t + 4 sin^2 t cos^2 t) \
  &= sqrt((sin^2 t cos^2 t) (9 sin^2 t + 9 cos^2 t+ 4)) \
  &= (sin t cos t) sqrt(9(sin^2 t + cos^2 t) + 4)) \
  &= (sin t cos t) sqrt(9 + 4) \
  &= (sin t cos t) sqrt(13) \
$

Then, the unit tangent vector is

$
  1 / (|hat(r)'(t)|) hat(r)'(t)&= 1 / (sqrt(13)(sin t cos t))
  angle.l 3sin^2 t cos t, -3cos^2 t sin t, 2sin t cos t angle.r \
  &= angle.l 3 / sqrt(13) sin t, -3 / sqrt(13) cos t, 2 / sqrt(13) angle.r
$

== Problem 6

Find the parametric equations for the tangent line to the curve

$ x = t^2 + 1, y = 4sqrt(t), z = e^(t^2-t) $

at the point $(2, 4, 1)$.

=== Answer:

We can get the derivative of every component. For $x$-component:

$
  (d x) / (d t) &= (d (t^2 + 1)) / (d t) \
  &= 2t
$

For the $y$-component:
$
  (d y) / (d t) &= (d (4sqrt(t))) / (d t) \
  &= 4 / 2 sqrt(t) \
  &= 2 / sqrt(t)
$

For the $z$-component:

$
  (d z) / (d t) &= (d (e^(t^2-t))) / (d t) \
  &= (2t-1)e^(t^2-t) \
  &= 2t e^(t^2-t)-e^(t^2-t) \
$

Here, I made the mistake of plugging the values from the given point as follows:

$
  angle.l 2(2), 2 / sqrt(4), (2-1)e^(1^2-1) angle.r = angle.l 4, 1, 1 angle.r
$

I assumed this vector to be the value of the slope of the tangent at the given
point. After checking the answer key, I realized that now we want to find a
colinear vector to our tangent so we can construct a vector equation for the
line. First, $hat(r)(t) = angle.l 2,4,1 angle.r arrow.r.long.double t = 1$.
Therefore, the slope of the tangent at that point is

$
  hat(r)(1) &= angle.l 2(1), 2 / sqrt(1), (2-1)e^(1^2-1) angle.r \
  &= angle.l 2, 2 / 1, e^(0)(1) angle.r \
  &= angle.l 2, 2, 1 angle.r
$

Then, we can solve for the equation of the tangent as
follows:

$
  x = 2t+2
$

$
  y &= 2t+4
$

$
  z &= t+1
$

#pagebreak()

== Problem 7

Evaluate the integral

$
  integral_0^(pi / 4)
  (sec(t) tan(t) hat(i)
    + t cos(2t) hat(j) +
    sin^2(2t) cos(2t) hat(k))
  d t
$

=== Answer:

$
  integral_0^(pi / 4)
  (sec(t) tan(t) hat(i)
    + t cos(2t) hat(j) +
    sin^2(2t) cos(2t) hat(k))
  d t \ =
  integral_0^(pi / 4)
  (sec(t) tan(t) hat(i)) d t +
  integral_0^(pi / 4)
  (t cos(2t) hat(j)) d t +
  integral_0^(pi / 4)
  (sin^2(2t) cos(2t) hat(k))
  d t \ =
  sec(t) hat(i) |_0^(pi / 4) +
  (1 / 2)(t sin 2t + 1 / 2 cos 2t) hat(j)
  |_0^(pi / 4) +
  (1 / 6)(sin^3 2t) hat(k)
  |_0^(pi / 4)
  d t \ =
  (sqrt(2)-1)hat(i) +
  (pi / 8 - 1 / 4) hat(j) +
  (1 / 6) hat(k)
$
