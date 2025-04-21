#set line(length: 100%)
#set math.mat(delim: "[")

= Section 4.4 - Coordinates and Basis

== Exercise 4.4.1

Use the method of Example 3 to show that the following set of veectors
forms a basis for $RR^2$.

$ {(2,1), (3,0)} $

=== Answer

The given set is basis for $RR^2$ if and only if the vectors are linearly
independent and they span the rest of $RR^2$.

#line(length: 100%, stroke: .5pt)

Linear independence (without loss of generality) is satisfied if for the next
equation

$ k_1 (2, 1) + k_2 (3,0) = (0,0) $

which can be rewritten as the following system of equations:

$ mat(2,3;1,0) mat(k_1; k_2) = mat(0;0) $

the answers are only $k_1 = 0$ and $k_2 = 0$. An equivalent statement is that
the determinant of the coefficient matrix of the given system is nonzero.
Therefore, if the determinant of the coefficient matrix is $0$, then the column
vectors are linearly dependent. Since $2(0) - 3 = -1 != 0$, the the column
vectors span $RR^2$.

#line(length: 100%, stroke: .5pt)

The given basis spans the given vector space if $exists k_1$, $k_2 in RR$ such
that, $forall (b_1, b_2) in RR^2$.

$ k_1 (2, 1) + k_2 (3,0) = (b_1,b_2) $

Similar to before, an equivalent statement is that the coefficient matrix of
the given system is nonzero, which we already proved. $qed$

#line(length: 100%)

== Exercise 4.4.3

Show that the following polynomials form a basis for $P_2$.

$ 1 + x," " x^2 -1," " 2x-1 $

=== Answer

We can test linear independence and span by evaluating the determinant of the
corresponding Wronskian to this basis.

$
  det(W) &= mat(delim: "|", 1+x, x^2 -1, 2x -1; 1, 2x, 2; 0, 2, 0) \
  &= -2(2+2x - 2x + 1) \
  &= -2(3) \
  &= -6 \
$

Since the determinant is nonzero, this conforms a basis.

#line(length: 100%)

== Exercise 4.4.7

In each part, show that the set of vectors is not a basis for $RR^3$.

#set enum(numbering: "(a)")

+ ${(2,-3,1), (4,1,1), (0,-7,1)}$

+ ${(1,6,4), (2,4,-1), (-1,2,5)}$

=== Answer

+ $mat(delim: "|", 2,4,0;-3,1,-7;1,1,1) = 7(2-4) + (2 + 12) = 0$.

+ $mat(delim: "|", 1,2,-1;6,4,2;4,-1,5) = (20 + 2) - 2(30 - 8) - 1(-6 - 16)
= 0$.

#line(length: 100%)

== Exercise 4.4.9

Show that the following matrices do not form a basis for $M_(22)$:

$
  mat(1,0;1,1), mat(2,-2;3,2), mat(delim:"[",1,-1;1,0),
  mat(0,-1;1,1)
$

=== Answer

These matrices are linarly independent if $exists.not (k_1, k_2, k_3, k_4) in
RR^4$ such that

$
  k_1 mat(1,0;1,1) + k_2 mat(2,-2;3,2) +
  k_3 mat(1,-1;1,0) + k_4 mat(0,-1;1,1) =
  mat(0,0;0,0)
$

and $(k_1, k_2, k_3, k_4) != bold(0)$. We can rearrange this system as follows:

$
  mat(
    k_1+2 k_2+ k_3; -k_2 - k_3 - k_4;
    k_1 + 3k_2 + k_3 + k_4; k_1 + 2k_2 + k_4) = mat(0;0;0;0)
$

which, can be expressed as the following linear transformation:

$
  mat(
    1, 2, 1, 0; 0, -1, -1, -1;
    1,3,1,1; 1,2,0,1) mat(k_1;k_2;k_3;k_4) = mat(0;0;0;0)
$

Since the determinant of the cofficient matrix is 0, the given set is not
a basis for $RR^4$.

#line(length: 100%)

== Exercise 4.4.11

Find the coordinate vector of $bold(w)$ relative to the basis $S = {bold(u)_1,
bold(u)_2}$ for $RR^2$.

+ $bold(u)_1 = (2,-4), bold(u)_2 = (3,8), bold(w) = (1,1)$

+ $bold(u)_1 = (1,1), bold(u)_2 = (0,2), bold(w) = (a,b)$

=== Answer

+ $
    mat(2,3;-4,8) mat(x_1; x_2) &= mat(1;1) \
    mat(x_1;x_2) &= mat(2/7, -3/28;1/7,1/14) mat(1;1) \
    &= mat(5/28; 3/14)
  $
+ $
    mat(1,0;1,2) mat(x_1; x_2) &= mat(a;b) \
    mat(x_1;x_2) &= mat(1, 0;-1/2,1/2) mat(1;1) \
    &= mat(a; (a-b)/2)
  $

#line(length: 100%)

== Exercise 4.4.13

Find the coordinate vector of $bold(v)$ relative to the basis
$S = {bold(v)_1,bold(v)_2,bold(v)_3}$ for $RR^3$.

