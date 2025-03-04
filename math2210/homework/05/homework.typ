
#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 5")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "February 5th, 2025")

#pagebreak()
#set place(start)
#set text(size: 11pt, font: "Libertinus Serif", stroke: none, fill: black)

= Functions of Several Variables

== Problem 1

A company makes three sizes of cardboard boxes: small, medium, and large. It
costs \$2.50 to make a small box, \$4.00 to make a medium box, and \$4.50 for a
large box. Fixed costs are \$8000.

+ Express the cost of making $x$ small boxes, $y$ medium boxes, and $z$ large
boxes as a function of three variables $C = f(x,y,z)$.

+ Find $f(3000,5000,4000)$ and interpret it.

+ What is the domain of $f$?

== Answer

+ $f(x,y,z) = 2.5x + 4y + 4.5z + 8000$

+ $f(3000,5000,4000) &= 2.5(3000) + 4(5000) + 4.5(4000) + 8000 \ &=
    7500 + 20000 + 18000 + 8000 \ &= (7.5 + 20 + 18 + 8)10^3 \ &= 53500$
It costs \$53,500 to make 3000 small boxes, 5000 medium boxes and 4000 large boxes.

3. The domain of $f$ is ${(x,y,z) in RR^3| (x >= 0, y >= 0, z >= 0)$}. From numeric perspective, $f$ can map all vectors or points in $RR^3$. However, if we consider the application context, it's obvious that the number of boxes of a any type requested must be (at least, as noted later) a positive real number.

After more consideration, there are two more assumptions we could make: $x,y,z$
must be all positive integers (only whole boxes can be requested, and their
number is discrete), and this function does not apply for $x = y = z = 0$, which
would be equivalent to not making a petition. If this assumptions are true, then
we must restrict the domain even further into ${(x,y,z) in RR^3| (x >= 0, y >= 0,
z >= 0) "and" (x,y,z) != (0,0,0) "and" x, y,z in ZZ$}.

#line(length: 100%, stroke: 2pt)

#pagebreak()

== Problem 2

Find and sketch the domain of the function

$ f(x,y) = sqrt(x^2+ y^2-4) $

=== Answer

Domain of $f$ is all ${(x, y) in RR^2: x^2 + y^2 >= 4}$. Note that $sqrt(x^2+y^2) >=
2$. We know that $x^2 + y^2 < 4$ corresponds to the set of vectors $bold(u)$ such
that their norm $|bold(u)| < 2$, or all the dots within a circle of radius $r = 2$,
excluding the circumference. Therefore, the domain is $RR^2 - {bold(u) in RR^2:
|bold(u)| < 2}$. This can be graphed as the complete $x y$-plane with a circular
hole of radius $r < 2$.

#figure(
  image("./domain.png", height: 30%, width: 50%),
  caption: [Note that all the vectors that fall in the
    circumference of the circle is in the domain of $f$.],
)

#line(length: 100%, stroke: 2pt)

== Problem 3

Match the function with its graph (labeled I-IV and listed on the following
page). Give reasons for your choices.

+ $f(x,y) = 1 / (1 + x^2 + y^2)$

+ $f(x,y) = 1 / (1 + x^2y^2)$

+ $f(x,y) = ln(x^2 +y^2)$

+ $f(x,y) = cos(sqrt(x^2 + y^2))$

#align(center, "[Graphs given in the worksheet]")

=== Answer

+ II. Note that $forall x, y in RR^2, (x^2 + y^2 >= 0) arrow.r.double.long (1 + x^2 + y^2 >= 1)$. Therefore, the domain of $f$ is ${(x,y)| (x,y) in RR^2}$, which means that the function doesn't have any holes through the $x y$-plane. Note now that $lim_((x,y) arrow.r oo) f(x,y) = 0$, and $f(0,0) = 1$. Therefore, the range of this function is $(0,1]$: never crossing above the $z=1$ plane, nor below the $z=0$ plane.

Now, note that
$
  diff(f) / diff(x) = - (2x) / (1+x^2+y^2)^2
$ and $ diff(f)/diff(x) = - (2x)/
(1+x^2+y^2)^2 $ This implies that, when projected to the $x z$ plane such that
$f(x,0) = -(2x)/(1+x^2)^2$, the function is increasing from $(-oo, 0)$ and
decreasing over $(0,oo)$. Similar argument for $y$. The next function, which
presents similar behaviours in domain and range, differs in this way.

