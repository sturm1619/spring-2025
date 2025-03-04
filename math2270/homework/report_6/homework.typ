= Section 4.1 (6 Exercises)

In exercises 5-13, determine whether each set equipped with the given
operations is a vector space. For those that are not veector spaces, identify
the vector space axioms that fail.

== Exercise 4.1.5

The set of all pairs of real numbers of the form $(x,y)$ where $x >= 0$,with the
standard operations of $RR^2$.

=== Answer

No, as it fails Theorem (6). Proof by contradiction:

Let $S$ be the formentioned set, and assume $S$ is a vector space. Let $bold(u)$ be
a vector in $S$, such that $u_1 > 0$. Therefore, $forall k in RR, k bold(v) in
S$. Let $k < 0$. Now $k bold(u) = (k u_1, k u_2) arrow.r.double.long k u_1 < 0$,
which contradicts Theorem (6). Therefore, $S$ is not a vector space. $qed$

#line(length: 100%)

== Exercise 4.1.7

The set of all triples of real numbers with the standard vector addition but with
scalar multiplication defined by
$
  k(x,y,z) = (k^2 x, k^2 y, k^2 z)
$

=== Answer

No, as it contradicts (8):

Let $S$ be the formentioned set. Assume that it is a vector space. Therefore,
$k m(bold(u)) = k bold(u) + m bold(v)$. Therefore:

$
  k m(bold(u)) &= k bold(u) + m bold(u) \
  k(m^2 u_1, m^2 u_2, m^2 u_3)
  &= (k^2 u_1, k^2 u_2, k^2 u_3) + (m^2 u_1, m^2 u_2, m^2 u_3) \
  (k^2 m^2 u_1, k^2 m^2 u_2, k^2 m^2 u_3)
  &= ((k^2 + m^2) u_1, (k^2 + m^2) u_2,(k^2 + m^2) u_3)
$

which is a contradiction, as $forall k in RR, forall m in RR, k^2 m^2 != k^2 + m^2$. $qed$

#line(length: 100%)

== Exercise 4.1.9

The set of all $2 times 2$ matrices of the form

$ mat(delim:"[", a, 0; 0,b) $

with the standard matrix addition and scalar multiplication.

=== Answer

Yes, it is a vector space.

#line(length: 100%)
#pagebreak()

== Exercise 4.1.11

The set of all pairs of real numbers of the form $(1, x)$ with the operations

$ (1, y) + (1, y') = (1, y+y') " and " k(1, y) = (1,k y) $

=== Answer

Surprisingly, it is a vector space. A way to understand this problem intuitively
thinking that the first component (the $1$) has the same additive and
multiplicative properties as the conventional $0$.

#line(length: 100%)

== Exercise 4.1.13

Verify Axioms 3, 7, 8 and 9 for the vector space given in Example 4.

=== Answer

In example for, we were given the set $V$ consisting of all $2 times 2$
matrices with real entries. Now, consider matrices
$A = mat(delim: "[", a_(1 1), a_(1 2); a_(2 1), a_(2 2)),
B = mat(delim: "[", b_(1 1), b_(1 2); b_(2 1), b_(2 2)),
C = mat(delim: "[", c_(1 1), c_(1 2); c_(2 1), c_(2 2))$ in $V$, and
$k, m in RR$.