+ $bold(v) = (2,-1,3), bold(v)_1 = (1,0,0), bold(v)_2 = (2,2,0),
    bold(v)_3 = (3,3,3)$

+ $bold(v) = (5,-12,3), bold(v)_1 = (1,2,3), bold(v)_2 = (-4,5,6),
    bold(v)_3 = (7,-8,9)$

=== Answer

+ $
    mat(1,0,0;2,2,0;3,3,3) mat(x_1; x_2;x_3) &= mat(2;-1;3) \
    mat(x_1;x_2;x_3) &= mat(0,0,1/3;1,-1,-1;0,1/2,1/6) mat(3;3;3) \
    &= mat(1;-3;2)
  $
+ $
    mat(1,-4,7;2,5,-8;3,6,9) mat(x_1; x_2;x_3) &= mat(5;-12;3) \
    mat(x_1;x_2;x_3) &=
    mat(31/80, 13/40, -1/80; -7/40, -1/20, 11/120; -1/80, -3/40, 13/240)
    mat(5;-12;3) \
    &= mat(-2;0;1)
  $

#line(length: 100%)
== Exercise 4.4.15

First show that the set $S = {A_1, A_2, A_3, A_4}$ is a basis for $M_(22)$,
then express $A$ as a linear combination of the vectors in $S$, and then find
the coordinate vector of $A$ relative to $S$.

$
  A_1 = mat(1,1;1,1), quad A_2 = mat(0,1;1,1), quad A_3 = mat(0,0;1,1), quad
  A_4 = mat(0,0;0,1), quad A = mat(1,0;1,0)
$

=== Answer

Solved in MATLAB using the following script:

```matlab
A = [1,0;1,0];
A_1 = [1,1;1,1]; A_2 = [0,1;1,1]; A_3 = [0,0;1,1]; A_4 = [0,0;0,1];

function vectorized = vectorize(A)
    vectorized = reshape(A, [4,1])
end

function coordinates = verify_and_solve(A, A_1, A_2, A_3, A_4)
    basis = horzcat(
        vectorize(A_1),
        vectorize(A_2),
        vectorize(A_3),
        vectorize(A_4)
    )

    if det(basis) != 0
        coordinates = basis \ vectorize(A), [2,2];
      end
end

answers = verify_and_solve(A, A_1, A_2, A_3, A_4)
```
Answer is $(1,-1,1,-1)$.

#line(length: 100%)

== Exercise 4.4.17

First show that $S = {bold(p)_1, bold(p)_2, bold(p)_3}$ is a basis for $PP_2$,
then express $bold(p)$ as a linear combination of the vectors in $S$, and then
find the coordinate vector of $bold(p)$ relative to $S$.

$
  bold(p)_1 = 1 + x + x^2, quad bold(p)_2 = x + x^2, quad bold(p)_3 = x^2,
  quad bold(p) = 7 - x + 2 x^2
$

=== Answer

We can express this system as follows:

$ k_1 bold(p)_1 + k_2 bold(p)_2 + k_3 bold(p)_3 = bold(p) $

Let $f: RR^3 arrow.r RR$ such that $f(bold(a)) = bold(a) dot (1, x, x^2)$. Then

$
  k_1 bold(p)_1 + k_2 bold(p)_2 + k_3 bold(p)_3 &= k_1 f(1,1,1) + k_2 f(0,1,1) +
  k_3 f(0,0,1) \
  &= mat(f(1,1,1), f(0,1,1), f(0,0,1)) mat(k_1;k_2;k_3) \
  &= mat(1,0,0;x,x,0;x^2,x^2,x^2) mat(k_1;k_2;k_3) \
  &= mat(1,0,0;0,x,0;0,0,x^2) mat(1,1,1;0,1,1;0,0,1) mat(k_1;k_2;k_3)
$

and,
$
  7 - x + 2 x^2 &= f(7,-1,2) \
  &= mat(1,0,0;0,x,0;0,0,x^2) mat(7;-1;2) \
$

We can simplify the matrix $mat(1,0,0;0,x,0;0,0,x^2)$ from both sides,

$
  mat(1,1,1;0,1,1;0,0,1) mat(k_1;k_2;k_3) &= mat(7;-1;2) \
  mat(k_1;k_2;k_3) &= mat(1,-1,0;0,1,-1;0,0,1) mat(7;-1;2) \
  mat(k_1;k_2;k_3) &= mat(8;-3;2)
$

Therefore, $k_1 = 8, k_2 = -3, k_3 = 2$.

#line(length: 100%)

== Exercise 21

In eatch part, let $T_A: RR^3 arrow.r RR^3$ be a multiplication by $A$, and let
${bold(e)_1,bold(e)_2,bold(e)_3}$ be the standard basis for $RR^3$. Determine
whether the set ${T_A (bold(e)_1), T_A (bold(e)_2), T_A (bold(e)_3)}$ is
linearly independent in $RR^3$.

+ $ A = mat(1,1,1;0,1,-3;-1,2,0) $

