= Section 2.3

== Problem 3

Verify that $det(k A) = k^n det(A)$.

$ A = mat(delim: "[", 2, -1, 3; 3, 2, 1; 1, 4, 5); k = -4 $

=== Answer

$ k A = mat(delim: "[", -8, 4, -12; -12, -8, -4; -4, -16, -20) $

$
  det(k A) &= mat(delim: "|", -8, 4, -12; -12, -8, -4; -4, -16, -20) \
  &= -8(160-64) -4(240-16) - 12(10)(16) \
  &= -8(96) -4(224) - 12(10)(16) \
  &= -2^7 (6 + 7 + 15) \
  &= -2^9 (7) \
$

#line(length: 100%, stroke: 0.5pt)

$
  det(A) &= mat(delim: "|", 2, -1, 3; 3, 2, 1; 1, 4, 5) \
  &= 56
$
$
  4^3 det(A) &= 56(-2^6) \
  &= 7(-2^9)
$

// #pagebreak()
#line(length: 100%, stroke: 2pt)

== Problem 5
Verify that $det(A B)=det(B A)$ and determine whether the equality
$det(A+B) = det(A) + det(B)$ holds.

$
  A = mat(delim: "[", 2,1,0;3,4,0;0,0,2) "and"
  B = mat(delim: "[", 1, -1, 3; 7, 1, 2; 5, 0, 1)
$

=== Answer
$
  det(A) &= 16 - 6 \
  &= 10
$
$
  det(B) &= 1 + (7-10) + 3(-5) \
  &= 1 -3 - 15 \
  &= -17 \
$
$ det(A)det(B) = -170 $

#line(length: 100%, stroke: 0.5pt)

$
  A B &= mat(delim: "[", 2,1,0;3,4,0;0,0,2)
  mat(delim: "[", 1, -1, 3; 7, 1, 2; 5, 0, 1) \
  &= mat(delim: "[", 2+7, -2+1, 6+2;
  3+28, -3+4, 9+8; 10,0,2) \
  &= mat(delim: "[", 9, -1, 8;
  31, 1, 17; 10,0,2)
$

$
  det(A B) &= 18 + (62-170) + 8(-10) \
  &= 18 - 108 - 80 \
  &= - 170
$

#line(length: 100%, stroke: 2pt)
// #pagebreak()
// #set page(columns: 2)
Use determinants to decide whether the given matrix is invertible.

== Problem 7

$ A = mat(delim:"[", 2, 5, 5; -1, -1, 0; 2, 4, 3) $

=== Answer

$
  det(A) &= -6 - 5(-3) + 5(-4+2) \
  &= -6 + 15 - 10 \
  &= -1 \
$

Therefore, $A$ is invertible.

// #colbreak()

== Problem 13

$ A = mat(delim:"[", 2, 0, 0; 8, 1, 0; -5, 3, 6) $

=== Answer

$
  det(A) &= 0
$

Therefore, $A$ is singular.

#line(length: 100%, stroke: 2pt)

// #pagebreak()

== Problem 17

Find the values for $k$ for which the matrix $A$ is invertible.

$ A = mat(delim: "[", 1,2,4;3,1,6;k,3,2) $

=== Answer

We know that

$
  det(A) &= (2-6) - 3(4-12) + k(12-4) \
  &= -4 +24 + 8k \
  &= 20 + 8k \
$

Let $det(A) != 0$. Then:

$
  0 &!= 8k + 20 \
  -20 / 8 &!= k \
  -5 / 2 &!= k \
$

Therefore, $forall k != -5/2, A$ is invertible

#line(length: 100%, stroke: 2pt)

== Problem 19

Decide whether the matrix is invertible, and if so, use the adjoint method to
find its inverse.

$ A = mat(delim:"[", 2, 5, 5; -1, -1, 0; 2, 4, 3) $

=== Answer

From _Problem 2.3.7_, we know that $det(A) = -1$. Therefore, the matrix is
invertible.

From computation, we get that the adjoint of $A$ is:

$
  a d j (A) &= mat(delim: "[", -3, 3, -2; 5, -4, 2; 5, -5, 3)
$

Therefore,

$
  A^(-1) &= - mat(delim: "[", -3, 3, -2; 5, -4, 2; 5, -5, 3) \
  &= mat(delim: "[", 3, -3, 2; -5, 4, 2; -5, 5, -3)
$

#line(length: 100%, stroke: 2pt)

#pagebreak()

== Problem 25

Solve by Cramer's rule, if it applies.