3. $
    A + (B + C) &= (A + B) + C \
    mat(delim: "[", a_(1 1), a_(1 2); a_(2 1), a_(2 2)) +
    (mat(delim: "[", b_(1 1), b_(1 2); b_(2 1), b_(2 2)) +
      mat(delim: "[", c_(1 1), c_(1 2); c_(2 1), c_(2 2))) &=
    (mat(delim: "[", a_(1 1), a_(1 2); a_(2 1), a_(2 2)) +
      mat(delim: "[", b_(1 1), b_(1 2); b_(2 1), b_(2 2))) +
    mat(delim: "[", c_(1 1), c_(1 2); c_(2 1), c_(2 2)) \
    mat(delim: "[", a_(1 1), a_(1 2); a_(2 1), a_(2 2)) +
    mat(delim: "[", b_(1 1)+ c_(1 1), b_(1 2) + c_(1 2);
    b_(2 1) + c_(2 1), b_(2 2) + c_(2 2)) &=
    mat(delim: "[", a_(1 1)+b_(1 1), a_(1 2)+b_(1 2);
    a_(2 1)+b_(2 1), a_(2 2)+b_(2 2)) +
    mat(delim: "[", c_(1 1), c_(1 2); c_(2 1), c_(2 2)) \
    mat(delim: "[", a_(1 1)+b_(1 1)+ c_(1 1), a_(1 2)+b_(1 2) + c_(1 2);
    a_(2 1)+b_(2 1) + c_(2 1), a_(2 2)+ b_(2 2) + c_(2 2)) &=
    mat(delim: "[", a_(1 1)+b_(1 1)+ c_(1 1), a_(1 2)+b_(1 2) + c_(1 2);
    a_(2 1)+b_(2 1) + c_(2 1), a_(2 2)+ b_(2 2) + c_(2 2))
  $

#line(length: 100%, stroke: .5pt)

7. $
    k (A + B) &= k A + k B \
    k mat(delim: "[", a_(1 1)+b_(1 1), a_(1 2)+b_(1 2);
    a_(2 1)+b_(2 1), a_(2 2)+b_(2 2)) &=
    mat(delim: "[", k a_(1 1), k a_(1 2); k a_(2 1), k a_(2 2)) +
    mat(delim: "[", k b_(1 1), k b_(1 2); k b_(2 1), k b_(2 2)) \
    mat(delim: "[", k(a_(1 1)+b_(1 1)), k(a_(1 2)+b_(1 2));
    k(a_(2 1)+b_(2 1)), k(a_(2 2)+b_(2 2))) &=
    mat(delim: "[", k a_(1 1) + k b_(1 1), k a_(1 2) + k b_(1 2);
    k a_(2 1) + k b_(2 1), k a_(2 2) +  k b_(2 2))
  $

#line(length: 100%, stroke: .5pt)

8. $
    (k + m) A &= k A + m A \
    (k + m) mat(delim: "[", a_(1 1), a_(1 2); a_(2 1), a_(2 2)) &=
    mat(delim: "[", k a_(1 1), k a_(1 2); k a_(2 1), k a_(2 2)) +
    mat(delim: "[", m a_(1 1), m a_(1 2); m a_(2 1), m a_(2 2)) \
    mat(delim: "[", (k+m)a_(1 1), (k+m)a_(1 2); (k+m)a_(2 1), (k+m)a_(2 2) ) &=
    mat(delim: "[", k a_(1 1) + m a_(1 1), k a_(1 2) + m a_(1 2);
    k a_(2 1) + m a_(2 1), k a_(2 2) +  m a_(2 2))
  $

#line(length: 100%, stroke: .5pt)

9. $
    (k m) A &= k(m A) \
    (k m) mat(delim: "[", a_(1 1), a_(1 2); a_(2 1), a_(2 2)) &=
    k mat(delim: "[", m a_(1 1), m a_(1 2); m a_(2 1), m a_(2 2)) \
    mat(delim: "[", (k m)a_(1 1), (k m)a_(1 2); (k m)a_(2 1), (k m)a_(2 2) ) &=
    mat(delim: "[", k m a_(1 1), k m a_(1 2); k m a_(2 1) , k m a_(2 2))
  $

#line(length: 100%)

== Exercise 4.1.15

With the addition and scalar multiplication operations defined in Example 7,
show that $V = RR^2$ satisfies Axioms 1-9.

=== Answer

Axioms 1 through 5 hold, since $V$ holds the same definition for addition
operation as $RR^2$, and the set of vectors in $V$ is the set of vectors in
$RR^2$.