+ $ A = mat(1,1,2;0,1,1;-1,2,1) $

#line(length: 100%)

=== Answer

Note that $det(I_3) = 1$. Therefore, the set resulting from transforming such
basis is linearly independent if and only if the basis of the linear
transformation is linearly independent.

+ $det(A) = 10$. Therefore, it is linearly independent.
+ $det(A) = 0$. Therefore, it is linearly _dependent_.

#pagebreak()

= Section 4.5 (8 Exercises) - Dimension

In Exercises 3 and 5, find a basis for the solution space of the homogenous
linear system, and find the dimension of that space.

== Exercise 4.5.3
$
  2x_1 + x_2 + 3 x_3 = 0 \
  x_1 + 5 x_3 = 0 \
  x_2 + x_3 = 0 \
$

=== Answer

Let $A$ be the coefficient matrix corresponding the given system. We can find
the solution space by row reducing the matrix.

$
  "rref"(mat(2,1,3;1,0,5;0,1,1)) = I
$

Given by theorem, the basis of the solution space of is ${bold(0)}$.

#line(length: 100%)

== Exercise 4.5.5

$
  x_1 - 3 x_2 + x_3 = 0 \
  2x_1 - 6 x_2 + 2 x_3 = 0 \
  3x_1 - 9 x_1 + 3 x_3 = 0 \
$

=== Answer

Similar to _4.3.3_.

$
  "rref"(mat(1,-3,1;2,-6,2;3,-9,3)) = mat(1,-3,1;0,0,0;0,0,0)
$

This means that any solution to the homogenous system is a scalar multiple of
$(3t + s, t, s)$. We can express this vector as the linear combination $t(3,1,0)
+ s(1,0,1)$.

Therefore, the basis of the solution space is ${(3,1,0), (1,0,1)}$.

#line(length: 100%)

== Exercise 4.5.7

In each part, find a basis for the given subspace of $RR^3$, and state its
dimensions.

+ The plane $3x - 2y + 5z = 0$.

+ The plane $x - y = 0$.

+ The plane $x = 2t, y = -t, z = 4t$.

+ All vectors of the form $(a,b,c)$, where $b = a + c$.

=== Answer

+ ${(2/3, 1, 0), (-5/3, 0,1)}$. 2 dimensions.

+ ${(1, 1, 0), (0, 0, 1)}$. 2 dimensions.

+ ${(2,-1,4)}$. 1 dimension.

+ ${(1,1,0), (0,1,1)}$. 2 dimensions.

#line(length: 100%)

== Exercise 4.5.9

Find the dimension of each of the following vector spaces:

+ The vector space of all diagonal $n times n$ matrices.

+ The vector space of all symmetric $n times n$ matrices.

+ The vector space of all upper triangular $n times n$ matrices.

=== Answer

+ $n$ dimensions.

+ $sum_(i=1)^n i = (n(n+1))/2$ dimensions.

+ Identical to above.

#line(length: 100%)

== Exercise 4.5.13

Find a standard basis vector for $RR^4$ that can be add to the set ${bold(v)_1,
bold(v)_2)$ to produce a basis for $RR^4$.

+ $bold(v)_1 = (1,-4,2,-3), bold(v)_2 = (-3,8,-4,6)$

=== Answer

+ The solution space of span of the given vectors is ${(0,3/4,1,0),
(0,-1/2, 0,1)}$. Adding such vectors to the basis will make a basis to $RR^4$.

#line(length: 100%)

== Exercise 4.5.15

The vectors $bold(v)_1 = (1,-2,3)$ and $bold(v)_2 = (0,5,-3)$ are linearly
independent. Enlarge ${bold(v)_1, bold(v)_2}$.

=== Answer

We can find a third vector to complete the basis by using the cross product.
$ bold(v)_1 times bold(v)_2 = (-2,8,-5) $

#line(length: 100%)

== Exercise 4.5.17

Find a basis for the subspace of $RR^3$ that is spanned by the vectors

$
  bold(v)_1 = (1,0,0), bold(v)_2 = (1,0,1), bold(v)_3 = (2,0,1),
  bold(v)_4 = (0,0,-1)
$

=== Answer

Since $bold(v)_3 = bold(v)_1 + bold(v)_2$ and $bold(v)_4 = bold(v)_1 -
bold(v)_2$, ${bold(v)_1, bold(v)_2}$ is the basis for the spanned subspace.

#line(length: 100%)

== Exercise 4.5.19

In each part, let $T_A: RR^3 arrow.r RR^3$ be a multiplication by $A$ and find
the dimension of the subspace of $RR^3$ consisting of all vectors $bold(x)$ for
which $T_A (bold(x)) = bold(0)$.

+ $ A = mat(1,1,0;1,0,1;1,0,1) $

+ $ A = mat(1,2,0;1,2,0;1,2,0) $

+ $ A = mat(1,0,0;-1,1,0;1,1,1) $

=== Answer

+ 1 dimension.

+ 2 dimensions.

+ 0 dimensions.

#pagebreak()