$
  4x + 5y &= 2 \
  11x + y + 2z &= 3 \
  x + 5y + 2z &= 1
$

=== Answer

Let

$
  A = mat(delim: "[", 4, 5, 0; 11, 1, 2; 1, 5, 2)
$

and
$
  bold(b) = mat(delim: "[", 2;3;1)
$

Then

$
  det(A) &= -2(20-5) + 2(11-1) \ &= -30 + 20 \ &= -10
$
#line(length: 100%, stroke: 0.1pt)
$
  det(A_1) &= mat(delim: "|",2,5,0;3,1,2;1,5,2) \
  &= -2(10-5) + 2(15-1) \
  &= -2(5) + 2(14) \
  &= -10 + 28 \
  &= 18 \
$
#align(
  center,
  rect($ det(A_1) / det(A) = - 18 / 10 = -9 / 5 $),
)

#line(length: 100%, stroke: 0.1pt)

$
  det(A_2) &= mat(delim: "|",4,2,0;11,3,2;1,1,2) \
  &= -2(4-2) + 2(12-12) \
  &= -4
$
#align(
  center,
  rect($ det(A_2) / det(A) = - 4 / 10 = -2 / 5 $),
)

#line(length: 100%, stroke: 0.1pt)

$
  det(A_3) &= mat(delim: "|",4,5,2;11,1,3;1,5,1) \
  &= 2(11-5) - 3(20-5) + (4-55) \
  &= 2(6) - 3(15) - 51 \
  &= 12 - 45 - 51 \
  &= - 82
$
#align(
  center,
  rect[$ det(A_3) / det(A) = - 41 / 5 $],
)

#line(length: 100%, stroke: 2pt)

== Problem 33

Let

$ A = mat(delim: "[", a,b,c;d,e,f;g,h,i) $

Assuming that $det(A) = -7$, find

a) $ det(3A) $

b) $ det(A^(-1)) $

c) $ det(2A^(-1)) $

d) $ det((2A)^(-1)) $

e) $ det(mat(delim: "[",a,g,d;b,h,e;c,i,f)) $

=== Answer

a) $ det(3A) = 27(-7) = -189 $

b) $ det(A^(-1)) = 1/det(A) = -1/7 $

c) $ det(2A^(-1)) = 8 det(A^(-1)) =  (-8/7) $

d) $ det((2A)^(-1)) = 1/det(2A) = 1/(8 det(A)) =  -1/56 $

d) $ det(mat(delim: "[",a,g,d;b,h,e;c,i,f)) = det(A^T) = det(A) = -7 $

== Problem 35

Find the determinant $det(-A)$, given that $A$ is a $4 times 4$ matrix for which
$det(A) = -2$.

=== Answer

$ det(-A) = (-1)^4 det(A) = det(A) = -2 $

#pagebreak()

= Section 3.1

== Exercise 3

Find the components of the vector $overline(P_1 P_2)$.

+ $P_1(3,5), P_2(2,8)$

+ $P_1(5,-2,1), P_2(2,4,2)$

=== Answer

+ $overline(P_1 P_2) &= (-1, 3)$

+ $overline(P_1 P_2) &= (-3, 6, 1)$

#line(length: 100%, stroke: 2pt)

== Exercise 5

+ Find the terminal point of the vector that is equivalent to $bold(u) = (1,2)$
and whose and whose initial point is $A(1,1)$.

+ Find the initial point of the vector that is equivalent to $bold(u) = (1,1,3)$
and whose and whose initial point is $B(-1,-1,2)$.

=== Answer

Let $bold(v)$ be the vector of interest.

+ $bold(v) = bold(u) + A = (1,2) + (1,1) = (2,3)$.

+ $bold(v) = B - bold(u) = (-1,-1,2) - (1,1,3)$

#line(length: 100%, stroke: 2pt)

== Exercise 11

#text(red)[Attempted!!!]

Let $bold(u) = (-3,2,1,0), bold(v) = (4,7,-3,2) "and" bold(w) = (5,-2,8,1)$.
Find the components of

+ $bold(v) - bold(w)$

+ $-bold(v) + (bold(v) - 4 bold(w))$

+ $6(bold(u) - 3 bold(v))$

