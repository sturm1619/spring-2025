#set line(length: 100%)
#set math.mat(delim: "[")
#set enum(numbering: "(a)")
#set rect(stroke: red)

#let a = math.bold("a")
#let b = math.bold("b")
#let p = math.bold("p")
#let q = math.bold("q")
#let u = math.bold("u")
#let v = math.bold("v")
#let w = math.bold("w")
#let x = math.bold("x")
#let y = math.bold("y")

= Section 5.5

==== Markov Chains (7 Exercises)

== Exercise 5.5.1

Determine whether $A$ is a stochastic matrix. If $A$ is not stochastic, then
explain why not.

+ $ A = mat(0.4,0.3;0.6,0.7) $

+ $ A = mat(0.4,0.6;0.3,0.7) $

+ $ A = mat(1,1/2,1/3;0,0,1/3;0,1/2,1/3) $

+ $ A = mat(1/3,1/3,1/2;1/6,1/3,-1/2;1/2,1/3, 1) $

=== Answer

+ Yes, it is: the sum of the entries of the column vectors is 1.

+ No, it is not: the sum of the entries of the column vectors is not 1.

+ Yes, it is: the sum of the entries of the column vectors is 1.

+ No, it is not: there are negative entries.

== Exercise 5.5.3

Use Formulas (11) and (12) to compute the state vector $#x _4$ in two different
ways.

$ P = mat(0.5,0.6;0.5,0.4); quad #x _0 = mat(0.5;0.5) $

=== Answer

Following Formula (11):

$
  #x _1 = P #x _0 = mat(0.55; 0.45) \
  #x _2 = P #x _1 = mat(0.545; 0.455) \
  #x _3 = P #x _2 = mat(0.5455; 0.4545) \
  #x _4 = P #x _3 = #rect[$ mat(0.54545; 0.45455) $] \
$

Following Formula (12):

$
  #x _4 &= P^4 #x _0 \
  &= mat(527/686, -985/1393; 137/214, 985/1393) mat(1,0;0,-1/10)^4
  mat(333/469, 333/469; -9/14, 550/713) mat(0.5; 0.5) \
  &= mat(6/11; 5/11)
$

#line()

== Exercise 5.5.5

Determine whether $P$ is a regular stochastic matrix.

+ $ P = mat(1/5, 1/7; 4/5, 6/7) $

+ $ P = mat(1/5, 0; 4/5, 1) $

+ $ P = mat(1/5, 1; 4/5, 0) $

=== Answer

+ Yes.

+ No: there is a $0$ in the first row, second column entry.

+ No: there is a $0$ in the second row, second column entry.

#line()

For Exercises 7 and 9, verify that $P$ is a regular stochastic matrix, and
find the steady-state vector for the associated Markov Chain.

== Exercise 5.5.7

$ P = mat(1/4, 2/3; 3/4, 1/3) $

=== Answer

Yes, it is regular. We can find the steady state vector by solving

$
  bold(0) &= (I - P)#q \
  &= mat(3/4, -2/3; -3/4, 2/3) mat(q_1; q_2) \
  #q &= t mat(8/9; 1)
$

#line()

== Exercise 5.5.9

$ P = mat(1/2, 2/3, 0; 1/4, 1/2, 1/3; 1/4, 0, 2/3) $

=== Answer

No, it is not regular: there are 0 entries.

#line()

== Exercise 5.5.13

On a given day the air quality in a certain city is either good or bad. Records
show that when the air quality is good on one day, then there is a $95%$ chance
that it will be good the next day, and when the air quality is bad on one day,
then there is a $45%$ chance that it will be bad the next day.

+ Find the transition matrix for this phenomenon.

+ If the air quality is good today, what is the probabilty that it will be good
  two days from now?

+ If the air quality is bad today, what is the probability it will be bad three
  days from now?

+ If there is $20%$ chance that the air quality will be good today, what is the
  probability that it will be good tomorrow?

=== Answer

+ $ P = mat(0.95, 0.55;0.05, 0.45) $

+ $
    P #x _2 = mat(0.95, 0.55;0.05, 0.45)^2 mat(1;0) = mat(0.93;0.07) \
    therefore P("Good in two days") = 0.93
  $

+ $
    P #x _3 = mat(0.95, 0.55;0.05, 0.45)^3 mat(0;1) = mat(0.858;0.142) \
    therefore P("Bad in three days") = 0.142
  $

+ $
    P #x _1 = mat(0.95, 0.55; 0.05, 0.45) mat(0.2;0.8) = mat(0.63;0.37) \
    therefore P("Good in tomorrow days") = 0.63
  $

#line()

== Exercise 5.5.15

Suppose that at some initial point in time $100,000$ people live in a certain
city and $25,000$ people live in its suburbs. The Regional Planning Commission
determines that each year $5%$ of the city population moves to the suburbs and
$3%$ of the suburban population moves to the city.

+ Assuming that the total population remains constant, make a table that shows
  the populations of the city and its suburbs over a five year period (round to
  the nearest integer).

+ Over the long term, how will the population be distributed between the city
  and its suburbs?

=== Answer

+ #let population = csv("population.csv")
  Let $P = mat(0.95, 0.03; 0.05, 0.97)$ be the transition matrix. Then

  #align(
    center,
    table(
      align: center,
      columns: (auto, auto, auto),
      table.header("Year", "Population in the city", "Suburbs"),
      ..for (year, city, sub) in population.slice(1) { (year, city, sub) },
    ),
  )

+ Since $P$ is a regular stochastic matrix, it stabilizes when the city population
  is $46875$ people, and the suburbs population is $78125$. This can be verified
  by construting the matrix $lim_(n arrow oo) P^n$.

#pagebreak()

= Section 6.1

==== Inner Product Spaces (11 Exercises)

== Exercise 6.1.1

Let $RR^2$ have the wweighted Euclidian inner product

$ angle.l #u, #v angle.r = 2u_1 v_1 3u_2 v_2 $

and let $#u = (1,1), #v = (3,2), #w = (0,-1)$ and $k =3 $. Compute the stated
quantities.

+ $angle.l #u, #v angle.r$

+ $angle.l k#v, #w angle.r$

+ $angle.l #u + #v, #w angle.r$

+ $||#v||$