6.
$ V = RR^2 and bold(u) in RR^2 arrow.r.l.double.long bold(u) in V $

7.
$
  k (bold(u) + bold(v)) &= k bold(u) + k bold(v) \
  k ((u_1, u_2) + (v_1, v_2)) &= k (u_1, u_2) + k (v_1, v_2) \
  k (u_1 + v_1, u_2 + v_2) &= (k u_1, 0) + (k v_1, 0) \
  (k(u_1 + v_1), 0) &= (k u_1 + k v_1, 0) \
$

8. Let $k+m = a$.
$
  (k + m) bold(u) &= k bold(u) + m bold(u) \
  a ( u_1, u_2 ) &= k (u_1, u_2) + m (u_1, u_2) \
  ( a u_1, 0) &= (k u_1,0) + (m u_1,0) \
  ((k + m)u_1, 0) &= (k u_1 + m u_1, 0) \
$

9. Let $k m = a$.
$
  (k m) bold(u) &= k (m bold(u)) \
  a ( u_1, u_2 ) &= k (m(u_1, u_2)) \
  ( a u_1, 0) &= (k (m u_1,0)) \
  (k m u_1, 0) &= (k m u_1, 0) \
$

#pagebreak()

= Section 4.2 (6 Exercises)

== Exercise 4.2.1

Use the _Theorem 4.2.1_ to determine which of the followig are subspaces of
$RR^3$.

+ All vectors of the form $(a,0,0)$.
+ All vectors of the form $(a,1,1)$.
+ All vectors of the form $(a,b,c)$, where $b = a + c$.
+ All vectors of the form $(a,b,c)$, where $b = a + c + 1$.
+ All vectors of the form $(a,b,0)$.

=== Answer

+ Yes, as $k bold(u) = (k u_1, 0, 0)$ and $bold(u) + bold(v) = (u_1 + v_1, 0, 0)$.

+ No, as $k bold(u) = (k u_1, k, k)$ and $bold(u) + bold(v) = (u_1 + v_1, 2, 2)$.

+ Yes, as $k bold(u) = (k u_1, k(u_1 + u_3), u_3)$ and $bold(u) + bold(v) = (u_1 + v_1, (u_1 + u_3) + (v_1 + v_3), u_3 + v_3)$.

+ No, as $k bold(u) = (k u_1, k(u_1 + u_3 + 1), u_3) != (k u_1, k(u_1 + u_3), u_3)$.

+ Yes, as $k bold(u) = (k u_1, k u_2, 0)$ and $bold(u) + bold(v) = (u_1 + v_1, u_2 + u_2, 0)$.

#line(length: 100%)

== Exercise 4.2.3

Use the _Theorem 4.2.1_ to determine which of the following are subspaces of
$P_3$.

+ All polynomials $a_0 + a_1 x + a_2 x^2 + a_3 x^3$ for which $a_0 = 0$.
+ All polyomials $a_0 + a_1 x + a_2 x^2 + a_3 x^3$ for which $a_0 + a_1 + a_2 + a_3 = 0$.
+ All polynomials of the form $a_0 + a_1 x + a_2 x^2 + a_3 x^3$ in which $a_0, a_1, a_2, a_3$ are rational numbers.
+ All polynomials of the form $a_0 + a_1 x_1$, where $a_0$ and $a_1$ are real numbers.

=== Answer

+ Yes. Consider that any polynomial in $P_3$ can be expressed as the dot product of $bold(a) dot bold(x) = (a_0, a_1, a_2, a_3) dot (1, x, x^2, x^3)$. Then, the sum of any polynomial will always be the the dot product of the sum of their coefficient vectors and the literal vector.
+ Yes.
+ No, as $k in RR arrow.r.double.not k in QQ$.
+ Yes.

#line(length: 100%)

== Exercise 4.2.7