2. I. There are similar arguments to the last function for this function: $forall x,y in RR^2, (x^2 y^2 >= 0) arrow.r.double.long (1 + x^2 y^2 >= 1)$ implies that the graph of $f$ doesn't have holes through the $x y$-plane. And $lim_((x,y) arrow.r oo) f(x,y) = 0$, and $f(0,0) = 1$.

Now, $ diff(f)/diff(x) = - (2x)/(1+x^2+y^2)^2 $ and $ diff(f)/diff(x) = -
(2x)/(1+x^2+y^2)^2 $ This means that, when projected to the $x z$-plane, $f(x,0)
= 0$ which implies that the function is constant. Similar argument for $y$.

3. III. Note that $lim_((x,y) arrow.r (0,0)) ln(x^2+y^2) = -oo$ and, as mentioned before $forall x,y in RR^2, (x^2+y^2 >= 0)$. Therefore, the function presents an asymptote at $(x,y) = (0,0)$. For all other directions, the function grows without bound.

4. IV. I'm not going to use calculus to justify this one: simply state that this function does look like a cosine function when projected over either one of $x z$ and $y z$ planes.

#pagebreak()

= Limits and Continuity

== Problem 4

Find the limit if it exists, or show that the limit does not exists.

+ $lim_((x,y) arrow.r (3,2)) (x^2y^2 - 4y^2)$

+ $lim_((x,y) arrow.r (0,0)) (x y^4) / (x^4 + y^4)$

+ $lim_((x,y) arrow.r (0,0)) (x y^3) / (x^2 + y^6)$

=== Answer

+ Since this a polynomial function, we can extend the limit rules from $RR$ to
$RR^2$:

$ lim_((x,y) arrow.r (3,2)) x^2y^2 - 4y^2 &= 9(4) - 4(4) \ &= -7 $.

2. Note that $forall x, y in RR^2$

$
  (x > 0) arrow.r.double.long (0 <= (x y^4) / (x^4 + y^4) <= x y^4), \
  (x < 0) arrow.r.double.long (0 >= (x y^4) / (x^4 + y^4) >= x y^4) "and" \
  lim_((x,y) arrow.r (0,0)) x y^4 = 0
$

Without loss of generality, by _Squeeze Theorem_, $lim_((x,y) arrow.r (0,0))
(x y^4) / (x^4 + y^4) = 0$.

3. Honestly, I was about to just apply the _Squeeze Theorem_ again. But after reading the solution sheet, I've added the "mismatch of exponents" clue to my arsenal.

Note that, examined accross the line $x = y$,

$
  lim_((x,y) arrow.r (0,0)) (x y^3) / (x^2 + y^6)
  &= lim_(y arrow.r 0) y^4 / (y^2 + y^6) \
  &= 0
$

But from the curve $ x = y^3$,

$
  lim_((x,y) arrow.r (0,0)) (x y^3) / (x^2 + y^6)
  &= lim_(y arrow.r 0) y^6 / (2y^6) \
  &= 1 / 2
$

Therefore, the limit does not exists.

#line(length: 100%, stroke: 2pt)

#pagebreak()

== Problem 5

Determine the set of points at which the function is continous.

$ F(x,y) = (1 + x^2 + y^2) / (1- x^2 - y^2) $

=== Answer

The function is continuous $forall x, y in RR^2| (x^2 + y^2 != 1)$.

#line(length: 100%, stroke: 2pt)

== Problem 6

Use polar coordinates to find the limit. [If $(r,theta)$ are polar coordinates
of the point $(x,y)$ with $r >= 0$, note that $r arrow.r 0^+$ as $(x,y) =
(0,0)$.]

$ lim_((x,y) arrow.r (0,0)) (x^2+y^2) ln(x^2 + y^2) $

=== Answer

Let $x = r cos(theta) "and" y = r sin(theta)$. Then

$
  lim_((x,y) arrow.r (0,0)) (x^2+y^2) ln(x^2 + y^2)
  &= lim_((r,theta) arrow.r (0,theta_0)) (r^2 cos^2(theta)+r^2 sin^2(theta))
  ln(r^2 cos^2(theta)+r^2 sin^2(theta)) \
  &= lim_((r,theta) arrow.r (0,theta_0)) r^2 ln(r^2) \
  &= lim_(r arrow.r 0) r^2 ln(r^2) \
  &= lim_(r arrow.r 0) 2ln(r) / r^(-2) \
  &= lim_(r arrow.r 0) 2 / r (- r^3 / (2)) \
  &= lim_(r arrow.r 0) - r^2 \
  &= 0
$