+ $6(bold(v) - bold(w)) - (4 bold(u) + bold(v)$

=== Answer

+ $bold(v) - bold(w) &= (4,7,-3,2) - (5,-2,8,1) \ &= (-1,9,-11,-1)$

+ $-bold(u) + (bold(v) - 4 bold(w)) &= -(-3,2,1,0) + ((4,7,-3,2) - 4(5,-2,8,1)) \
    &= (3,-2,-1,0) + ((4,7,-3,2) + (-20,8,-32,-4)) \ &= (3,-2,-1,0) +
    (-16,15,-35,-2) \ &= (-13,13,-36,-2)$

+ $6(bold(u) - 3 bold(v)) &= 6((-3,2,1,0) - 3(4,7,-3,2)) \ &= 6((-3,2,1,0) +
      (-12,-21,9,-6)) \ &= 6(-15,-19,19,-6) \ &= (-90,-114,60,-36)$

+ $6(bold(v) - bold(w)) - (4 bold(u) + bold(v))
    &= 6((4,7,-3,2) + (-5,2,-8,-1)) - (4(-3,2,1,0) - (4,7,-3,2)) \
    &= 6(-1,9,-11,1) - ((-12,8,4,0) + (-4,-7,3,-2)) \
    &= (-6,54,-66,6) - (-16,1,7,-2) \
    &= (-22,53,-59,8)$

#line(length: 100%, stroke: 2pt)

== Exercise 15

Which of the following vectors in $RR^6$, if any, are parallel to $bold(u) =
(-2, 1, 0, 3, 5, 1)$?

+ $(4,2,0,6,10,2)$

+ $(4,-2,0,-6,-10,-2)$

+ $(0,0,0,0,0,0)$

=== Answer

$(4,-2,0,-6,-10,-2) = -1 bold(u)$. Therefore, it is parallel to $bold(u)$.

#line(length: 100%, stroke: 2pt)

== Exercise 17

Let $bold(u) = (1,-1,3,5) "and" bold(v) = (2,1,0,-3)$. Find scalars $a$ and $b$
so that $a bold(u) + b bold(v) = (1,-4,9,18)$.

=== Answer

From the given assumptions, it follows that

$
  a bold(u) + b bold(v) &= (1,-4,9,18) \
  (a,-a,3a,5a) + (2b,b,0,-3b) &= (1,-4,9,18) \
  (a,-a,3a,5a) &= (1,-4,9,18) - (2b,b,0,-3b) \
  (a,-a,3a,5a) &= (1 - 2b,-4 - b,9,18 + 3b) \
  (a,-a,3a,5a) &= (1 - 2b,-4 - b,9,18 + 3b) \
$

It follows that $a=3$, and $3 = 1 - 2b arrow.r.l.double.long b = -1$.

#line(length: 100%, stroke: 2pt)

== Exercise 19

Find scalars $c_1, c_2 "and" c_3$ for which

$ c_1(1,-1,0) + c_2(3,2,1) + c_3(0,1,4) = (-1,1,19) $

is satisfied.

=== Answers

From the given assumptions, it follows that

$
  (-1,1,19) &= c_1(1,-1,0) + c_2(3,2,1) + c_3(0,1,4) \
  &= (c_1,-c_1,0) + (3c_2,2c_2,c_2) + (0,c_3,4c_3)
$

from which we get the following system of equations:

$
  c_1 + 3c_2 &= -1 \
  -c_1 + 2c_2 + c_3 &= 1 \
  c_2 + 4c_3 &= 19
$

For which the solutions is at $c_1 = 2, c_2 = -1 "and" c_3 = 5$.

#line(length: 100%, stroke: 2pt)

== Exercise 21

Show that there do not exist scalars $c_1, c_2 "and" c_3$ such that

$ c_1(-2,9,6) + c_2(-3,2,1) + c_3(1,7,5) = (0,5,4) $

=== Answers

We can prove this by contradiction: Let's assume that the given equation can be
express as a consistent system of linear equations. Then, from the given
assumptions, it follows that

$
  (0,5,4) &= c_1(-2,9,6) + c_2(-3,2,1) + c_3(1,7,5) \
  &= (-2c_1,9c_1,6c_1) + (-3c_2,2c_2,c_2) + (c_3,7c_3,5c_3)
$

from which we get the following system of equations:

$
  -2c_1 - 3c_2 + c_3 &= 0 \
  9c_1 + 2c_2 + 7c_3 &= 5 \
  6c_1 + c_2 + 5c_3 &= 4
$

But this system implies $c_3 = 2c_1 + 3c_2 arrow.r.long.double c_1 = 1/4 - c_2
arrow.r.long.double 0c_2 11/2 = 5$, which is a contradiction. $qed$

= Section 3.2

= Section 3.3