For which of the following are linear combinations of $bold(u) = (0, -2, 2)$
and $bold(v) = (1,3,-1)$?

+ $(2,2,2)$
+ $(0,4,5)$
+ $(0,0,0)$

=== Answer

1. $2 bold(u) + 2 bold(v) = (0,-4,4) + (2,6,-2) = (2,6-4,4-2) = (2,2,2)$
3. $0 bold(u) + 0 bold(v) = (0,0,0)$

#line(length: 100%)

== Exercise 4.2.9

Which of the following are linear combinations of

$
  A = mat(delim: "[", 4, 0; -2,-2), B = mat(delim: "[", 1, -1; 2, 3),
  C = mat(delim: "[", 0, 2; 1, 4)
$

#set enum(numbering: "(a)")

+ $A = mat(delim: "[", 6, -8; -1,-8)$

+ $B = mat(delim: "[", 0, 0; 0, 0)$

+ $C = mat(delim: "[", -1, 5; 7, 1)$

#line(length: 100%)

=== Answer

+ Note that
$
  a A + b B + c C &= mat(delim: "[", 6, -8; -1,-8) \
  mat(delim: "[", 4a+b, -b+2c; -2a+2b+c,-2a+3b+4c)
  &= mat(delim: "[", 6, -8; -1,-8) \
$
maps to the following system of equations:
$
  mat(delim: "[",
  4, 1, 0;
  0,-1,2;
  -2,2,1;
  -2,3,4;
) mat(delim: "[", a;b;c) &= mat(delim: "[", 6; -8; -1;-8)
$
which is a system with infinite solutions. Therefore, the given matrix is a
linear combination for matrices $A, B, "and" C$.

(b) The given matrix is the $0$ vector of its vector space. Therefore, it's a
linear combination of $A, B, "and" C$.

+


== Exercise 4.2.11

In each part, determine whether the vectors span $RR^3$.
+ $bold(v)_1 = (2,2,2), bold(v)_2 = (0,0,3), bold(v)_3 = (0,1,1)$
+ $bold(v)_1 = (2,-1,3), bold(v)_2 = (4,1,2), bold(v)_3 = (8,-1,8)$

=== Answer

1. Yes.
2. No. $bold(v)_1 = 1/2 (bold(v)_3 - bold(v)_1)$. As one of the vectors is a
  linear combination of the others, and $RR^3$ requires a basis of 3 vectors,
  this basis does not span $RR^3$.

#line(length: 100%)

== Exercise 4.2.19

In each part, let $T_A: RR^2 arrow.r RR^2$ be multiplication by $A$, and let
$bold(u)_1 = (1,2)$ and $bold(u)_2 = (-1, 1)$. Determine whether the set
${T_A(bold(u)_1), T_A(bold(u)_2)}$ spans $RR^2$.

+ $ A = mat(delim: "[", 1, -1;0,2) $
+ $ A = mat(delim: "[", 1, -1; -2,2) $

#line(length: 100%)

=== Answer

+ $A bold(u)_1 = mat(delim: "[", -1; 4), A bold(u)_2 = mat(delim: "[", -2; 2)$. The set spans $RR^2$.
  See that $det(A)det(mat(delim:"[", bold(u)_1, bold(u)_2)) != 0$.

+ $A bold(u)_1 = mat(delim: "[", -1; 2), A bold(u)_2 = mat(delim: "[", 0; 4)$. The set does not span $RR^2$.
  See that $det(A)det(mat(delim:"[", bold(u)_1, bold(u)_2)) = 0$.

#pagebreak()

= Section 4.3 (8 Exercises)

== Exercise 4.3.3

In each part, determine whether the vectors are linearly independent or are
linearly dependent in $RR^4$.

+ $(3,8,7,-3), (1,5,3,-1), (2,-1,2,6), (4,2,6,4)$

+ $(3,0,-3,6), (0,2,3,1), (0,-2,-2,0), (-2,1,2,1)$

=== Answer

+ Linearly dependent.

+ Linearly independent.

== Exercise 4.3.5

In each part, determine whether the matrices are linearly independent or
dependent.

+ $
    mat(delim: "[", 1,0; 1,2), mat(delim: "[", 1,2; 2,1), mat(delim: "[", 0,1; 2,1)
  $

+ $
    mat(delim: "[", 1,0,0; 0,0,0), mat(delim: "[", 0,0, 1; 0,0, 0), mat(delim: "[", 0, 0, 0; 0,1, 0)
  $
=== Answer

+ Independent.

+ Independent.

== Exercise 4.3.7

In each part, determine whether the three vectors lie in a plane in $RR^3$.

+ $bold(v)_1 = (2,-2,0), bold(v)_2 = (6,1,4), bold(v)_3 = (2,0,-4)$

+ $bold(v)_1 = (-6,7,2), bold(v)_2 = (3,2,4), bold(v)_3 = (4,-1,2)$

=== Answer

+ They don't lie in a plane.

+ They lie in a plane.

== Exercise 4.3.13

In each part, let $T_A: RR^2 arrow.r RR^2$ be a multiplication by $A$, and let
$bold(u)_1 = (1,2)$ and $bold(u)_2 = (-1,1)$. Determine whether the set
${T_A(bold(u)_1), T_A(bold(u)_2)}$ is linearly independent in $RR^2$.

+ $ A = mat(delim: "[", 1, -1;0,2) $
+ $ A = mat(delim: "[", 1, -1; -2,2) $

=== Answer

+ $A bold(u)_1 = mat(delim: "[", -1; 2), A bold(u)_2 = mat(delim: "[", -2; 2)$. The set is linearly independent in $RR^2$.

+ $A bold(u)_1 = mat(delim: "[", -1; 2), A bold(u)_2 = mat(delim: "[", -2; 4)$. The set is dependent in $RR^2$.

== Exercise 4.3.17

*(Calculus required)* The functions

$ f_1(x) = x " and " f_2(x) = cos(x) $

are linearly independent in $F(-oo, oo)$ because neither function is a scalar
multiple of the other. Confirm the linear independence using the Wronskian.

=== Answer

$ f_1 ' = 1, f_1 '' = 0, f_2 ' = - sin(x), f_2 '' = - cos(x) $

$
  W(x) &= mat(delim:"|", x, cos(x);  1, - sin(x)) \
  &= - x sin(x) - cos(x)
$

And $forall x in RR$ $- (x sin(x) + cos(x))$ is not necesarily $0$. Therefore,
the functions are linearly independent.

== Exercise 4.3.19

*(Calculus required)* Use the Wronskian to show that the following sets of
vectors are linearly independent.

+ $1, x, e^x$
+ $1, x, x^2$

=== Answer

+
$
  W(x) &= mat(delim: "|", 1, x, e^x; 0, 1, e^x; 0, 0, e^x) \
  &= e^x
$

which is nonzero for $x in RR$.

+
$
  W(x) &= mat(delim: "|", 1, x, x^2; 0, 1, 2x; 0, 0, 2) \
  &= 2 - 2x
$

which is nonzero for $x in RR$.

== Exercise 4.3.21

*(Calculus required)* Use the Wronskian to show that the functions $f_1(x) =
sin x, f_2(x) = cos x$, and $f_3(x) = x cos x$ are linearly independent vectors
in $C^oo (-oo,oo)$

=== Answer


$
  W(x) = mat(delim: "|",
  sin x, cos x, x cos x;
  cos x, - sin x, cos x - x sin x;
  - sin x, - cos x, -2 sin x - x cos x
) \
  = sin(x)(2 sin^2 x + 2 x cos(x)sin(x) - cos^2 x) \
  - cos(x)(- sin(x)cos(x) - x cos^2 (x) - x sin^2 x ) \
  + x cos(x)(- cos^2 x - sin^2 x)
$

