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
  *Homework 2*
  ],

  #[
    #set text(size: 27pt)
    _Carlos Rubio_

    _January 19th, 2025_
  ]
]
#pagebreak()
#set par(justify: true)
#set text(size: 12pt)

= The Cross Product

== Problem 1

Find two unit vectors that are orthogonal to both $hat(j) + 2hat(k)$ and
$hat(i) - 2hat(j) + 3hat(k)$.

=== Answer

Let $hat(a) = hat(j) + 2hat(k)$ and $hat(b) = hat(i) - hat(j) + hat(k)$.
Then $hat(a) = angle.l  0, 1, 2 angle.r$ and $hat(b) = angle.l 1, -2, 3 angle.r$
Then

$
  hat(a) times hat(b) &= angle.l 1 (3) - 2(-2), 2(1) - 0(3), 0(-2) - 1(1) angle.r \
  &= angle.l 3 + 3, 2 - 0, 0 - 1 angle.r \
  &= angle.l 7, 2, -1 angle.r \
$

Since $hat(b) times hat(a) = - hat(a) times hat(b)$ is also an orthogonal to
$hat(a)$ and $hat(b)$, we can change the sign of the components to find such
vector. The length of both vectors is:

$
  || hat(a) times hat(b) || &= sqrt(7^2 + 2^2 + (-1)^2)
  &= sqrt(49 + 4 + 1) \
  &= sqrt(54) \
  &= sqrt(6(9)) \
  &= 3 sqrt(6)
$

Therefore, the unit vectors orthogonal to $hat(u)$ and $hat(v)$ are
$
  angle.l 7 / (3 sqrt(3)), 2 / (3 sqrt(3)), - 1 / (3 sqrt(3)) angle.r
$ and
$
  angle.l - 7 / (3 sqrt(3)), - 2 / (3 sqrt(3)), 1 / (3 sqrt(3)) angle.r
$

== Problem 2

Suppose that $hat(u) dot (hat(v) times hat(w)) = 2$. Find $hat(v) dot
(hat(u) times hat(w))$.

=== Answer

$
  hat(v) dot (hat(u) times hat(w))
  &= hat(v) dot - (hat(w) times hat(u)) \
  &= - (hat(v) times hat(w)) dot hat(u) \
  &= - (hat(v) times hat(w)) dot hat(u) \
  &= - hat(u) dot (hat(v) times hat(w)) \
  &= -2
$

== Problem 3

Let $hat(u)$ and $hat(v)$ be any nonzero, non-parallel vectors in $RR^3$.
Compute $(hat(u) times hat(v)) dot hat(v)$ and explain why your answer is
right.

=== Answer

This is problem is a basic corollary from the definition of the cross product.
Let $hat(u), hat(v), hat(a) in RR^3$. Since $hat(u) times hat(v)$ is a vector
orthogonal to both $hat(u)$ and $hat(v)$, and since $hat(a) dot hat(v) = 0
arrow.l.r.double.long hat(a)$ is colinear (therefore, non-orthogonal) to
$hat(v)$, then $hat(v) times hat(v) dot hat(v) = 0$.

#pagebreak()

= Equations of Lines and Planes

== Problem 4

Find the vector equation, parametric equations, an symmetric equations for the
line in $RR^3$ that passes through the points $(4, -1, 2)$ and $(1,1,5)$.

=== Answer

Given two vectors $hat(r)_0 "and" hat(r) in RR^n$, the *vector equation* of a line
is $r_0 + t hat(r)$, where $t in RR^1$. Let $hat(r)_0 = angle.l 1,1,5 angle.r$
and $hat(r) = (4, -1, 2) - (1,1,5) = angle.l 3, -2, -3 angle.r$, the equation
of the line that passes through both points could be expressed as

$ angle.l 1,1,5 angle.r + t angle.l 3, -2, -3 angle.r $
or
$
  angle.l 1,1,5 angle.r + t angle.l 3 / sqrt(21), -2 / sqrt(21), -3 / sqrt(21)
  angle.r
$
as well as other combinations.

The *parametric equations*, which are just the components of the vector resulting
of the vector equation:

$ x = 3t + 1 $
$ y = 1 -2t $
$ z = 5 -3t $