+ $d(#u, #v)$

+ $||#u - k#v||$

=== Answer

+ $
    angle.l #u, #v angle.r &= 2(1)(3) + 3(1)(2) \
    &= 6 + 6 \
    &= #rect()[$ 12 $]
  $

+ $
    angle.l k#v, #w angle.r &= 2(2 dot 3)(0) + 3(3 dot 2)(-1) \
    &= 3(6)(-1) \
    &= #rect()[$ -18 $] \
  $

+ $
    angle.l #u + #v, #w angle.r &= 2(1+3)(0) + 3(1+2)(-1) \
  &= #rect()[$ -9 $]
  $

+ $
    ||#v|| &= sqrt(angle.l #v\, #v angle.r)
    &= sqrt(2(3)(3) + 3(2)(2)) \
    &= sqrt(18 + 12) \
    &= #rect()[$ sqrt(30) $] \
  $

+ $
    d(#u, #v) &= sqrt(angle.l #u - #v\, #u - #v angle.r) \
    &= sqrt(2(-2)(-2) + 3(-1)(-1)) \
    &= sqrt(8 + 3) \
    &= #rect()[$ sqrt(11) $]
  $

+ $
    ||#u - k#v|| &= sqrt(angle.l #u - k#v\, #u - k#v angle.r) \
    &= sqrt(2(1 - 3 dot 3)^2 + 3(1 - 2 dot 3)^2) \
    &= sqrt(2(-8)^2 + 3(-5)^2) \
    &= sqrt(2(64) + 3(25)) \
    &= sqrt(128 + 75) \
    &= #rect()[$ sqrt(203) $] \
  $

#line()

== Exercise 6.1.3

Compute the quantities in parts (a)-(f) of Exercise 1 using the inner product
on $RR^2$ generated by $A$.

$ A = mat(2,1;1,1) $

=== Answer

Note that $A A^T &= A^2 &= display(mat(5, 3;3,2))$.

+ $
    angle.l #u, #v angle.r &= A#u dot A#v \
    &= #u^T A^2 #v \
    &= mat(1,1) mat(5,3;3,2) mat(3;2) \
    &= mat(8,5) mat(3;2) \
    &= #rect()[$ 34 $]
  $

+ $
    angle.l k#v, #w angle.r
    &= mat(9,6) mat(5,3;3,2) mat(0,-1) \
    &= mat(9,6) mat(-3,-2) \
    &= #rect()[$ -39 $] \
  $

+ $
    angle.l #u + #v, #w angle.r
    &= mat(1+3,1+2) mat(5,3;3,2) mat(0;-1) \
    &= mat(4,3) mat(5,3;3,2) mat(0;-1) \
    &= mat(29, 18) mat(0;-1) \
    &= #rect()[$ -18 $] \
  $

+ $
    ||#v|| &= sqrt(mat(3,2) mat(5,3;3,2) mat(3,2)) \
    &= sqrt(mat(21, 13) mat(3,2)) \
    &= #rect()[$ sqrt(89) $] \
  $

+ $
    d(#u, #v) &= sqrt(mat(1-3,1-2) mat(5,3;3,2) mat(1-3;1-2)) \
    &= sqrt(mat(-2,-1) mat(5,3;3,2) mat(-2; -1)) \
    &= sqrt(mat(-13, -8) mat(-2, -1)) \
    &= sqrt(26+ 8) \
    &= #rect()[$ sqrt(34) $] \
  $

+ $
    ||#u - k#v|| &= sqrt(mat(1-9,1-6) mat(5,3;3,2) mat(1-9,1-6)) \
    &= sqrt(mat(-8,-5) mat(5,3;3,2) mat(-8;-5)) \
    &= sqrt(mat(-8,-5) mat(-55;-34)) \
    &= sqrt(440+170) \
    &= #rect[$sqrt(610) $] \
  $

#line()

== Exercise 6.1.7

Use the inner product on $RR^2$ generated by the matrix $A$ to find $angle.l #u,
#v angle.r$ for the vectors $#u = (0, -3)$ and $#v = (6,2)$.

$ A = mat(4,1;2,-3) $

=== Answer

The weighted inner product $angle.l #u, #v angle.r$ given by the matrix $A$ is

$ (A #u )^T A #v = #u^T A^T A #v $

Note that
$
  A^T A &= mat(4,2;1,-3) mat(4,1;2,-3) \
  &= mat(20, -2; -2, 10)
$

Then

$
  angle.l #u, #v angle.r &= mat(0,-3) mat(20, -2; -2, 10) mat(6;2) \
  &= mat(6, -30) mat(6;2) \
  &= 36 - 60 \
  &= #rect[$ -24 $] \
$

#line()
== Exercise 6.1.9

Compute the standard inner product on $M_(2 2)$ of the given matrices.

$ U = mat(3,-2;4,8) mat(-1,3;1,1) $

=== Answer

$
  angle.l U, V angle.r
  &= 3(-1) -2(3) + 4(1) + 8(1) \
  &= -3 -6 + 4 + 8 \
  &= #rect[$ 3 $] \
$

#line()
== Exercise 6.1.11

Find the standard inner product on $P_2$ of the given polynomials.

$ #p = -2 + x + 3 x^2, quad #q = 4 - 7 x^2 $

=== Answer

The inner product on $P_2$ is defined as $sum_i p_i q_i$, where $p_i, q_i$ are
the coefficients corresponding to the $i$th term of the respective polynomials.
Then

$
  angle.l #p, #q angle.r &= -2(4) + 1(0) + 3(-7) \
    &= -8 - 21 \
    &= #rect[$ -29 $]
$

#line()
== Exercise 6.1.15

A sequence of sample points is given. Use the evaluation inner product on $P_3$
at those sample points to find $angle.l #p, #q angle.r$ for the polynomials

$ #p = x + x^3 "and" #q = 1 + x^2 $

$ x_0 = -2, quad x_1 = -1, quad x_3 = 1 $

=== Answer

$
  angle.l #p, #q angle.r
    &= (-2 - 8)(1 + 4) + (-1 -1)(1 + 1) + (1 + 1)(1 + 1) \
    &= (-10)(5) + (-2)(2) + (2)(2) \
    &= #rect[$ -50 $] \
$

#line()
== Exercise 6.1.17

Find $||#u||$ and $d(#u, #v)$ realtive to the weighted Euclidian inner product
$angle.l #u, #v angle.r = 2u_1 v_1 + 3u_2 v_2$ on $RR^2$.

$ #u = (-3,2) "and" #v = (1,7) $

=== Answer


$
  ||#u|| &= sqrt(angle.l #u\, #u angle.r) \
    &= sqrt(2 dot 9 + 3 dot 4) \
    &= sqrt(18 + 12) \
    &= #rect[$ sqrt(30) $]  \
$

$
  d(#u, #v) &= ||#u - #v|| \
    &= sqrt(angle.l #u - #v\, #u - #v angle.r) \
    &= sqrt(2(-3-1)^2 + 3(2-7)^2) \
    &= sqrt(2(-4)^2 + 3(-5)^2) \
    &= sqrt(2(16) + 3(25)) \
    &= sqrt(32 + 75) \
    &= #rect[$ sqrt(107) $]  \
$

#line()
== Exercise 6.1.19

Find $||#p||$ and $d(#p, #q)$ relative to the standard inner product on $P_2$.

$ #p = -2 + x + 3 x^2, quad #q = 4 - 7x^2 $

=== Answer

$
  ||#p|| &= sqrt(angle.l. #p\, #p angle.r) \
    &= sqrt((-2)^2 + 1^2 + 3^2) \
    &= sqrt(4 + 1 + 9) \
    &= #rect[$ sqrt(14) $] \
$

$
  d(#p, #q)&= ||#p -#q|| \
    &= sqrt(angle.l. #p - #q\, #p -#q angle.r) \
    &= sqrt((-2-4)^2 + (1-0)^2 + (3-(-7))^2) \
    &= sqrt(36 + 1 + 100) \
    &= #rect[$ sqrt(137) $] \
$

#line()
== Exercise 6.1.21

Find $||U||$ and $d(U, V)$ relative to the standard inner product on $M_(2 2)$.

$ U = mat(3,-2;4,8), quad V = mat(-1,3;1,1) $

=== Answer

The inner product for $2 times 2$ matrices $angle.l U, V angle.r$ is defined
as

$
  tr(U^T V)
$

Note that

$
  tr(U^T U) &= tr(mat(3,-2;4,8)^T mat(3,-2;4,8)) \
  &= tr(mat(3,4;-2,8) mat(3,-2;4,8)) \
  &= tr(mat(25, 26; 26, 68)) = 25 + 68 = 93
$
implies that $||U|| = #u _1 dot #u _1 + #u _2 dot #u _2$, where $#u _1, #u _2$
are the row vectors of $U$. Also

$
  U - V &= mat(3,-2;4,8) - mat(-1,3;1,1) \
  &= mat(4,-5;3,7) \
$

#line(stroke: 0.5pt)

Therefore,

$
  ||U|| &= sqrt(angle.l U\, U angle.r) \
    &= sqrt(tr(U^T U)) \
    &= #rect[$ sqrt(93) $]
$

$
  d(U, V) &= ||U - V|| \
    &= sqrt(angle.l U - V\, U - V angle.r) \
    &= sqrt(tr((U - V)^T (U - V))) \
    &= sqrt(tr(16 + 25 + 9 + 49)) \
    &= sqrt(99) \
    &= #rect[$ 3 sqrt(11) $]
$

#line()

== Exercise 6.1.25

Find $#u$ and $d(#u, #v)$ for the vectors $#u = (-1,2)$ and $#v = (2,5)$ relative
to the inner product on $RR^2$ generated by the matrix $A$.

$ A = mat(4,0;3,5) $

=== Answer

Note that
$
  A^T A &= mat(4,3;0,5) mat(4,0;3,5) \
  &= mat(25, 15; 15, 25)
$
and
$
  ||#u|| &= sqrt(#u^T A^T A #u) \
  &= sqrt((25u_1 + 15 u_2, 15 u_1 + 25 u_2) dot (u_1, u_2)) \
  &= sqrt(25(u_1)^2 + 15 u_1 u_2 + 15 u_1u_2 + 25 (u_2)^2) \
  &= sqrt(25(u_1)^2 + 30 u_1 u_2+ 25 (u_2)^2) \
$

Therefore

$
  ||#u|| &= sqrt(25(-1)^2 + 30(-1)(2) + 25(2)^2) \
    &= sqrt(25(1) - 60 + 25(4)) \
    &= sqrt(25 - 60 + 100) \
    &= #rect[$ sqrt(65) $]
$

$
  d(#u, #v) &= ||#u - #v|| \
    &= sqrt(25(-1 - 2)^2 + 30(-1 -2)(2-5) + 25(2-5)^2) \
    &= sqrt(25(-3)^2 + 30(-3)(-3) + 25(-3)^2) \
    &= sqrt(25(9) + 30(9) + 25(9)) \
    &= 3 sqrt(25 + 30 + 25) \
    &= 3 sqrt(80) \
    &= #rect[$ 12 sqrt(5) $] qed
$

#line()
== Exercise 6.1.37

Let the vector space $P_2$ have the inner product

$ angle.l #p, #q angle.r = integral_(-1)^1 p(x)q(x) d x $

Find the following for $#p = 1 "and" #q = x^2$.

+ $angle.l #p, #q angle.r$

+ $d(#p, #q)$

+ $||#p||$

+ $||#q||$

=== Answer

+ $
    angle.l #p, #q angle.r &= integral_(-1)^1 (1)x^2 d x \
    &= 2 integral_0^1 x^2 d x \
    &= 2/3 x^3|_0^1 \
    &= #rect[$ 2/3 $]
  $

+ $
    d(#p, #q) &= sqrt(integral_(-1)^1 (1-x^2)^2 d x) \
    &= sqrt(2 integral_0^1 1 - 2x^2 + x^4 d x) \
    &= sqrt(2 (x - 2 / 3x^3 + 1 / 5x^5)|_0^1) \
    &= sqrt(2 (1 - 2 / 3 + 1 / 5)) \
    &= #rect[$ 4 /  sqrt(15) $]
  $

+ $
    ||#p|| &= sqrt(integral_(-1)^1 (1)(1) d x) \
    &= sqrt(2 integral_0^1 d x) \
    &= sqrt(2 x|_0^1) \
    &= #rect[$ sqrt(2) $]
  $

+ $
    ||#q|| &= sqrt(integral_(-1)^1 x^4 d x) \
    &= sqrt(2 integral_0^1 x^4 d x) \
    &= sqrt(2/5 x^5|_0^1) \
    &= #rect[$ sqrt(2/5) $] qed
  $

#pagebreak()

= Section 6.2

==== Angle and Orthogonality in Inner Product Spaces (9 Exercises)

== Exercise 6.2.3

Find the cosine of the angle between the vectors with respect to the standard
inner product on $P_2$.

$ #p = -1 + 5x + 2x^2, quad #q= 2 + 4x - 9x^2 $

=== Answer

$
  cos theta &= (angle.l #p, #q angle.r) / (||#p|| ||#q||) \
  &= ((-1)(2) + (5)(4) + (2)(-9)) / (sqrt(1 + 25 + 4) sqrt(4 + 16 + 81)) \
  &= (-2 + 20 - 18) / (sqrt(30) sqrt(101)) \
  &= #rect[$ 0 $] qed
$

#line()

== Exercise 6.2.5

Find the cosine of the angle between $A$ and $B$ with respect to the standard
inner product on $M_(2 2)$.

$ A = mat(2,6;1,-3), quad B = mat(3,2;1,0) $

=== Answer

The standard inner product $angle.l U, V angle.r$ in $M_(2 2)$ is given
by $tr(U^T V)$.

$
  A^T B &= mat(2,1;6,-3) mat(3,2;1,0) \
  &= mat(7, 4; 15, 12) \
  tr(A^T B) &= 7 + 12 = 19 \
$

$
  sqrt(tr(A^T A)) &= sqrt(tr(mat(2, 1; 6, -3) mat(2, 6;1, -3))) \
  &= sqrt(5 + 45) \
  &= sqrt(50)
$


$
  sqrt(tr(B^T B)) &= sqrt(tr(mat(3, 1; 2, 0) mat(3, 2; 1, 0))) \
  &= sqrt(10 + 4) \
  &= sqrt(14)
$

$
  cos theta &= (angle.l A, B angle.r) / (||A|| ||B||) \
  &= 19 / (sqrt(50)sqrt(14)) \
  &= 19 / (sqrt(2 dot 25) sqrt(2 dot 14)) \
  &= #rect[$ 19 / (10 sqrt(7)) $] qed
$

#line()

== Exercise 6.2.9

Show that the vectors are orthogonal with respect to the standard inner product
on $P_2$.

$ #p = -1 - x + 2x^2, quad #q = 2x + x^2 $

=== Answer

$
  #p tack.t.big #q arrow.r.l.double.long angle.l #p, #q angle.r = 0 \
$

$
  angle.l #p, #q angle.r &= (-1)(0) + (-1)(2) + (2)(1) \
  &= 0 - 2 + 2 \
  &= #rect[$ 0 $] \
$

$ therefore #p tack.t.big #q quad qed $


#line()

== Exercise 6.2.11

Show that the matrices are orthogonal with respect to the standard inner product
on $M_(2 2)$.

$ U = mat(2,1;-1,3), quad V = mat(-3,0;0,2) $

=== Answer
$
  U tack.t.big V arrow.r.l.double.long angle.l U, V angle.r = 0 \
$

$
  tr(U^T V) &= mat(2,-1;1,3) mat(-3,0;0,2) \
  &= -6 + 6 \
  &= #rect[$ 0 $]
$

$ therefore U tack.t.big V quad qed $

#line()

== Exercise 6.2.13

Show that the vectors are not orthogonal with respect to the Euclidean inner
product on $RR^2$, and then find a value for $k$ for which the vectors are
orthogonal with respect to the weighted Euclidean inner product $angle.l #u,
#v angle.r = 2u_1 v_1 + k u_2 v_2$.

$ #u = (1,3), quad #v = (2,-1) $

=== Answer

$
  #u dot #v &= 1(2) + 3(-1) \
  &= -1 != 0
$

$
  0 &= angle.l #u, #v angle.r \
  &= 2(1)(2) + k(2)(-1) \
  &= 4 - 2k \
  2k &= 4 \
  k &= #rect[$ 2 $] qed
$

#line()

For Exercises 21 and 23, confirm that the Cauchy-Schwarz inequality holds for
the given vectors using the stated inner product.

== Exercise 6.2.21


$
  #u = (1,0,3), quad #v = (2,0,-1)
$

using the weighted Euclidean inner product
$
  angle.l #u, #v angle.r = 2u_1v_1 + 3u_2 v_2 + u_3 v_3
$

in $RR^2$.

=== Answer
$
  |angle.l #u, #v angle.r\ &<= ||#u|| ||#v|| \
  |2(1)(2) + 3(0)(0) + (3)(-1)|
  &<= sqrt(2(1)^2 + 3(0)^2 + (3)^2) sqrt(2(2)^2 + 3(0)^2 + (-1)^2) \
  |4 + 0 - 3| &<=  sqrt(2+9) sqrt(8 + 1) \
  |1| &<= sqrt(11) sqrt(9) \
  1 &<= 3 sqrt(11) quad qed
$

#line()

== Exercise 6.2.23

$ #p = -1 + 2x + x^2, quad #q = 2 - 4x^2 $

using the standard inner product on $P_2$.

=== Answer

$
  |angle.l #p, #q angle.r| &<= ||#p|| ||#q|| \
  |(-1)(2) + 2(0) + 1(-4)| &<= sqrt((-1)^2 + 2^2 + 1^2) sqrt(2^2 + (-4)^2) \
  | -2 + -4 | &<= sqrt(1+4+1) sqrt(4+16) \
  | -6 | &<= sqrt(6) sqrt(20) \
  6 &<= 2 sqrt(30) \
$

Where $2 sqrt(30) approx 11$. $qed$
#line()

== Exercise 6.2.31

Let $C[0,1]$ have the integral inner product

$ angle.l #p, #q angle.r = integral_0^1 p(x) q(x) dif x $

and let $#p = p(x) = x$ and $#q = q(x) = x^2$.

+ Find $angle.l #p, #q angle.r$.

+ Find $||#p||$ and $||#q||$.

=== Answer

+ $
    angle.l #p, #q angle.r &= integral_0^1 p(x) q(x) dif x \
    &= integral_0^1 x dot x^2 dif x \
    &= integral_0^1 x^3 dif x \
    &= x^4/4 |_0^1 \
    &= #rect[$ 1/4 $]
  $

+ $
    ||#p|| &= sqrt(integral_0^1 p(x) p(x) dif x) \
    &= sqrt(integral_0^1 x dot x dif x) \
    &= sqrt(integral_0^1 x^2 dif x) \
    &= sqrt(x^3/3 |_0^1) \
    &= sqrt(1/3) \
    &= #rect[$ 1/sqrt(3) $] \
  $

  $
    ||#q|| &= sqrt(integral_0^1 q(x) q(x) dif x) \
    &= sqrt(integral_0^1 x^2 dot x^2 dif x) \
    &= sqrt(integral_0^1 x^4 dif x) \
    &= sqrt(x^5/5 |_0^1) \
    &= sqrt(1/5) \
    &= #rect[$ 1/sqrt(5) $] \
  $

#line()

== Exercise 6.2.35

Let $C[0,1]$ have the inner product in Exercise 31.

+ Show that the vectors $ #p = p(x) = 1 "and" #q = q(x) = 1/2 - x $ are
  orthogonal.

+ Show that the vectors in part (a) satisfy the Theorem of Pythagoras.

=== Answer

+ $
    #p tack.t.big #q arrow.r.l.double angle.l #p, #q angle.r = 0 \
  $

  $
    angle.l #p, #q angle.r &= integral_0^1 p(x) q(x) dif x \
    &= integral_0^1 1(1/2 - x) dif x \
    &= integral_0^1 1/2 - x dif x \
    &= [x/2 - x^2/2]_0^1 \
    &= [1/2 - 1^2/2] \
    &= #rect[$ 0 $] arrow.r.l.double #p tack.t.big #q
  $

+ $
    ||#p + #q|| &= ||#p|| + ||#q|| \
    sqrt(integral_0^1 p(x) + q(x) dif x)
    &= sqrt(integral_0^1 p(x) dif x) + sqrt(integral_0^1 q(x) dif x) \
    sqrt(integral_0^1 1 + 1/2 - x dif x)
    &= sqrt(integral_0^1 1 dif x) + sqrt(integral_0^1 1/2 - x dif x) \
    sqrt(integral_0^1 3/2 - x dif x)
    &= sqrt(integral_0^1 dif x) + sqrt(integral_0^1 1/2 - x dif x) \
    sqrt([3/2x - x^2/2]_0^1) &= sqrt([x]_0^1) + sqrt([x/2 - x^2/2]_0^1) \
    sqrt(3/2 - 1/2) &= sqrt(1) + sqrt([1/2 - 1^2/2]) \
    sqrt(2/2) &= 1 \
    1 &= 1
  $

#align(right, $qed$)

#pagebreak()

= Section 6.3

==== Gram-Schmidt Process; QR-Decomposition (8 Exercises)

== Exercise 6.3.1

Determine whether the set of vctors is orthogonal and whether it is orthonormal
with respect to the Euclidean inner product on $RR^2$.

+ $(1,2), (2,0)$

+ $(-1 / sqrt(2), 1 / sqrt(2)), (1 / sqrt(2), 1 / sqrt(2))$

+ $(-1 / sqrt(2), - 1 / sqrt(2)), (1 / sqrt(2), 1 / sqrt(2))$

+ $(0,0), (0,1)$

=== Answer

A given basis $S$ is orthonormal if $forall (#a, #b) in S^2,
angle.l #a, #b angle.r = 0$ and $forall #a in S, ||#a|| = 1$.

+ $(1, 2) dot (2,0) = 2 + 0 = 2 arrow.r.double.long$ vectors are not
  orthogonal. Since the vectors are not orthogonal, they are not orthonormal.
  #line(stroke: 0.5pt)

+ $
    (-1 / sqrt(2), 1 / sqrt(2)) dot (1 / sqrt(2), 1 / sqrt(2))
    = -1 / sqrt(2)(1 / sqrt(2)) + 1 / sqrt(2)( 1 / sqrt(2))
    = 1 / 2 - 1 / 2 = 0
  $
  implies that the vectors are orthogonal. Also

  $
    ||(-1 / sqrt(2), 1 / sqrt(2))||
    = sqrt((-1 / sqrt(2))^2 + (1 / sqrt(2))^2) = sqrt(1/2 + 1/2) = 1
  $

  and

  $
    ||(1 / sqrt(2), 1 / sqrt(2))||
    = sqrt((1 / sqrt(2))^2 + (1 / sqrt(2))^2) = sqrt(1/2 + 1/2) = 1
  $

  the vectors are orthonormal.
  #line(stroke: 0.5pt)

+ $
    (-1 / sqrt(2), -1 / sqrt(2)) dot (1 / sqrt(2), 1 / sqrt(2))
    = -1 / sqrt(2)(1 / sqrt(2)) - 1 / sqrt(2)( 1 / sqrt(2))
    = - 1 / 2 - 1 / 2 = -1
  $
  implies that the vectors are not orthogonal. Since they are not orthogonal,
  they cannot be orthonormal.
  #line(stroke: 0.5pt)

+ $
    (0,0) dot (0,1) &= (0)(0) + (0)(1) \
    &= 0
  $
  implies the vectors are orthogonal. Nevertheless,

  $
    ||(0,0)|| = sqrt(0^2 + 0^2) = 0 != 1
  $
  the vectors are not orthonormal.

#line()

== Exercise 6.3.7

Verify that the vectors

$
  #v _1 = (-3 / 5, 4 / 5, 0), quad
  #v _2 = (4 / 5, 3 / 5, 0), quad
  #v _3 = (0,0, 1)
$

form an orthonormal basis for $RR^3$ with respect to the Euclidean inner
product, and then use Theorem 6.3.2(b) to express the vector $#u = (1, -2, 2)$
as a linear combination of $#v _1, #v _2$ and $#v _3$.

=== Answer

Note that

$
  #v _1 dot #v _2 = (-3 / 5)(4 / 5) + 4 / 5(3 / 5)
  = -12 / 5 + 12 / 5 = 0 \
  #v _1 dot #v _3 = (-3 / 5)(0) + 4 / 5(0) + 0(1)
  = 0 \
  #v _2 dot #v _3 = (3 / 5)(0) + 4 / 5(0) + 0(1)
  = 0
$

Therefore, the basis is orthogonal. Also note that

$
  ||#v _1|| = sqrt((-3/5)^2 + (4/5)^2 + 0^2)
  = sqrt(9/25 + 16/25)
  = sqrt(25/25)
  = 1 \
  ||#v _2|| = sqrt((3/5)^2 + (4/5)^2 + 0^2)
  = sqrt(9/25 + 16/25)
  = sqrt(25/25)
  = 1 \
  ||#v _3|| = sqrt(0^2 + 0^2 + 1^2)
  = 1 \
$

therefore, the given basis is orthonormal. Since the basis is orthonormal, we
can express $#u$ as a linear combination $sum_(i=1)^3 angle.l #u, #v _i
angle.r #v _i$:

$
  angle.l #u, #v _1 angle.r = 1(-3/5) - 2(4/5) + 2(0)
  = -3/5 - 8/5 = -11/5 \
  angle.l #u, #v _2 angle.r = 1(3/5) - 2(4/5) + 2(0)
  = 3/5 - 8/5 = -1 \
  angle.l #u, #v _3 angle.r = 1(0) - 2(0) + 2(1) = 2
$

#align(center, rect[$ therefore  #u = -11/5 #v _1 - #v _2 + 2 #v _3 quad qed $])

#line()

== Exercise 6.3.9

Verify that the vectors

$ #v _1 = (2, -2, 1), quad #v _2 = (2,1,-2), #v _3 = (1, 2, 2) $

form an orthogonal basis for $RR^3$ with respect to the Euclidean inner
product, and then use Theorem 6.3.2(a) to express the vector $#u =
(-1, 0, 2)$ as a a linear combination of $#v _1, #v _2$ and $#v _3$.

=== Answer

Note that

$
  angle.l #v _1, #v _2 angle.r = 2(2) - 2(1) + 1(-2)
  = 4 - 2 - 2 = 0 \ \
  angle.l #v _1, #v _3 angle.r = 2(1) - 2(2) + 1(2)
  = 2 - 4 + 2 = 0 \ \
  angle.l #v _2, #v _3 angle.r = 2(1) + 1(2) - 2(2)
  = 2 + 2 - 4 = 0 \
$

Therefore, $forall (#a, #b) in S^2, #a tack.t.big #b$. Since the basis is not
orthonormal, we can express $#u$ as a linear combination
$display(sum_(i=1)^3 (angle.l #u, #v _i angle.r)/(||#v||) #v _i/(||#v||))$:

$
  (angle.l #u, #v _1 angle.r) / (||#v _1||^2)
  = ((-1)2 + 0(-2) + 2(1)) / (2^2 + (-2)^2 + 1^2)
  = (-2 + 2) / (4 + 4 + 1)
  = 0 / 9 \ \
  (angle.l #u, #v _2 angle.r) / (||#v _2||^2)
  = ((-1)2 + 0(1) + 2(-1)) / (2^2 + 1^2 + (-2)^2)
  = (-2 - 2) / (4 + 1 + 4)
  = -4 / 9 \ \
  (angle.l #u, #v _3 angle.r) / (||#v _3||^2)
  = ((-1)1 + 0(2) + 2(2)) / (1^2 + 2^2 + 2^2)
  = (-1 + 4) / (4 + 1 + 4)
  = 3 / 9 = 1 / 3 \ \
  #rect($ therefore #u = -4/9 #v _2 + 1/3 #v _3 $) quad qed
$

#line()

== Exercise 6.3.17

Let $RR^2$ have the Euclidean inner product.

+ Find the orthogonal projection of $#u$ onto the line spanned by the vector
  $#v$.

+ Find the component of $#u$ orthogonal to the line spanned by the vector $#v$,
  and confirm that this component is orthogonal to the line.

$ #u = (2,3), quad #v = (1,1) $

=== Answer

Note that

$ #v /(||#v||) &= ((1,1)) / (sqrt(1^2 + 1^2)) = (1 / sqrt(2), 1 / sqrt(2)) $

+
  $
    "proj"_(#v) #u &= (#u dot #v/(||#v||)) #v/(||#v||) \
    &= (2(1/sqrt(2)) + 3(1/sqrt(2))) (1/sqrt(2), 1/sqrt(2)) \
    &= (5/sqrt(2)) (1/sqrt(2), 1/sqrt(2)) \
    &= #rect[$ (5/2, 5/2) $]
  $

+
  $
    #u - "proj"_(#v) #u = (2-5/2, 3-5/2) = #rect[$ (-1/2,1/2) $] \ \
    #v dot (#u - "proj"_(#v) #u) = (-1/2)(1/sqrt(2)) + (1/2)(1/sqrt(2))
    = #rect[$ 0 $]
  $

#line()

== Exercise 6.3.21

Let $RR^3$ have the Euclidean inner product.

+ Find the orthogonal projection of $#u$ onto the plane spanned by the vectors
  $#v _1$ and $#v _2$.

+ Find the component of $#u$ orthogonal to the plane spanned by the vectors
  $#v _1$ and $#v _2$, and confirm that this component is orthogonal to the
  line.

$
  #u = (1,0,3), quad
  #v _1 = (1/sqrt(6), 1/sqrt(6), -2/sqrt(6)), quad
  #v _2 = (1/sqrt(3), 1/sqrt(3), 1/sqrt(3))
$

=== Answer

Let $W = "span"({#v _1, #v _2})$. Note that

$
  ||#v _1|| &= sqrt((1/sqrt(6))^2 + (1/sqrt(6))^2 + (-2/sqrt(6))^2) \
  &= sqrt(1/6 + 1/6 + 4/6) = sqrt(6/6) = 1 \ \
  ||#v _2|| &= sqrt((1/sqrt(3))^2 + (1/sqrt(3))^2 + (1/sqrt(3))^2) \
  &= sqrt(1/3 + 1/3 + 1/3) = 1 \ \
  #v _1 dot #v _2
  &= 1 / (sqrt(6) sqrt(3)) + 1 / (sqrt(6) sqrt(3)) - 2 / (sqrt(6) sqrt(3)) \
  &= 1 / (3 sqrt(2)) + 1 / (3 sqrt(2)) - 2 / (3 sqrt(2)) = 0
$

+ $
    "proj"_(W) #u &= "proj"_(#v _1) #u + "proj"_(#v _2) #u \
    &= (#u dot #v _1) #v _1 + (#u dot #v _2) #v _2 \
    &= (1/sqrt(6) - 6/sqrt(6) ) #v _1 + (1/sqrt(3) + 3/sqrt(3)) #v _2 \
    &= - 5/sqrt(6) #v _1 + 4/sqrt(3) #v _2 \
    &= - 5/sqrt(6) (1/sqrt(6), 1/sqrt(6), -2/sqrt(6))
    + 4/sqrt(3) (1/sqrt(3), 1/sqrt(3), 1/sqrt(3)) \
    &= (-5/6, -5/6, 5/3) +  (4/3, 4/3, 4/3) \
    &= #rect[$ (1/2, 1/2, 3) $]
  $

+ $
    #u - "proj"_(W) #u
    &= (1,0,3) - (1/2, 1/2, 3) \
    &= #rect[$ (1/2, -1/2, 0) $] \ \
  $

  Consider that $forall (#v , #u) in W times W^(tack.t) angle.l #v, #u angle.r
  = 0 arrow.double.long sum angle.l #u, #v angle.r = 0$. Therefore, \
  $(#u - "proj"_(W) #u) tack.t.big W arrow.r.l.double.long
  sum_i angle.l #u, #v _i angle.r = 0$.

  $
    sum angle.l #u, #v angle.r
    &= angle.l #u, #v _1 angle.r + angle.l #u, #v _2 angle.r \
    &= angle.l #u, #v _1 + #v _2 angle.r \

    &= (1/2,-1/2,0) dot
    (1/sqrt(6) + 1/sqrt(3), 1/sqrt(6) + 1/sqrt(3),  -2/sqrt(6) + 1/sqrt(3)) \

    &= (1/2, -1/2, 0) dot (1/sqrt(6) + sqrt(2)/sqrt(6),
    1/sqrt(6) + sqrt(2)/sqrt(6), -2/sqrt(6) + sqrt(2)/sqrt(6)) \

    &= (1/2, -1/2, 0) dot ((1 + sqrt(2))/sqrt(6),
    (1 + sqrt(2))/sqrt(6), (sqrt(2) - 2)/sqrt(6)) \

    &= 1/2((1 + sqrt(2))/sqrt(6)) + (-1/2)((1 + sqrt(2))/sqrt(6))
    + (0)((sqrt(2) - 2)/sqrt(6)) \

    &= (1/2)((1+sqrt(2))/sqrt(6))(1-1)  = #rect[$ 0 $]  \
  $

#line()

== Exercise 6.3.23

The vectors $#v _1$ and $#v _2$ are orthogonal with respect to the Euclidean
inner product in $RR^4$. Find the orthogonal projection of $#b = (1,2,0,-2)$ on
the subspace $W$ spanned by these vectors.

$ #v _1 = (1,1,1,1), quad #v _2 = (1,1,-1,-1) $

=== Answer

Let $W = "span"(#v _1, #v _2)$.

$
  #v _1 / (||#v _1||) = (1 / 2, 1 / 2, 1 / 2, 1 / 2), quad
  #v _2 / (||#v _2||) = (1 / 2, 1 / 2, - 1 / 2, - 1 / 2) \ \
$
$
  "proj"_W #b &= sum (#b dot #v _i)/(||#v _i||^2) #v _i \
  &= (1,2,0,-2) dot (1/2,1/2,1/2,1/2) #v _1 /(||#v _1||) +
  (1,2,0,-2) dot (1/2,1/2,-1/2,-1/2) #v _2/(||#v _2||) \
  &= - #v _1/(||#v _1||) + #v _2/(||#v _2||) \
  &= (1/2 - 1/2, 1/2 - 1/2, -1/2 - 1/2, -1/2 - 1/2) \
  &= #rect[$ (0, 0, -1, -1) $]
$

#line()

== Exercise 6.3.27

Let $RR^2$ have the Euclidean inner product and use the Gram-Schmidt process
to transform the basis ${#u _1, #u _2}$ into an orthonormal basis. Draw both of
basis vectors in the $x y$-plane.

$ #u _1 = (1, -3), quad #u _2 = (2,2) $

=== Answer

Let ${#v _1, #v _2}$ be the orthogonal basis obtained from applying the
Gram-Schmidt algorithm on ${#u _1, #u _2}$. Then

$
  #v _1 &= #u _1 \
  &= (1, -3) \ \
  #v _2 &= #u _2 - "proj"_(#v _1) #u _2 \
  &= (2,2) - (#u _2 dot #v _1) / (||#v _1||)^2 #v _1 \
  &= (2,2)
  - ((2,2) dot (1 / sqrt(10), -3 / sqrt(10))) (1 / sqrt(10), -3 / sqrt(10)) \
  &= (2,2)
  - (sqrt(2) / sqrt(5) - (3 sqrt(2)) / sqrt(5))(1 / sqrt(10), -3 / sqrt(10)) \
  &= (2,2)
  - (- (2 sqrt(2)) / sqrt(5))(1 / sqrt(10), -3 / sqrt(10)) \
  &= (2,2) + (2 / 5, -6 / 5) \
  &= (12 / 5, 4 / 5) \
$

We can then normalize the vectors to obtain an orthonormal basis:

$
  #v _1 / (||#v _1||) &= ((1, -3)) / sqrt(10) \
  &= #rect[$ (1 / sqrt(10), -3 / sqrt(10)) $] \ \
  #v _2 / (||#v _2||) &= 5 / (4 sqrt(10)) (12 / 5, 4 / 5) \
  &= #rect[$ (3 / sqrt(10), 1 / sqrt(10)) $] \ \
$

#line()

== Exercise 6.3.29

Let $RR^3$ have the Euclidean inner produt and use the Gram-Schmidt process
to transform the basis ${#u _1, #u _2, #u _3}$ into an orthonormal basis.

$ #u _1 = (1,1,1), quad #u _2 = (-1,1,0), quad #u _2 = (1,2,1) $

=== Answer

Let ${#v _1, #v _2, #v _3}$ be the orthogonal basis obtained from applying the
Gram-Schmidt algorithm on ${#u _1, #u _2, #u _3}$. Then

$
  #v _1 &= #u _1 = (1,1,1) \ \
  #v _2 &= #u _2 - "proj"_(#v _1) #u _2 \
  &= (-1,1,0) - ((1 / sqrt(3),1 / sqrt(3),1 / sqrt(3)) dot (-1,1,0))
  (1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3) ) \
  &= (-1,1,0) \ \
$
$
  #v _3 = #u _3 - "proj"_(#v _1) #u _3 - "proj"_(#v _2) #u _3 \
  = (1,2,1) - ((1 / sqrt(3),1 / sqrt(3),1 / sqrt(3)) dot (1,2,1))
  (1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3) )
  - ((-1 / sqrt(2),1 / sqrt(2),0) dot (1,2,1)) (-1 / sqrt(2), 1 / sqrt(2),0) \ \
  = (1,2,1) - (1 / sqrt(3)+2 / sqrt(3)+1 / sqrt(3))
  (1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3) )
  - (-1 / sqrt(2)+2 / sqrt(2)) (-1 / sqrt(2), 1 / sqrt(2),0) \ \
  = (1,2,1) - (4 / sqrt(3)) (1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3) )
  - (1 / sqrt(2)) (-1 / sqrt(2), 1 / sqrt(2),0) \ \
  = (1,2,1) - (4 / 3, 4 / 3, 4 / 3) - (-1 / 2, 1 / 2,0) \ \
  = (6 / 6 - 8 / 6 + 3 / 6, 12 / 6 - 8 / 6 - 3 / 6, 6 / 6 - 8 / 6) \ \
  = (1 / 6, 1 / 6, - 1 / 3)
$

#line(stroke: .5pt)

We can normalize this vectors to get an orthonormal basis.

$
  #v _1 / (||#v _1||) = (1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3)) \
  #v _2 / (||#v _2||) = (-1 / sqrt(2), 1 / sqrt(2), 0) \
  #v _3 / (||#v _3||) = (1 / sqrt(6), 1 / sqrt(6), -2 / sqrt(6))
$

#pagebreak()

= Section 6.4

==== Least Squares Approximation

== Exercise 6.4.1

Find the associated normal equation

$ mat(1,-1;2,3;4,5) mat(x_1;x_2) = mat(2;-1;5) $

=== Answer

$ A^T = mat(1,2,4;-1,3,5) $

$
  A^T A #x &= A^T #b \
  mat(1,2,4;-1,3,5) mat(1,-1;2,3;4,5) mat(x_1; x_2)
  &= mat(1,2,4;-1,3,5) mat(2;-1;5) \
  mat(21,25;25,35) mat(x_1; x_2) &= mat(20;20) \
$

#line()

For Exercises 3 and 5, find the least ssquars solution of the equation
$A#x  = #b$.

== Exercise 6.4.3

$ A = mat(1,-1;2,3;4,5); quad #b = mat(2;-1;5) $

=== Answer

From Exercise 6.4.1, the normal equation is:

$
  mat(21,25;25,35) mat(x_1; x_2) &= mat(20;20) \
$

Note that
$ mat(delim:"|", 21,25;25,35) &= 21(35) - 25^2 = 735 - 625 = 110 $

Therefore,

$
  mat(21, 25;25,35) #x &= mat(20;20) \
  1/110 mat(35,-25;-25,21) mat(21,25;25,35) #x
  &= 1/110 mat(35,-25;-25,21) mat(20;20) \
  #x &= 1/110 mat(200;-80) \
  &= #rect[$ mat(20/11;-8/11) $]
$

#line()

== Exercise 6.4.5

$ A = mat(1,0,-1;2,1,-2;1,1,0;1,1,-1); quad #b = mat(6;0;9;3) $

=== Answer

$
  A^T A #x &= A^T #b \
  mat(1,2,1,1;0,1,1,1;-1,-2,0,-1) mat(1,0,-1;2,1,-2;1,1,0;1,1,-1) #x
  &= mat(1,2,1,1;0,1,1,0;-1,-2,1,-1) mat(6;0;9;3) \
  mat(7,4,-6;4,3,-3;-6,-3,6) #x &= mat(18;12;0) \
  #x &= mat(3,-2,2;-2,2,-1;2,-1,5/3) mat(18;12;-9) \
  &= #rect[$ mat(12;-3;9) $]
$

#pagebreak()

= Section 6.5

==== Mathematical Modeling with Least Squares

== Exercise 6.5.1

Find the least squares straight line fit $y = a x + b$ to the data points, and
show that the reult is reasonable by graphing the fitted curve and plotting the
data in the same coordinate system.

$ (0,0), (1,2), (2,7) $

=== Answer

Let

$
  M #v^* &= #y \
  mat(1,0;1,1;1,2) mat(b; a) &= mat(0;2;7) \
  mat(1,1,1;0,1,2) mat(1,0;1,1;1,2) mat(b; a) &= mat(1,1,1;0,1,2) mat(0;2;7) \
  mat(3,3;3,5) mat(b; a) &= mat(9;16) \
$

Note that $det(M^T M) = 15 - 9 = 6$.

$
  mat(b; a) &= 1 / 6 mat(5,-3;-3,3) mat(9;16) \
  mat(b; a) &= 1 / 6 mat(45-48;-27 + 48) \
  mat(b; a) &= mat(-1/2;7/2) \
$

#figure(
  image("best_line.png", width: 75%),
  caption: [Line of best fit given by $y = -1/2 + 7/2 x$],
)

#line()

== Exercise 6.5.3

Find the least squares quadratic fit $y = a_0 + a_1 x + a_2 x^2$ to the data
points, and show that the reult is reasonable by graphing the fitted curve and
plotting the data in the same coordinate system.

$ (2,0), (3,-10), (5, -48), (6,-76) $

=== Answer

$
  mat(1,2,4;1,3,9;1,5,25;1,6,36) mat(a_0; a_1; a_2) &= mat(0;-10;-48;-76) \
  mat(1,1,1,1;2,3,5,6;4,9,25,36) mat(1,2,4;1,3,9;1,5,25;1,6,36)
  mat(a_0; a_1; a_2) &= mat(1,1,1,1;2,3,5,6;4,9,25,36) mat(0;-10;-48;-76) \
  mat(4,16,74;16,74,376;74,376,2018) mat(a_0; a_1; a_2)
  &= mat(-134;-726;-4026) \
  mat(a_0; a_1; a_2) &= mat(221/10,-62/5,3/2;-62/5,649/90,-8/9;3/2,-8/9,1/9)
  mat(-134;-726;-4026) \
  mat(a_0; a_1; a_2) &= mat(2;5;-3) \
$

#line()

== Exercise 6.5.5

Find a curve of the form $y = a + b/x$ that best fits thee data points $(1,7),
(3,3), (6,1)$ by making the substitution $X = 1/x$.

=== Answer #text(fill: red)[Check again]

Let $X = 1/x$. Then $y = a + b X$

$
  mat(1,1;1,1/3;1,1/6) mat(a;b) &= mat(7;3;1) \
  mat(1,1,1;1,3,6) mat(1,1;1,3;1,6) mat(a;b) &= mat(1,1,1;1,3,6) mat(7;3;1) \
  mat(3,10;10,46) mat(a;b) &= mat(11;22) \
  mat(3,10;10,46) mat(a;b) &= mat(11;22) \
$

Note that $det(M^T M) = 3(46) - 100 = 38$. Then

$
  mat(a;b) &= 1 / 38 mat(46,-10;-10,3) mat(11;22) \
  &= 1 / 38 mat(506-220;-121+66) \
  &= 1 / 38 mat(286;-55) \
$

Now we can undo the substitution. We know that $22/19 X = 1/x$, therefore,

$
  y = 143 / 19 - 22 / 19 (1 / x)
$

#pagebreak()

= Section 7.1

==== Orthogonal Matrices (6 Exercise)

For Exercise 1 and 3, determine whether the matrix is orthogonal, and if so
find its inverse.

== Exercise 7.1.1

+ $ mat(1,0;0,-1) $

+ $ mat(1/sqrt(2),-1/sqrt(2);1/sqrt(2),1/sqrt(2)) $

=== Answer

+ Yes. Note that $(1,0) dot (0,-1) = 0$, $||(1,0)|| = ||(0,-1)|| = 1$.

+ Yes. Note that $(1/sqrt(2), 1/sqrt(2)) dot (-1/sqrt(2),1/sqrt(2)) = 0$,
  $||(1/sqrt(2), 1/sqrt(2))|| = ||(-1/sqrt(2), 1/sqrt(2))|| = 1$.

== Exercise 7.1.3

+ $ mat(0,1,1/sqrt(2);1,0,0;0,0,1/sqrt(2)) $

+ $
    mat(-1/sqrt(2), 1/sqrt(6), 1/sqrt(3); 0, -2/sqrt(6), 1/sqrt(3);
    1/sqrt(2), 1/sqrt(6), 1/sqrt(3))
  $

=== Answer

+ No. Note that $(1,0,0) dot (1/sqrt(2),0,1/sqrt(2)) = 1/sqrt(2)$.

+ Yes. Note that

  $
    (-1 / sqrt(2), 0, 1 / sqrt(2)) dot (1 / sqrt(6),-2 / sqrt(6),1 / sqrt(6))
    = -1 / (2 sqrt(3)) + 1 / (2 sqrt(3)) = 0 \
    (-1 / sqrt(2), 0, 1 / sqrt(2)) dot (1 / sqrt(3), 1 / sqrt(3),1 / sqrt(3))
    = -1 / sqrt(6) + 1 / sqrt(6) = 0 \
    (1 / sqrt(6),-2 / sqrt(6),1 / sqrt(6))
    dot (1 / sqrt(3), 1 / sqrt(3),1 / sqrt(3))
    = 1 / (3 sqrt(2)) - 2 / (3 sqrt(2)) + 1 / (3 sqrt(2)) = 0
  $

  Also,
  $
    ||(-1 / sqrt(2), 0, 1 / sqrt(2))|| = sqrt(1/2 + 1/2) = 1 \
    ||(1 / sqrt(6),-2 / sqrt(6),1 / sqrt(6))|| = sqrt(1/6 + 4/6 + 1/6) = 1 \
    ||(1 / sqrt(3),2 / sqrt(3),1 / sqrt(3))|| = sqrt(1/3 + 1/3 + 1/3) = 1
  $

#line()

== Exercise 7.1.5

Show that the matrix is orthogonal in three ways: first by calculating $A^T A$,
then by using part (b) of Theorem 7.1.1, and then by using part (c) of Theorem
7.1.1

$ A = mat(4/5, 0, -3/5; -9/25, 4/5, -12/25;12/25, 3/5, 16/25) $

=== Answer

$
  A^T A &= mat(4/5, -9/25, 12/25; 0, 4/5, 3/5;-3/5, -12/25, 16/25)
  mat(4/5, 0, -3/5; -9/25, 4/5, -12/25;12/25, 3/5, 16/25) \
  &= mat(1,0,0;0,1,0;0,0,1)
$

#line()

== Exercise 7.1.7

Let $T_A: RR^3 arrow RR^3$ be multiplication by the orthogonal matrix in
Exercise 5. Find $T_A(#x)$ for the vector $#x = (-2,3,5)$, and confirm that
$||T_A(#x)|| = ||#x||$ relative to the Euclidean inner product on $RR^3$.

=== Answer

$
  ||#x|| &= sqrt((-2)^2 + 3^2 + 5^2) = sqrt(4+9+25) = sqrt(38) \
  A#x &= mat(4/5, 0, -3/5; -9/25, 4/5, -12/25;12/25, 3/5, 16/25) mat(-2;3;5)
  = mat(-8/5 -3; 18/25 + 12/5 - 12/5; -24/25 + 9/5 + 16/5)
  = mat(-23/5; 18/25; 101/25) \ \
  ||A#x|| &= sqrt((-23/5)^2 + (18/25)^2 + (101/25)^2) = sqrt(38)
$

#line()

== Exercise 7.1.11

What conditions must $a$ and $b$ satisfy for the matrix

$ mat(a+b, b-a; a-b, b+a) $

to be orthogonal?

=== Answer

$
  sqrt((a+b)^2 + (a-b)^2) &= 1 \
  (a+b)^2 + (a-b)^2 &= 1 \
  a^2 + 2a b +b^2 + a^2 -2a b + b^2 &= 1 \
  2a^2 &= 1- 2b^2 \
  a^2 &= (1- 2b^2) / 2 \
  a &= plus.minus sqrt((1- 2b^2)/2) \
$

#line()

== Exercise 7.1.13

Let a rectangular $x' y'$-coorinate system be obtained by rotating a rectangular
$x y$-coordinate system counterclockwise through the angle $theta = pi/3$.

+ Find the $x' y'$-coordinates of the point whose $x y$-coordinates are
  $(-2,6)$.

+ Find the $x y$-coordinates of the point whose $x' y'$-coordinates are
  $(5,2)$.

=== Answer

+ $
    A &= mat(1/2, - sqrt(3)/2; sqrt(3)/2, 1/2) \
    A #x &= mat(1/2, - sqrt(3)/2; sqrt(3)/2, 1/2) mat(-2;6) \
    &= mat(-1 - 3 sqrt(3); -sqrt(3) + 3)
  $

+ $
    A^T &= mat(1/2, sqrt(3)/2; - sqrt(3)/2, 1/2) \
    A #x &= mat(1/2, sqrt(3)/2; - sqrt(3)/2, 1/2) mat(5;2) \
    &= mat(5/2 + sqrt(3); 1-5sqrt(3))
  $

#pagebreak()

= Section 7.2

==== (4 Exercise)

In Exercises 7 and 11, find a matrix $P$ that orthogonally diagonalizes $A$,
and determine $P^(-1) A P$.

== Exercise 7.2.9

$ A = mat(-2,0,-36;0,-3,0;-36,0,-23) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", -2-lambda,0,-36;0,-3-lambda,0;-36,0,-23-lambda) \
  &= (3+lambda)((-2-lambda)(-23-lambda) - 1296) \
  &= (3+lambda)(25 lambda + lambda^2 - 1250)\
  &= (3+lambda)(lambda + 50)(lambda - 25)\
$

Let $lambda = -3$. Then

$
  A - lambda I &= mat(1,0,-36;0,0,0;-36,0,-20) arrow.double.long
  #x = t mat(0;1;0)
$

Let $lambda = -50$. Then

$
  A - lambda I &= mat(48,0,-36;0,47,0;-36,0,30) arrow.double.long
  #x = t mat(3/4;0;1)
$

Let $lambda = 25$. Then

$
  A - lambda I &= mat(-27,0,-36;0,-28,0;-36,0,-48) arrow.double.long
  #x = t mat(-4/3;0;1)
$

Sine we can choose a basis for the eigenspaces, let $#x _(lambda = -50) =
(3/5,0,4/5)$ and $#x _(lambda = 25) = (4/5,0,-3/5)$. Thus

$
  P = mat(3/5,0,4/5;0,1,0;4/5,0,-3/5),
  quad P^(-1) = mat(3/5,0,4/5;0,1,0;4/5,0,-3/5) = P^T
$

$
  #rect[$ A = mat(3/5,0,4/5;0,1,0;4/5,0,-3/5) mat(-50,0,0;0,-3,0;0,0,25)
  mat(3/5,0,4/5;0,1,0;4/5,0,-3/5) $]
$

#line()

== Exercise 7.2.11

$ A = mat(2,-1,-1;-1,2,-1;-1,-1,2) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", 2 - lambda,-1,-1;-1,2-lambda,-1;-1,-1,2-lambda) \
  &= (2-lambda)((2-lambda)^2 - (-1)^2) + (lambda - 3) - (3 - lambda) \
  &= (2-lambda)(3 - 4 lambda + lambda^2) + 2(lambda - 3) \
  &= (2-lambda)(lambda - 3)(lambda - 1) + 2(lambda - 3) \
  &= (lambda - 3)[(2-lambda)(lambda - 1) + 2] \
  &= (lambda - 3)[(2 lambda - lambda^2 -2 + lambda) + 2] \
  &= (lambda - 3)(3 lambda - lambda^2) \
  &= lambda(lambda - 3)(3 - lambda) \
$

Let $lambda = 3$. Then:

$
  mat(-1,-1,-1;-1,-1,-1;-1,-1,-1) arrow.double.long
  s mat(-1;1;0) + t mat(-1;0;1)
$

Let $lambda = 0$. Then:

$
  mat(2,-1,-1;-1,2,-1;-1,-1,2) arrow.double.long
  t mat(1;1;1)
$

Therefore, by Gram-Schmidt process:

$
  #v _1 = (-1 / sqrt(2),0,1 / sqrt(2)),
  quad #v _2 = (-1 / sqrt(6),2 / sqrt(6),1 / sqrt(6)),
  quad #v _3 = (1 / sqrt(3), 1 / sqrt(3), 1 / sqrt(3))
$

$
  #rect[$
  P = mat(
  -1 / sqrt(2), -1 / sqrt(6), 1/sqrt(3);
    0, 2 / sqrt(6), 1/sqrt(3);
    1 / sqrt(2), -1 / sqrt(6), 1/sqrt(3)), quad
  P^(-1) = mat(
  -1 / sqrt(2), 0, 1 / sqrt(2);
    -1 / sqrt(6), 2 / sqrt(6), -1 / sqrt(6);
    1/sqrt(3), 1/sqrt(3), 1/sqrt(3)), quad
  Lambda = mat(3,0,0;0,3,0;0,0,0)
  $]
$


#line()

In Exercises 15 and 17, find the spectral decomposition of the matrix.

== Exercise 7.2.15

$ mat(3,1;1,3) $

=== Answer

$
  det(A - lambda I) &= lambda^2 - 6lambda + 8 \
  &= (lambda -4)(lambda -2)
$

Let $lambda = 4$:

$ mat(-1,1;-1,1) arrow.double.long t mat(1;1) $

Let $lambda = 2$:

$ mat(1,1;1,1) arrow.double.long t mat(-1;1) $

Therefore,

$
  P = mat(-1/sqrt(2),1/sqrt(2);1/sqrt(2),1/sqrt(2)) = P^T,
  quad Lambda = mat(2,0;0,4)
$

$
  #u _1 = mat(-1/sqrt(2);1/sqrt(2)), #u _2 = mat(1/sqrt(2); 1/sqrt(2)) \
  #u _1 #u _1^T = mat(-1/sqrt(2);1/sqrt(2)) mat(-1/sqrt(2),1/sqrt(2))
  = mat(1/2,-1/2;-1/2, 1/2) \
  #u _2 #u _2^T = mat(1/sqrt(2);1/sqrt(2)) mat(1/sqrt(2),1/sqrt(2))
  = mat(1/2,1/2;1/2, 1/2) \
$

$ A = #rect[$ 2 mat(1/2, -1/2; -1/2, 1/2) + 4 mat(1/2,1/2;1/2, 1/2) $] $

== Exercise 7.2.17

$ mat(-3,1,2;1,-3,2;2,2,0) $

=== Answer

$
  det(lambda I - A)
  &= -2(2 + 2lambda +6) -2(2 + 2lambda +6) + lambda((lambda+3)^2 - 1) \
  &= -8(lambda + 4) + lambda(lambda +4)(lambda + 2) \
  &= (lambda +4)(lambda^2 + 2lambda - 8) \
  &= (lambda +4)^2(lambda - 2) \
$

For $lambda = -4$:

$
  mat(-1,-1,-2;-1,-1,-2;-2,-2,-4)
  arrow.double.long s mat(-1;0;1) + t mat(-1;1;0)
$

For $lambda = 2$:

$
  mat(1,-1/5,-2/5;0,1,1/2;0,0,0)
  arrow.double.long s mat(3;-5; 10)
$

Since vectors from different eigenbasis are orthogonal, we only need to
orthogonalize the eigenbasis corresponding to $lambda = -4$:

$
  #v _1 &= (-1,0,1) \ \
  #v _2 &= (-1,1,0) - ((-1,0,1) dot (-1,1,0)) / 2 (-1,0,1) \
  &= (-1,1,0) + 1 / 2 (-1,0,1) = (-3 / 2, 1, 1 / 2) \ \
  #v _3 &= (3,-5,10)
$

which can be normalized into ${(-1/sqrt(2), 0, 1/sqrt(2)),
(-3/sqrt(14),2/sqrt(14),1/sqrt(14)), (3/sqrt(134),-5/sqrt(134),10/sqrt(134))}$.
Then

$
  P = mat(-1/sqrt(2),-3/sqrt(14),3/sqrt(134);0,2/sqrt(14),-5/sqrt(134);
  1/sqrt(2), 1/sqrt(14), 10/sqrt(134)), quad
  P^(-1) = mat(-1/sqrt(2),0,1/sqrt(2); -3/sqrt(14),2/sqrt(14),1/sqrt(14);
  3/sqrt(134), -5/sqrt(134), 10/sqrt(134)), quad
  Lambda &= mat(-4,0,0;0,-4,0;0,0,2)
$

Thus

$
  A = (-4) mat(-1/sqrt(2);0;1/sqrt(2)) mat(-1/sqrt(2),0,1/sqrt(2))
  -4 mat(-3/sqrt(14); -2/sqrt(14); 1/sqrt(14))
  mat(-3/sqrt(14), -2/sqrt(14), 1/sqrt(14)) \
  +2 mat(3/sqrt(134);-5/sqrt(134);10/sqrt(134))
  mat(3/sqrt(134),-5/sqrt(134),10/sqrt(134)) \
  = #rect[$ -4 mat(1/2, 0, -1/2;0, 0, 0; -1/2, 0, 1/2)
  -4 mat(9/14, 6/14, -3/14; 6/14, 2/7, -2/14; -3/14, -2/14, 1/14)
  + 2 mat(9/ 134, -15/134, 15/67; -15/134, 25/134, -25/67; 15/67, -25/67, 50/67)
    $]
$

#pagebreak()

= Section 7.5

==== Hermitian, Unitary and Normal Matrices (6 Exercise)

== Exercise 7.5.1

Find $A^*$.

$ A = mat(2i, 1-i;4, 3+i;5+i,0) $

=== Answer

$ A^* = overline(A)^T = mat(2i, 4,5-i;1+i,3-i,0) $

#line()

== Exercise 7.5.3

Substitute numbers for the $times$'s so that $A$ is Hermitian.

$ A = #rect[$ mat(1,i,2-3i;times,-3,1;times,times,2) $] $

=== Answer

$
  A = mat(1, i, 2-3i; overline(i), -3, 1; overline(2+3i), overline(1), 2)
  = #rect[$ mat(1,i,2-3i;-i,-3,1;2-3i,1,2) $]
$

#line()

For Exercises 9 and 11, show that $A$ is unitary, and find $A^(-1)$.

== Exercise 7.5.9

$ A = mat(3/5,4/5i;-4/5,3/5i) $

=== Answer

$
  overline(A) &= mat(3/5,-4/5i;-4/5,-3/5i) \
  A^* &= mat(3/5,-4/5;-4/5i,-3/5i) \
  A^* A &= mat(3/5,-4/5;-4/5i,-3/5i) mat(3/5,4/5i;-4/5,3/5i) \
  &= mat(9/25+16/25, -12/25+12/25;-12/25+12/25,16/25+9/25) \
  &= #rect[$ I $]
$

#line()

== Exercise 7.5.11

$
  A = mat(1/(2sqrt(2)) (sqrt(3) + i), 1/(2sqrt(2)) (1 - i sqrt(3));
  1/(2sqrt(2)) (1+i sqrt(3)), 1/(2sqrt(2)) (i - sqrt(3));
)
$

=== Answer

$
  A &= 1/(2 sqrt(2)) mat(sqrt(3) +i, 1-i sqrt(3); 1 + i sqrt(3), i - sqrt(3)) \
  overline(A)
  &= 1/(2 sqrt(2)) mat(sqrt(3)-i, 1 +i sqrt(3); 1 - i sqrt(3), - sqrt(3) - i) \
  A^*
  &= 1/(2 sqrt(2)) mat(sqrt(3)-i, 1 - i sqrt(3); 1 +i sqrt(3), - sqrt(3) - i) \
  A^* A
  &= 1/(2 sqrt(2)) mat(sqrt(3)-i, 1 - i sqrt(3); 1 +i sqrt(3), - sqrt(3) - i)
  1/(2 sqrt(2)) mat(sqrt(3) +i, 1-i sqrt(3); 1 + i sqrt(3), i - sqrt(3)) \
  &= 1/8 mat(8,0; 0,8) \
  &= #rect[$ I $]
$
#line()
== Exercise 7.5.19

Substitute numbers for the $times$'s so that $A$ is skew-Hermitian.

$ A = mat(0, i, 2-3i; times, 0, 1; times, times, 4i) $

=== Answer

Note that $A^* = - A arrow.double.long -A^* = A$.

$
  overline(A) &= mat(0,-i,2+3i;times,0,1;times,times,-4i) \
  A^* &= mat(0, times, times; -i, 0, times; 2 + 3i, 1, -4i) \
  -A^* &= mat(0, times, times; i, 0, times; -2 - 3i, -1, 4i) \
  A &= #rect[$ mat(0,i,2-3i;i,0,1;-2-3i,-1,4i) $]
$

#line()

== Exercise 7.5.23

Verify that the eigenvalues of the skew Hermitian matrix $A$ are pure imaginary
numbers.

$ A = mat(0,-1+i;1+i, i) $

=== Answer

Remember that $lambda = 0$ is not considered an eigenvalue of a matrix.

$
  det(A - lambda I) &= lambda^2 - i lambda + 0 - (-1 + i)(1 +i) \
  &= lambda^2 - i lambda \
  &= lambda(lambda - i) \
  lambda &= #rect[$ 0, i $] \
$