The *symmetric equations* are found by solving all equations for $t$.

$
  x = 3t + 1 arrow.r.double.long x - 1
  = 3t arrow.r.double.long (x - 1) / 3 = t
$

$
  y = 1 -2t arrow.r.double.long y - 1 &= -2t arrow.r.double.long
  ( 1 - y ) / 2 = t
$

$
  z = 5 - 3t arrow.r.double.long z - 5 &= -3t
  arrow.r.double.long ( 5 - z ) / 3 = t
$

Therefore,
$ (x - 1) / 3 = ( 1 - y ) / 2 = ( 5 - z ) / 3 $

== Problem 5

Find a vector parallel to the line whose symmetric equations are $ (x - 4) / 3
= y / 2 = z + 2 $

=== Answer

$
  (x - 4) / 3 &= t arrow.r.double.long
  x - 4 &= 3t arrow.r.double.long
  x &= 3t + 4
$

$
  y / 2 &= t arrow.r.double.long
  y &= 2t
$

$
  z + 2 &= t arrow.r.double.long
  z &= t - 2
$

The parametric equations to the corresponding line are $(x - 4) / 3 = y / 2 = z
+ 2 arrow.r.double.long x = 3t+4, y = 2t, z = t -2$. Written as a vector
equation,

$
  angle.l 4, 0, -2 angle.r + t angle.l 3, 2, 1 angle.r
$

So any vector of the form $t angle.l 3, 2, 1 angle.r$ is parallel to the line.
In fact, this are the only vectors we can define, if all the vectors start at
the origin.

== Problem 6

Find an equation for the plain through $(3,-1,1)$, $(4,0,2)$, and $(6,3,1)$.

=== Answer

Let's define two vectors in $RR^3$ from the given points, namely $hat(u)$ and
$hat(v)$:

$ hat(u) &= hat(0) + (3,-1,1) \ &= angle.l 3,-1,1 angle.r $
$ hat(v) &= (3,-1,1) - (4, 0, 2) \ &= angle.l -1, -1, -1 angle.r $
$ hat(w) &= (3,-1,1) - (6, 3, 1) \ &= angle.l -3, -4, 0 angle.r $

The equation of a plane is given as all the points in in the vector space that
are orthogonal to a vector $hat(n)$. Since we want to find a plane containing
vectors $hat(u), hat(v) + hat(u) "and" hat(w) + hat(u)$, we can find the cross
product $hat(v) times hat(w)$ to find such normal.

$
  hat(v) times hat(w) &= angle.l - 1(-4), 1(-3) , -1(-4) - (-1)(-3) angle.r \
  hat(v) times hat(w) &= angle.l 4, -3 , 1 angle.r
$

Therefore, the equation for the plane is $4(x + 3) - 3(y - 1) + z+1 = 0$.

== Problem 7

Find the distance from the point $(-6, 3, 5)$ to the plane $x-2y-4z=8$.

=== Answer
$
  (|-6(1) + 3(-2) + 5(-4) - 8|) / sqrt(1^2 + (-2)^2 + (-4)^2)
  &= (|-6 -6 -20 -8|) / sqrt(1+4+16) \
  &= 40 / sqrt(21)
$

#pagebreak()

= Cylinders and Quadric Surfaces

== Problem 8

Identify and sketch the graph of the surface defined by $ 4x^2 + 4y^2 - 8y +
z^2 = 0$

=== Answer

#figure(
  image("./graph1.png", width: 65%),
  caption: [Vertical elipsoid],
)

This is an elipsoid. Honestly, I couldn't figure out how to find the equation
to identify it, as I didn't think of completing the square $y^2 - 2y$. With
that, it's pretty intuitive;

$
  0 &= 4x^2 + 4y^2 - 8y + z^2 \
  &= x^2 + y^2 - 2y + z^2 / 4 \
  1 &= x^2 + y^2 - 2y + 1 z^2 / 4 \
  &= x^2 + (y - 1)^2 + z^2 / 4
$

== Problem 9

Find an equation for the surface consisting of all points that are equidistant
from the point $(-1,0,0)$ and the plane $x=1$. Identify the surface.

=== Answer

I couldn't figure out this one either, and it became to late. I guess this i
where I bend. D:
