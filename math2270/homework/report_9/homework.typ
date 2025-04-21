#set line(length: 100%)
#set math.mat(delim: "[")
#set enum(numbering: "(a)")
#set rect(stroke: red)
= Section 4.10

==== Properties of Matrix Transformations (9 Exercises)

In Exercises 1 and 3, determine whether the operators $T_1$ and $T_2$ commute;
that is, whether $T_1" "circle.small" "T_2 = T_2" "circle.small" "T_1$.

== Exercise 4.10.1

+ $T_1: RR^2 arrow.r RR^2$ is the reflection about the line $y = x$, and $T_2:
  RR^2 arrow.r RR^2$ is the orthogonal projectio onto the $x$-axis.

+ $T_1: RR^2 arrow.r RR^2$ is the reflection about the $x$-axis, and $T_2: RR^2
  arrow.r RR^2$ is the reflection about the line $y = x$.

=== Answer

Let $A_i$ be the transition matrix corresponding to the transformation $T_i$.

+ No commutativity.
  $
    A_1 = mat(0,1;1,0), quad A_2 = mat(0,0;1,0) \
    A_1 A_2 = mat(0,1;1,0) mat(1,0;0,0) = mat(0,0;1,0) \
    A_2 A_1 = mat(1,0;0,0) mat(0,1;1,0) = mat(0,1;0,0)
  $
  #align(right, $qed$)

  #line(stroke: 0.5pt)

+ No commutativity:
  $
    A_1 = mat(-1,0;0,1), quad A_2 = mat(0,1;1,0) \
    mat(1,0;0,-1) mat(0,1;1,0) = mat(0,1;-1,0) \
    mat(0,1;1,0) mat(1,0;0,-1) = mat(0,-1;1,0)
  $
  #align(right, $qed$)

#line()

== Exercise 4.10.3

$T_1: RR^3 arrow.r RR^3$ is a dilation with factor $k$, and $T_2: RR^3 arrow.r
  RR^3$ is a contraction with fator $1/k$.

=== Answer

Note that any scaling matrix with factor $k$ in $M_(n n)$ is a diagonal matrix
$"diag"(k,k,...,k) = k I$. Therefore, without loss of generality:

$
  A_1 A_2 = (k I) (1 / k I) = k / k I^2 = I
$

$qed$
#line()

== Exercise 4.10.7

Find the standard matrix for the stated composition in $RR^2$.

+ A rotation for $90 degree$, followed by a reflection about the line $y=x$.

+ An orthogonal projection onto the $y$-axis, followed by a contraction with
  factor $k=1/2$.

+ A reflection about the $x$-axis, followed by a dilation with factor $k=3$,
  followed by a rotation about the origin of $60 degree$.

=== Answer

In general, standard matrix $A$ for a composition of $n in NN$ transformations
is given by $product_(i=-n)^(-1) A_(-i)$; in other words, the product of the
reversed sequence consisting of the standard matrices of the individual
transformations.

+ Let $A_1, A_2$ be the rotation matrix and reflection matrix as defined above,
  respectively. Then +

  $
    A_1 = mat(0,-1;1,0), quad A_2 = mat(0,1;1,0) \
    A = product_(i=-2)^(-1) A_(-i) = A_2 A_1 = #rect()[$ mat(-1,0;0,1) $]
  $
  #align(right, $qed$)

  #line(stroke: 0.5pt)

+ $
    A_1 = mat(0,0;0,1), quad A_2 = mat(1/2,0;0,1/2) \
    A = A_2 A_1 = mat(0,0;0,1) mat(1/2, 0; 0, 1/2) = #rect()[$ mat(0,0;0,1/2) $]
  $
  #align(right, $qed$)
  #line(stroke: 0.5pt)

+
  $
    A_1 = mat(-1,0;0,1), quad A_2 = mat(3,0;0,3),
    quad A_3 = mat(cos 60 degree, - sin 60 degree; sin 60 degree, cos 60 degree)
    = mat(1/2, -sqrt(3)/2; sqrt(3)/2, 1/2) \
  $
  $
    A = A_3 A_2 A_1
    &= mat(1/2, - sqrt(3)/2; sqrt(3)/2, 1/2) mat(3,0;0,3) mat(-1, 0; 0, 1) \
    &= mat(1/2, - sqrt(3)/2; sqrt(3)/2, 1/2) mat(-3,0;0,3) \
    &= #rect()[$ mat(3/2, (3 sqrt(3))/2;(3 sqrt(3))/2,-3/2) $]
  $
  #align(right, $qed$)

#line()
#pagebreak()

== Exercise 4.10.13

Determine by inspection whether the stated matrix is one-to-one.

+ The orthogonal projection onto the $x$-axis in $RR^2$

+ The reflection about the $y$-axis in $RR^2$.

+ The reflection about the $y = x$-axis in $RR^2$.

+ The contraction with factor $k>0$ in $RR^2$.

=== Answer

+ No. The standard matrix for any orthogonal projection is singular.

+ Yes. The standard matrix for any reflection has determinant $-1$,
  except for reflections about the origin.

+ Yes. Idem to (c).

+ Yes. Given a vector space $RR^n$, the standard matrix for any scaling
  transformation in all directions has determinant $k^n$.

#line()

== Exercise 4.10.15

Describe in words the inverse of the given one-to-one operator.

+ The reflection about the $x$-axis on $RR^2$.

+ The reflection about the origin through an angle of $pi/4$ on $RR^2$.

+ The dilation with factor $3$ on $RR^2$.

=== Answer

+ It's the same operator.

+ Rotation about the origin through an angle of $-pi/4$ or $(7pi)/4$.

+ Dilation with a actor of $k = 1/3$.

#line()

== Exercise 4.10.17

Express the equations in matrix form, and then use parts (g) and (s) of Theorem
4.10.2 to determine whether the operator defined by the equations is one-to-one.

+ $
    w_1 &= 8x_1 + 4&x_2 \
    w_2 &= 2x_1 + &x_2
  $

+ $
    w_1 &= &-x_1 &+ 3x_2 &+ 2x_3 \
    w_2 &= &2x_1 &" " &+ 4x_3 \
    w_3 &= &x_1 &+ 3x_2 &+ 6x_3 \
  $

=== Answer

+ The coefficient matrix of this system is $ A = mat(8,4;2,1) $ Since $det(A) = 8
  - 4(2) = 0$, and by the part $g$ of the Theorem 4.10.2, $T_A$ is not
  one-to-one.

+ The coefficient matrix of this system is $ A = mat(-1,3,2;2,0,4;1,3,6) $
  Since
  $
    det(A) &= -3(2(6) - (4)) - 3(-1(4) - 4) \
    &= -3(12-4) -3((-1)4 - 4) \
    &= -3(8) - 3(-8)\
    &= -24 + 24\
    &= 0
  $
  and part (g) of Theorem 4.10.2, this operator is not one-to-one. $qed$

#line()

== Exercise 4.10.19

Determine whether the matrix operator $T: RR^2 arrow.r RR^2$ defined by the
equations is one-to-one; if so, find the standard matrix of the inverse
operator, and find $T^(-1)(w_1, w_2)$.

+ $
    w_1 &= &x_1 &+ 2&x_2 \
    w_2 &= -&x_1 &+ &x_2
  $

+ $
    w_1 &= &4x_1 - 6&x_2 \
    w_2 &= -&2x_1 + 3&x_2
  $

=== Answer

+ Let $A$ be the matrix operator of the given system of equations. Therefore,

  $
    A = mat(1,2;-1,1)
  $

  Since $det(A) = 1 + 2 = 3$, the matrix is one-to-one, and has an inverse,
  given by:

  $
    A^(-1) &= 1 / det(A) "adj"(A) = 1 / 3 mat(1,-2;1,1) = mat(1/3,-2/3;1/3,1/3)
  $

  Since $A^(-1)$ is the standard matrix corresponding to $T^(-1)$, then

  $
    T_1(w_1, w_2) &= mat(1/3,-2/3;1/3,1/3) mat(w_1;w_2)
    = mat((w_1 - 2w_2)/3; (w_1 + w_2)/3)
  $
  #align(right, $qed$)
  #line(stroke: 0.5pt)

+ Let $A$ be the matrix operator of the given system. Therefore:

  $ A = mat(4, -6;-2,3) $

  Since $det(A) = 4(-6) - (-2)3 =-24 + 24 = 0$, the matrix is not one-to-one,
  and has no inverse. $qed$

#line()

== Exercise 4.10.23

Let $T$ be multiplication by the matrix $A$. Find

+ a basis for the range of $T$.

+ a basis for the kernel of $T$.

+ the rank and nullity of $T$.

+ The rank and nullity of $A$.

$ A = mat(1,-1,3;5,6,-4;7,4,2) $

=== Answer

Note that

$
  det(A) &= [6(2) - 4(-6)] - (-1)[5(2) - (-4)7] + 3[5(4) - 6(7)] \
  &= (12 + 24) + (10 + 28) + 3(20 - 42) \
  &= (36) + (38) + 3(- 22) \
  &= (36) + (38) - 66 \
  &= 8 != 0
$

Therefore

+ The column vectors of $A$ form basis for $R(A)$. Therefore, $R(T) =
  "span"({(1,5,7), (-1,6,4), (3,-4,2)})$

+ $"kernel"(T) = {bold(0)}$.

+ $"rank"(A) = 3, quad "nullity"(A) = 0$

+ Same as $A$: $"rank"(T) = 3, quad "nullity"(T) = 0$

#line()

== Exercise 4.10.25

Let $T_A: RR^4 arrow.r RR^5$ be multiplication by $A$. Find a basis for the
kernel of $T_A$, and then find a basis for the range of $T_A$ that consists of
column vectors of $A$.

$ A = mat(1,2,-1,-2; -3,1,3,4;-3,8,4,2) $

=== Answer

We can find a basis for $"kernel"(T_A)$ by row reducing $A$

$
  mat(1,2,-1,-2;-3,1,3,4;-3,8,4,2)
  &= mat(1,2,-1,-2;0,7,0,-2;0,14,1,-4)
  &= mat(1,2,-1,-2;0,7,0,-2;0,14,1,-4) \
  = mat(1,2,-1,-2;0,1,0,-2/7;0,1,1/14,-2/7)
  &= mat(1,2,-1,-2;0,1,0,-2/7;0,0,1/14,0)
  &= mat(1,2,-1,-2;0,1,0,-2/7;0,0,1,0) \
  &= mat(1,0,0,-10/7;0,1,0,-2/7;0,0,1,0)
$

Therefore, ${(10, 2, 0, 7)}$ is a basis for $"kernel"(T_A)$. By using the
method from Example 7 in Section 4.7, ${(1,-3,-3), (2,1,8), (-1,3,4)}$ is a
basis for $R(T_A)$. $qed$

#pagebreak()

= Section 4.11

==== Geometry of Matrix Operators in $RR^2$ (8 Exercises)

== Exercise 4.11.1

Use the method in _Example 1_ to find an equation for the image of the line $y
= 4x$ under multiplicatoin by the matrix $ A = mat(5,2;2,1) $

=== Answer

Let $(x, y)$ be a point such that $y = 4x$, and let $(x',y')^T = A(x,y)^T$ be
the image of that point under the given transformation. Then

$
  mat(5,2;2,1) mat(x;y) &= mat(x';y') \
  mat(x;y)&= mat(5,2;2,1)^(-1) mat(x';y') \
  &= mat(1,-2;-2,5)^(-1) mat(x';y') \
  &= mat(x'-2y';-2x' + 5y') \
$

is the image of all $(x,y) in RR^2$ under the transformation. If we plug in
those values into our $y = 4x$, we get the image of the line:

$
  y &= 4x \
  -2x' + 5y' &= 4(x' - 2y') \
  -2x' + 5y' &= 4x' - 8y' \
  5y' + 8y' &= 4x' + 2x' \
  13y' &= 6x' \
  y' &= #rect()[$ 6 / 13x' $] \
$

#line()

== Exercise 4.11.5

Sketch the image of the unit square under multiplication by the given
invertible matrix. As in _Example 2_, number the edges of the unit square and
its image so it is clear how those edges correspond.

$ mat(3, -1;1 ,-2) $

=== Answer

Generated using the following GNU/Octave (MATLAB) script:

#line()

== Exercise 4.11.7

Find the standard matrix for a single operator that performs the stated
succession of operations.

+ Compresses by a factor of $1/2$ in the $x$-direction, then expands by a
  factor of $5$ in the $y$-direction.

+ Expands by a factor of $5$ in the $y$-direction, then shears by a factor of
  $2$ in the $y$-direction.

+ Reflects about $y=x$, then rotates through an angle of $180 degree$ about the
  origin.

=== Answer

Let $E_1$ and $E_2$ correspond to the first and second element of the succession
of operations, respectively. Let $A$ be the composition of the transformations.
Then $A = E_2 E_1$. Therefore:

+ $ mat(1,0;0,5) mat(1/2, 0; 0, 1) = mat(1/2,0;0,5) $

+ $ mat(1, 0; 2, 1) mat(1,0;0,5) = mat(1,0;2,5) $

+ $ mat(0, -1; 1, 0) mat(0,1;1,0) = mat(-1,0;0,1) $

#line()

== Exercise 4.11.9

In each part, determine whether the stated operators commute.

+ A reflection about the $x$-axis and a compression in the $x$-direction with
  factor $1/3$.

+ A reflection about the line $y = x$ and an expansion in the $x$-direction
  with factor $2$.

=== Answer

+ Let $E_1$ and $E_2$ be the reflection operator about the $x$-axis and a
  compression operator in the $x$-direction with factor $1/3$. Note that:

  $ E_2 E_1 = mat(1/3,0;0,1) mat(-1,0;0,1) = mat(-1/3,0;0,1) $
  and
  $ E_1 E_2 = mat(-1,0;0,1) mat(1/3,0;0,1) = mat(-1/3,0;0,1) $
  Therefore, they commute. $qed$
  #line(stroke: 0.5pt)


+ Let $E_1$ and $E_2$ be the reflection operator about $y=x$ and an expansion
  operator in the $x$-direction with factor $2$. Note that:

  $ E_2 E_1 = mat(2,0;0,1) mat(0,1;1,0) = mat(0,2;1,0) $
  and
  $ E_1 E_2 = mat(0,1;1,0) mat(2,0;0,1) = mat(0,1;2,0) $
  Therefore, they don't commute. $qed$

#line()

== Exercise 4.11.15

In each part, describe, in words, the effect on the unit square of
multiplication by the given diagonal matrix.

+ $ A = mat(3,0;0,1) $

+ $ A = mat(1,0;0,-5) $

=== Answer

+ Expansion in the $x$-direction by a factor of $3$.

+ Expansion in the $y$-direction by a factor of $-5$.

#line()

== Exercise 4.11.17

+ Show that multiplication by
  $ A = mat(3,1;6,2) $
  maps each point in the plane onto the line $y = 2x$.

+ It follows from part (a) that the noncollinear points $(1,0), (0,1), (-1,0)$
  are mapped onto a line. Does it violate part (_e_) of _Theorem 4.11.1_?

=== Answer

+ Recall that $R(A) = "col"(A)$. Since
  $
    "ref"(mat(3,1;6,2)) &= mat(1,1/3;0,0)
  $
  Therefore, $"col"(A) = t mat(1; 2)$, which is equivalent the all the ${(x,y)
  in RR^2| y = 2x}$.

+ No. _Theorem 4.11.1_ states that, if a transformation $T$ is full rank and
  maps a two vectors onto the same line, those vectors are colinear under the
  original basis. The trasformation corresponding to $A$ is not a full rank;
  therefore, there is no violation. $qed$

#line()

== Exercise 4.11.19

In accordance with part (_c_) of _Theorem 4.11.1_, show that multiplication
by the invertible matrix

$ A = mat(3,2;1,1) $

maps parallel lines $y = 3x + 1$ and $y = 3x -2$ into parallel lines.

=== Answer

Recall that two lines are parallel if their difference is a constant. For
example:

$ 3x + 1 - 3x + 2 = 3 $

is the difference between two lines, and it is constant for any $x$.

The images of both lines under the transformation are given by:

$
  mat(3,2;1,1) mat(x;y) &= mat(x';y') \
  mat(x;y) &= mat(3,2;1,1)^(-1) mat(x';y') \
  &= mat(1,-2;-1,3) mat(x';y') \
  &= mat(x' -2y';-x+3y') \
$

Now, we can plug this values into both lines and find their differences:

$
  -x+3y' &= 3(x' - 2y') + 1 \
  &= 3x' - 6y' + 1 \
  9x' &= 4x' + 1 \
  y' &= 4 / 9x' + 1 / 9 \
$
and

$
  -x+3y' &= 3(x' - 2y') - 2 \
  &= 3x' - 6y' - 2 \
  9y' &= 4x' - 2 \
  y' &= 4 / 9x' - 2 / 9 \
$

Since

$
  4 / 9 x' + 1 / 9 - 4 / 9 x' + 2 / 9 = 1 / 3
$

is a constant, the lines are still parallel. $qed$

#line()

== Exercise 4.11.25

Find the image of the triangle with vertices $(0,0), (1,1), (2,0)$ under
multiplication by $ A = mat(2, -1;0,0) $ Does your answer violate part (_e_) of
_Theorem 4.11.1_? Explain.

=== Answer

We can multiply each vertex with $A$ to find the new "triangle". However, note
that $A$ is a matrix with rank $1 <$ number of colums: therefore, it casts all
points into a line in $RR^2$. Given that

$
  A(0,0)^T = mat(0;0), quad A(1,1)^T = mat(1;0), quad A(2,0)^T = mat(4;0)
$

the line is $y = 0$, or the $x$-axis.

Since $A$ is not a full rank matrix, it doesn't violate _Theorem 4.11.1_, which
only applies to full rank matrices. $qed$

#pagebreak()

= Section 5.1

==== Eigenvalues and Eigenvectors (7)

== Exercise 5.1.3

#let x = math.bold("x")

Confirm by multiplication that $#x$ is an eigenvector of $A$, and find the
corresponding eigenvalue. $ A = mat(4,0,1;2,3,2;1,0,4); #x = mat(1;2;1) $

=== Answer

$
  A #x &= mat(4,0,1;2,3,2;1,0,4) mat(1;2;1) \
  &= mat(4+1;2+6+2;1+4) \
  &= mat(5;10;5) \
  &= 5 mat(1;2;1) \
  &= 5 #x
$

By inspection, $lambda = 5$. $qed$

#line()

== Exercise 5.1.5

Find the characteristic equation, the eigenvalues and bases for the eigenspaces
of the matrix

+ $ mat(1,4;2,3) $

+ $ mat(-2, -7; 1, 2) $

+ $ mat(1, 0; 0, 1) $

=== Answer

+ The characteristic equation is given by
  $
    0 &= det(A - lambda I)\
    &= mat(delim: "|", 1 - lambda, 4; 2, 3 - lambda) \
    &= (1 - lambda)(3 - lambda) - 8 \
    &= 3 - 4 lambda + lambda^2 - 8 \
    &= -5 - 4 lambda + lambda^2 \
    &= #rect()[$ (lambda + 1)(lambda - 5) $] \
  $

  For which the eigenvalues $lambda$ are:

  $
    lambda &= #rect()[$ -1, 5 $]
  $

  We can then plug this values into $(A - lambda I)#x = bold(0)$. For $lambda =
  -1$:

  $
    mat(1+1, 4; 2, 3+1)#x &= bold(0) \
    mat(2, 4; 2, 4)#x &= \
    mat(2, 4; 0, 0)#x &= \
    #x &= #rect()[$ t mat(-2;1) $]
  $

  For $lambda = 5$:

  $
    mat(1-5,4;2,3-5)#x &= bold(0) \
    mat(-4,4;2,-2)#x &= \
    mat(-4,4;0,0)#x &= \
    #x &= #rect()[$ t mat(1;1) $]
  $

  Therefore, $display({mat(-2;1)} "and" {mat(1;1)})$ are the corresponding
  basis for the eigenspaces of $lambda = -1$ and $lambda = 5$, respectively.
  $qed$
  #line(stroke: 0.5pt)

+ The characteristic equation is given by
  $
    0 &= det(A - lambda I)\
    &= mat(delim: "|", -2 - lambda, -7; 1, 2 - lambda) \
    &= (- 2 - lambda)(2 - lambda) + 7 \
    &= -4 +  lambda^2 + 7 \
    &= #rect()[$ 3 + lambda^2 $]
  $
  For which the eigenvalues $lambda$ are given by:

  $
    lambda &= #rect()[$ sqrt(-3) $]
  $

  For which there are no real values. Therefore, the eigenspaces are complex.
  $qed$
  #line(stroke: 0.5pt)

+ The characteristic equation is given by
  $
    0 &= det(A - lambda I)\
    &= mat(delim: "|", 1 - lambda, 0; 0, 1 - lambda) \
    &= #rect()[$ (1 - lambda)(1 - lambda) $] \
  $

  For which the eigenvalues $lambda$ are:

  $
    lambda &= #rect()[$ 1 $]
  $

  We can then plug this values into $(A - lambda I)#x = bold(0)$. For $lambda =
  1$:

  $
    mat(1-1, 0; 0, 1-1)#x &= bold(0) \
    mat(0, 0; 0, 0)#x &= \
    #x &= #rect()[$ t mat(1;0) + s mat(0;1) $]
  $

  Therefore, $display({mat(1;0), mat(0;1)})$ is the eigenbasis corresponding to
  $lambda = 1$. $qed$
#line()

For parts 7-11, find the characteristic equation, the eigenvalues, and bases for
the eigenspaces of the matrix.

== Exercise 5.1.7

$ mat(4,0,1;-2,1,0;-2,0,1) $

=== Answer

The characteristic equation is given by

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", 4 - lambda, 0, 1; -2, 1 - lambda, 0; -2, 0, 1 - lambda) \
  &= (4 - lambda)(1 - lambda)^2 + [0 - (-2)(1 - lambda)] \
  &= (4 - lambda)(1 - 2 lambda + lambda^2) + 2 - 2 lambda \
  &= 4 - 8 lambda + 4lambda^2 - lambda + 2 lambda^2 - lambda^3 + 2 - 2 lambda \
  &= 6 - 11 lambda + 6lambda^2 - lambda^3 \
$

By the _Rational Root Theorem_, possible integer divisors of 6 include
$plus.minus 1, plus.minus 2, plus.minus 3, plus.minus 6$. If we try
$lambda = 1$:

$
  0 = 6 - 11 + 6 - 1 = 12 - 12 = 0
$

Therefore, $(lambda - 1)$ is a factor in the characteristic polynomial. Then:

$
  0 &= (lambda - 1) (6 - 11 lambda + 6lambda^2 - lambda^3) / (lambda - 1) \
  &= -(lambda - 1) ( lambda^3 - 6 lambda^2 + 11 lambda - 6) / (lambda - 1) \
  &= (lambda - 1) (lambda^2 - 5 lambda + 6) \
  &= #rect()[$ (lambda - 1)(lambda - 3)(lambda - 2) $]
$
is the characteristic equation, which implies that

$ #rect()[$ lambda = 1, 2,3 $] $

For $lambda = 1$:

$
  bold(0) &= mat(4 -1, 0, 1;-2,1-1,0;-2,0,1-1)#x \
  &= mat(3, 0, 1; -2, 0, 0; -2, 0, 0) #x \
  #x &= t mat(0;1;0)
$

For $lambda = 2$:

$
  bold(0) &= mat(4 -2, 0, 1;-2,1-2,0;-2,0,1-2)#x \
  &= mat(2, 0, 1; -2, -1, 0; -2, 0, -1) #x \
  #x &= t mat(1/3;1;1)
$

For $lambda = 3$:

$
  bold(0) &= mat(4 -3, 0, 1;-2,1-3,0;-2,0,1-3)#x \
  &= mat(1, 0, 1; -2, -2, 0; -2, 0, -2) #x \
  #x &= t mat(-1;1;1)
$

Therefore, for $lambda = 1,2,3$, the corresponding eigenbasis are $display({
mat(0;1;0)}), display({mat(1/3;1;1)}), display({mat(-1;1;1)})$, respectively.
$qed$

#line()

== Exercise 5.1.9

$ mat(6,3,-8;0,-2,0;1,0,-3) $

=== Answer

The characteristic equation is given by

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", 6 - lambda, 3, -8; 0, -2 - lambda, 0; 1, 0, -3 - lambda) \
  &= (-2 -lambda)[(6 -lambda)(-3 - lambda) + 8] \
  &= (-2 -lambda)[-18 - 6 lambda + 3 lambda + lambda^2 + 8] \
  &= (-2 -lambda)(-10 - 3 lambda + lambda^2 ) \
  &= #rect()[$ (lambda -5)(lambda + 2)^2$]
$

is the characteristic equation, which implies that

$ #rect()[$ lambda = -2, 5 $] $

For $lambda = - 2$:

$
  bold(0) &= mat(6 + 2, 3, -8; 0, -2 + 2, 0; 1, 0, -3 + 2 ) #x \
  &= mat(8, 3, -8; 0, 0, 0; 1, 0, -1 ) #x \
  #x &= t mat(1;0;1) \
$

For $lambda = 5$:

$
  bold(0) &= mat(6 - 5, 3, -8; 0, -2 - 5, 0; 1, 0, -3 - 5 ) #x \
  &= mat(1, 3, -8; 0, -7, 0; 1, 0, -8 ) #x \
  #x &= t mat(8;0;1) \
$

Therefore, for $lambda = -2, 5$, the corresponding eigenbasis are
$display({mat(1;0;1)})$ and $display({mat(8;0;1)})$. $qed$

#line()
#pagebreak()

== Exercise 5.1.11

$ mat(4,0,-1;0,3,0;1,0,2) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", 4 - lambda, 0 ,-1; 0, 3 - lambda, 0; 1, 0, 2 - lambda) \
  &= (3-lambda)[(4-lambda)(2-lambda) + 1] \
  &= (3-lambda)[8 - 4 lambda - 2 lambda + lambda^2 + 1] \
  &= (3-lambda)(9 - 6 lambda + lambda^2) \
  &= #rect()[$ (3-lambda)^3 $] \
$

is the characteristic equation. Therefore

$ lambda = #rect()[$ 3 $] $

For $lambda=3$:

$
  bold(0) &= mat(4-3,0,-1;0,3-3,0;1,0,2-3) #x \
  &= mat(1,0,-1;0,0,0;1,0,-1) #x \
  #x &= t mat(1;0;1) + s mat(0;1;0)
$

Therefore, ${display(mat(1;0;1)), display(mat(0;1;0))}$ is the eigenbasis
corresponding to $lambda = 3$. $qed$

#line()

== Exercise 5.1.13

Find the characteristic equation of the matrix by inspection:

$
  mat(3,0,0;-2,7,0;4,8,1)
$

=== Answer

Recall that the characteristic equation is the determinant of the matrix
$
  mat(delim: "|", 3 - lambda,0,0;-2,7 - lambda,0;4,8,1 - lambda)
$

Since the matrix is upper triangular, the determinant reduces to the product of
the elements in the main diagonal. Therefore, the characteristic equation is:

#align(center, rect()[$ (3 - lambda)(7 - lambda)(1 - lambda) $])
#align(right, $qed$)
#line()

== Exercise 5.1.19

Find the eigenvalues and the corresponding eigenspaces of the stated matrix
operator in $RR^2$. Refer to the tables in _Section 4.9_ and use geometric
reasoning to find the answers. No computations are needed.

+ Reflection about the line $y = x$.

+ Orthogonal projection onto the $x$-axis.

+ Rotation about the origin through a positive angle of $90 degree$.

+ Contraction with factor $k quad (0 <= k <= 1)$.

+ Shear in the $x$-direction by a factor of $k quad (k != 0)$.

=== Answer

+ Reflection matrix: $display(mat(0, 1; 1, 0))$. Eigenvalues: $lambda =
  plus.minus 1$. Eigenbasis: $display({mat(1;1), mat(-1;1)})$.

+ Orthogonal projecetion: $display(mat(1, 0; 0, 0))$. Eigenvalue: $lambda = 1$.
  Eigenbasis: $display({mat(1;0)})$.

+ Rotation about the origin: $display(mat(0,-1;1,0))$. Eigenvalues: All complex.

+ Contraction by $k$: $display(mat(k,0;0,k))$. Eigenvalues: $lambda = k$.
  Eigenbasis: $display({mat(1;0), mat(0;1)})$.

+ Shear in the $x$-direction: $display(mat(1,k;0,1))$. Eigenvalues: $lambda = 1$.
  Eigenbasis: $display({mat(1;0)})$.

#pagebreak()

= Section 5.2

For the exercises 5 and 7, find a matrix $P$ that diagonalizes $A$, and check
your work by computing $P^(-1)A P$.

==== Diagonalization

== Exercise 5.2.5

$ A = mat(1,0;6,-1) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= (1 - lambda)(- 1 - lambda) \
  lambda &= plus.minus 1
$
For $lambda = 1$:
$
  mat(0,0;6,-2) #x &= 0 \
  #x &= t mat(1;3)
$
For $lambda = -1$
$
  mat(2,0;0,0) #x &= 0 \
  #x &= s mat(0;1)
$

Therefore, $P = display(mat(1,0;3,1))$. For verification:

$
  P^(-1) A P
  &= mat(1,0;-3,1) mat(1,0;6,-1) mat(1,0;3,1) \
  &= mat(1,0;-3,1) mat(1,0;3,-1) \
  &= mat(1,0;0,1) \
$

#align(right, $qed$)


#line()
#pagebreak()

== Exercise 5.2.7

$ A = mat(2,0,-2;0,3,0;0,0,3) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", 2 - lambda, 0, -2; 0, 3 - lambda, 0; 0, 0, 3 - lambda) \
  &= (2 - lambda)(3 - lambda)^2
$
For $lambda = 2$:
$
  mat(0,0,-2;0,1,0;0,0,1) #x &= bold(0) \
  #x &= t mat(1;0;0)
$F
For $lambda = 3$:
$
  mat(-1,0,-2;0,0,0;0,0,0) #x &= bold(0) \
  #x &= s mat(0;1;0) + r mat(-2;0;1)
$

Therefore, $P = display(mat(1,0,-2;0,1,0;0,0,1))$. For verification:

$
  P^(-1) A P
  &= mat(1,0,2; 0,1,0; 0, 0, 1) mat(2,0,-2;0,3,0;0,0,3) mat(1,0,-2;0,1,0;0,0,1) \
  &= mat(1,0,2; 0,1,0; 0, 0, 1) mat(2,0,-6;0,3,0;0,0,3) \
  &= mat(2,0,0;0,3,0;0,0,3) \
$

#line()
#pagebreak()

== Exercise 5.2.13

Find the geometric and algebraic multiplicity of each eigenvalue of $A$, and
determine whether $A$ is diagonalizable. If $A$ is diagonalizabl, then find the
matrix $P$ that diagonalizes $A$, and find $P^(-1) A P$.

$ A = mat(0,0,0;0,0,0;3,0,1) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= (- lambda)^2(1 - lambda) \
  lambda &= 1, 0
$

Note that, for $lambda = 1$, the algebraic multiplicity is $1$, and for $lambda
= 0$, the geometric multiplicity is $2$. We can find the geometric multiplicity
by finding the dimension of the eigenspaces:

Given $lambda = 1$ and
$
  mat(-1, 0,0;0,-1,0;3,0,0) #x &= bold(0) \
  #x &= t mat(1;0;0)
$
the corresponding eigenspace has dimension $1$.

Given $lambda = 0$
$
  mat(0, 0,0;0,0,0;3,0,1) #x &= bold(0) \
  #x &= s mat(0;1;0) + t mat(1;0;-3)
$
the corresponding eigenspace has dimnsion $2$.

Therefore, $P = display(mat(1,0,1;0,1,0;0,0,-3))$. For verification:

$
  P^(-1) A P
  &= mat(1,0,1/3;0,1,0;0,0,-1/3) mat(0,0,0;0,0,0;3,0,1) mat(1,0,1;0,1,0;0,0,-3)\
  &= mat(1,0,1/3;0,1,0;0,0,-1/3) mat(0,0,0;0,0,0;3,0,0) \
  &= mat(0,0,0;0,0,0;1,0,0)
$
whose columns we can reorder to get the diagonal matrix
$display(mat(1,0,0;0,0,0;0,0,0))$. $qed$
#line()

== Exercise 5.2.15

The characteristic equation of a matrix $A$ is given. Find the size of the
matrix and the possible dimensions of its eigenspaces.

+ $(lambda - 1)(lambda + 3)(lambda - 5) = 0$

+ $lambda^2 (lambda - 1)(lambda - 2)^3 = 0$

=== Answer

+ Since the characteristic equation has 3 factors, $A$ must be a $3 times 3$
  matrix with 3 distinct eigenspaces, each having at most a geometric
  multiplicity or dimension of $1$.

+ Since the characteristic equation has 3 factors, one of them with algebraic
  multiplicity of 2 and another one with algebraic multiplicity of 3, $A$ must
  be a $6 times 6$ matrix with 3 distinct eigenspaces, where the eigenspace
  corresponding to $lambda = 1$ has at most a geometric multiplicity of $1$,
  $lambda = 0$ has at most a geometric multiplicity of $2$, and $lambda = 2$ has
  at most a geometric multiplicity of $3$.

#line()

== Exercise 5.2.17

Use the method in _Example 6_ to compute the matrix $A^10$.

$ A = mat(0,3;2,-1) $

=== Answer

$
  0 &= det(lambda I - A) \
  &= (lambda)(lambda + 1) - 6 \
  &= lambda^2 + lambda - 6 \
  &= (lambda + 3)(lambda - 2) \
$

For $lambda = 2$:

$
  mat(2, -3; -2, 3) #x &= bold(0) \
  #x &= t mat(3/2;1)
$
For $lambda = -3$:

$
  mat(-3, -3; -2, -2) #x &= bold(0) \
  #x &= s mat(-1;1)
$

Therefore, $P = display(mat(3/2,-1;1,1)), quad P^(-1) =
display(2/5 mat(1,1;-1,3/2)) = display(mat(2/5,2/5;-2/5,3/5))$. Therefore,

$
  A^10 &= P (P^(-1) A P )^10 P(-1) \
  &= mat(3/2,-1;1,1) (mat(2/5,2/5;-2/5,3/5) mat(0,3;2,-1) mat(3/2,-1;1,1))^10
  mat(2/5,2/5;-2/5,3/5) \
  &= mat(3/2,-1;1,1) mat(2,0;0,-3)^10 mat(2/5,2/5;-2/5,3/5) \
  &= #rect()[$ mat(24234, -34815; -23410, 35839) $] \
$
#align(right, $qed$)
#line()

== Exercise 5.2.19

Let

$ A = mat(-1,7,-1;0,1,0;0,15,-2) quad "and" quad P = mat(1,1,1;0,0,1;1,0,5) $

Confirm that $P$ diagonalizes $A$, and then compute $A^11$.

=== Answer

$
  P^(-1) A P
  &= mat(0, -5, 1; 1,4,-1; 0, 1,0) mat(-1,7,-1;0,1,0;0,15,-2)
  mat(1,1,1;0,0,1;1,0,5) \
  &= mat(-2, 0, 0; 0, -1, 0; 0, 0, 1)
$
is the diagonal matrix similar to $A$. Then:

$
  A^11 &= P (P^(-1) A P)^11 P^(-1) \
  &= mat(1,1,1;0,0,1;1,0,5) mat(-2, 0, 0; 0, -1, 0; 0, 0, 1)^11
  mat(0, -5, 1; 1,4,-1; 0, 1,0) \
  &= mat(1,1,1;0,0,1;1,0,5) mat(-2048, 0, 0; 0, -1, 0; 0, 0, 1)
  mat(0, -5, 1; 1,4,-1; 0, 1,0) \
  &= mat(1,1,1;0,0,1;1,0,5) mat(0, 10240, -2048; -1, -4, 1; 0, 1, 0) \
  &= #rect()[$ mat(-1, 10237, -2047; 0, 1, 0; 0, 10245, -2048) $]
$

#align(right, $qed$)

#line()

== Exercise 5.2.21

Find $A^n$ if $n$ is a positive integer and

$ A = mat(3,-1,0;-1,2,-1;0,-1,3) $

=== Answer

$
  0 &= det(A - lambda I) \
  &= mat(delim: "|", 3 - lambda,-1,0;-1,2 - lambda,-1;0,-1,3 - lambda) \
  &= (3-lambda)[(2 - lambda)(3 - lambda) - 1] + (-1(3-lambda)) \
  &= (3-lambda)[5 - 5 lambda + lambda^2] + lambda - 3 \
  &= 15 - 15 lambda + 3 lambda^2 - 5 lambda + 5 lambda^2 - lambda^3 + lambda - 3 \
  &= 12 - 19 lambda + 8 lambda^2 - lambda^3 \
$

By the _Rational Root Theorem_, $plus.minus 1, plus.minus 2, plus.minus 3,
plus.minus 4, plus.minus 6, plus.minus 12$ are some possible divisors. Let
$lambda = 3$:

$
  0 &= 12 - 19(3) + 8(9) - 27 \
$

Therefore, $lambda - 3$ is a factor of the characteristic polynomial. By long
division

$
  0 &= - (lambda - 3)(lambda^3 - 8 lambda^2 + 19 lambda - 12) / (lambda - 3) \
  &= (lambda - 3)(lambda^2 - 5lambda + 4) \
  &= #rect()[$ (lambda - 3)(lambda - 4)(lambda - 1) $] \
$

is the characteristic equation. Therefore, the eigenvalues are

$ #rect()[$ lambda = 1,3,4 $] $

For $lambda = 1$:
$
  bold(0) &= mat(3-1,-1,0;-1,2-1,-1;0,-1,3-1) #x \
  &= mat(2,-1,0;-1,1,-1;0,-1,2) #x \
  #x &= t mat(1;2;1)
$

For $lambda = 3$:

$
  bold(0) &= mat(3-3,-1,0;-1,2-3,-1;0,-1,3-3) #x \
  &= mat(0,-1,0;-1,-1,-1;0,-1,0) #x \
  #x &= t mat(-1;0;1)
$

For $lambda = 4$:
$
  bold(0) &= mat(3-4,-1,0;-1,2-4,-1;0,-1,3-4) #x \
  &= mat(-1,-1,0;-1,-2,-1;0,-1,-1) #x \
  #x &= t mat(1;-1;1)
$

Therefore ${mat(1;2;1)}, {mat(-1;0;1)}$ and ${mat(1;-1;1)}$ are the eigenbasis
corresponding to $lambda = 1,3,4$, respectively.

We know that $A^n = P Lambda P^(-1)$, where $P$ is the matrix whose column
vectors are eigenvectors of $A$, and $Lambda = P^(-1) A P$ is a diagonal matrix
whose entries correspond to the eigenvalues. Therefore:

$
  P = mat(1,-1,1;2,0,-1;1,1,1), quad
  P^(-1) = mat(1/6,1/3,1/6;-1/2,0,1/2;1/3,-1/3,1/3), quad
  Lambda = mat(1,0,0;0,3,0;0,0,4) \
$

$
  P Lambda^n P^(-1)
  &= mat(1,-1,1;2,0,-1;1,1,1)
  mat(1,0,0;0,3,0;0,0,4)^n
  mat(1/6,1/3,1/6;-1/2,0,1/2;1/3,-1/3,1/3) \
  &= mat(1,-1,1;2,0,-1;1,1,1)
  mat(1,0,0;0,3^n,0;0,0,4^n)
  mat(1/6,1/3,1/6;-1/2,0,1/2;1/3,-1/3,1/3) \
  &= mat(1,-1,1;2,0,-1;1,1,1)
  mat(1/6,1/3,1/6;-3^n/2,0,3^n/2;4^n/3,-4^n/3,4^n/3) \
  &= mat(
    (3^(n+1) + 1 + 2^(2n+1))/6, (2(1- 4^n))/6, (1-3^(n+1) + 2^(2n+1))/6;
    (2(1 - 4^n))/6, (2(2+ 4^n))/6, ((1+4^n)2)/6;
    (1-3^(n+1)+2^(2n+1))/6, (2(1-4^n))/6, (1 + 3^(n+1) 2^(2n + 1))/6
  ) \
  &= #rect()[$ 1 / 6 mat(
    3^(n+1) + 1 + 2^(2n+1), 2(1- 4^n), 1-3^(n+1) + 2^(2n+1);
    2(1 - 4^n), 2(2+ 4^n), (1+4^n)2;
    1-3^(n+1)+2^(2n+1), 2(1-4^n), 1 + 3^(n+1) 2^(2n + 1)
  ) $] \
$

#pagebreak()

= Section 5.3

==== Complex Vector Spaces (9 Exercises)

#let u = math.bold("u")
#let v = math.bold("v")

== Exercise 5.3.1

Find $overline(#u), "Re"(#u), "Im"(#u)$, and $||#u||$.

$ #u = (2 - i, 4i, 1 + i) $

=== Answer

$
  overline(#u) = (2+i, -4i, 1 - i) \
  "Re"(#u) = (2, 0, 1) \
  "Im"(#u) = (-1, 4, 1)
$
$
  ||#u|| &= sqrt((2-i)(2+i) + (4i)(-4i) + (1+i)(1-i)) \
  &= sqrt((4 + 1) + 16 + (1 + 1)) \
  &= sqrt(23) \
$

#line()

== Exercise 5.3.5

Solve the quation $(1 + i)#x + 2#u = overline(#v)$ for $#x$, where $#u$ and
$#v$ are the vectors in _Exercise 3_.

$ #u = (3-4i, 2+i, - 6i), quad #v = (1+i, 2-i, 4) $

=== Answer

Note that $1/i = 1/sqrt(-1) = - sqrt(-1) = - i$.

$
  i #x - 3 #v &= overline(#u) \
  i #x &= overline(#u) + 3 #v  \
  &= mat(6+7i;8-4i;12+6i) \
  #x &= - i mat(6+7i;8-4i;12+6i) \
  &= #rect()[$ - i mat(7-6i; -4 - 8i; 6 - 12i) $]
$

#line()

== Exercise 5.3.7

Find $overline(A), "Re"(A), "Im"(A), det(A)$, and $tr(A)$.

$ A = mat(-5i, 4; 2-i, 1 + 5i) $

=== Answer

$
  overline(A) = mat(5i, 4; 2+i, 1 - 5i) \
  "Re"(A) = mat(0,4;2,1) \
  "Im"(A) = mat(-5,0;-1,5) \
$

$
  det(A) &= mat(delim: "|", -5i, 4; 2-i, 1 + 5i) \
  &= (-5i)(1+5i) - 4(2-i) \
  &= -5i+ 25 - 8+4i \
  &= #rect()[$ 17-i $]
$
$
  tr(A) &= -5i + 1 + 5i \
  &= #rect[$ 1 $] \
$

#line()

For _Exercises 15_ and _17_, find the eigenvalues and bases for the eigenspaces
of $A$.

== Exercise 5.3.15

$ A = mat(4, -5; 1, 0) $

=== Answer

Note that $tr(A) = 4$ and $det(A) = 5$

$
  0 &= lambda^2 - tr(A)lambda + det(A) \
  &= lambda^2 - 4 lambda + 5 \
  lambda &= -(-4)/2 plus.minus sqrt((-4)^2 - 4(5))/2 \
  lambda &= 2 plus.minus sqrt(16 - 20)/2 \
  lambda &= 2 plus.minus sqrt(-4)/2 \
  &= #rect()[$ 2 plus.minus i $]
$

For $lambda = 2 + i$:

$
  bold(0) &= mat(4 - 2 - i, -5; 1,0 - 2 - i) #x \
  &= mat(2 - i, -5; 1, -2-i) #x \
$

which is equivalent to the system:

$
  (2-i)x_1 - 5 x_2 = 0 \
  x_1 - (2+i) x_2 = 0 \
$

Where $x_2 = t, x_1 = (2 + i)t$. By Complex Conjugate Eigenvectors Theorem,
${mat(2+i;1)}$ and ${mat(2-i;1)}$ are the eigenbasis corresponding to the
eigenvalues $lambda = 2 plus.minus i$. $qed$

#line()

== Exercise 5.3.17

$ A = mat(5, -2; 1, 3) $

=== Answer

$
  lambda &=- tr(A) / 2 plus.minus sqrt(tr(A)^2 - 4det(A)) / 2 \
  &= -4 plus.minus sqrt(64 - 4(17)) / 2 \
  &= #rect()[$ -4 plus.minus i $]
$

Let $lambda = -4 + i$. Then

$
  A - lambda I &= mat(9 - i, -2; 1, 7 -i)
$

Since $y$ is a free variable,

$
  #x = mat( (9+i)/41; 1)
$

Therefore, by Complex Conjugate Eigenvectors Theorem, ${mat((9+i)/41;1)}$
and ${mat((9-i)/41;1)}$ are the eigenbasis corresponding to the
eigenvalues $lambda = -4 plus.minus i$. $qed$

#line()

For the _Exercises 19 and 21_, each matrix $C$ has form $mat(a, -b; b, a)$.
_Theorem 5.3.7_ implies that $C$ is the product of a scaling matrix with
factor $|lambda|$ and a rotation angle $phi$. Find $|lambda|$ and $phi$ for
which $- pi < phi <= pi$.

== Exercise 5.3.19

$ C = mat(1, -1;1,1) $

=== Answer

$
  lambda &= - tr(A)/2 plus.minus sqrt(tr(A)^2 - 4 det(A))/2 \
  &= -1 plus.minus sqrt(4 - 4(2)) / 2 \
  &= -1 plus.minus sqrt(4 - 8) / 2 \
  &= -1 plus.minus sqrt(-4) / 2 \
  &= -1 plus.minus i \
  |lambda| &= sqrt(1 + 1) \
  &= #rect()[$ sqrt(2) $]
$

Therefore:

$
  C &= mat(sqrt(2) , 0; 0, sqrt(2))
  mat(cos phi, - sin phi; sin phi, cos phi) \
  mat(sqrt(2)/2 , 0; 0, sqrt(2)/2) mat(1, -1;1,1)
  &= mat(cos phi, - sin phi; sin phi, cos phi) \
  mat(sqrt(2)/2, -sqrt(2)/2; sqrt(2)/2, sqrt(2)/2) &=
$

For which $phi = pi/4$ radians. $qed$

#line()

== Exercise 5.3.21

$ C = mat(1, sqrt(3);-sqrt(3),1) $

=== Answer

Note that $tr(A) = 2$ and $det(A) = 1 + 3 = 4$

$
  lambda &= - tr(A) / 2 plus.minus sqrt(tr(A)^2 - 4 det(A)) / 2 \
  &= - 2 / 2 plus.minus sqrt((2)^2 - 4 (4)) / 2 \
  &= - 1 plus.minus sqrt(4 - 16) / 2 \
  &= - 1 plus.minus sqrt(-12) / 2 \
  &= - 1 plus.minus sqrt((-1)(3)(4)) / 2 \
  &= - 1 plus.minus sqrt(3)i \
  |lambda| &= sqrt((-1)^2 + (sqrt(3))^2)\
  &= sqrt(1 + 3) \
  &=#rect()[$ 2 $]
$

Therefore:

$
  C &= mat(2, 0;0,2) mat(cos phi, - sin phi; sin phi, cos phi) \
  mat(2/4,0;0,1/2) mat(1, sqrt(3); -sqrt(3), 1)
  &= mat(cos phi, - sin phi; sin phi, cos phi) \
  mat(1/2, sqrt(3)/2; -sqrt(3)/2, 1/2) &= \
$

Therefore:

$ phi = cos^(-1)(1/2) = #rect()[$ pi/6 $] $
#align(right, $qed$)

#line()

For the _Exercises 23 and 25_, find an invertible matrix $P$ and a matrix $C$
of form _(15)_ such that A = $P C P^(-1)$.

== Exercise 5.3.23

$ A = mat(-1, -5; 4, 7) $

=== Answer

Note that $tr(A) = 6$ and $det(A) = -7 + 20 = 13$

$
  lambda &= tr(A)/2 plus.minus sqrt(tr(A)^2 - 4 det(A))/2 \
  &= 3 plus.minus sqrt(6^2 - 4(13)) / 2 \
  &= 3 plus.minus sqrt(36 - 52) / 2 \
  &= 3 plus.minus sqrt(-16) / 2 \
  &= #rect(stroke: blue)[$ 3 plus.minus 2i $] \
$

Let $lambda = 3 - 2i$. Then the corresponding eigenvector $#x$ can be found by
solving:

$
  mat(-1 - lambda, -5; 4, 7 - lambda) #x &= bold(0) \
  mat(-1 - 3 + 2i, -5; 4, 7 - 3 + 2i) #x &= \
  mat(-4 + 2i, -5; 4, 4 + 2i) #x &= \
  #x &= #rect(stroke: blue)[$ t mat(-1 - i/2; 1) $]
$

By _Theorem 5.3.8_, $A = P C P^(-1)$, where
$P = display(mat("Re"(#x), "Im"(#x)))$ and
$C = display(mat(|lambda|, 0; 0, |lambda|))
display(mat(cos phi, - sin phi; sin phi, cos phi))$ for some $phi in RR$.
Therefore

$
  P = #rect()[$ mat(-1, -1/2; 1, 0), $] quad P^(-1) = mat(0, 1; -2, -2)
$

Since $A = P C P^(-1) arrow.r.double.long P^(-1) A P = C$:

$
  A &= P C P^(-1) \
  P^(-1) A P &= C \
  mat(0,1;-2,-2) mat(-1, -5; 4, 7) mat(-1, -1/2;1,0) &= C \
  mat(0,1;-2,-2) mat(-4, 1/2; 3, -2) &= C \
  #rect()[$ mat(3, -2; 2, 3) $] &= C
$

#align(right, $qed$)

#line()

== Exercise 5.3.25

$ A = mat(8, 6; -3, 2) $

=== Answer

Note that $tr(A) = 10$ and $det(A) = 34$.

$
  lambda &= tr(A) / 2 plus.minus sqrt(tr(A)^2 - 4 det(A)) / 2 \
  &= 5 plus.minus sqrt(100 - 4(34)) / 2 \
  &= 5 plus.minus sqrt(100 - 136) / 2 \
  &= #rect(stroke: blue)[$ 5 plus.minus 3i $] \
$

Let $lambda = 5 + 3i$. Then the corresponding eigenvector $#x$ can be found by
solving:

$
  mat(8 - 5 - 3i, 6; -3, 2 - 5 - 3i) #x &= bold(0) \
  mat(-3 - 3i, 6; -3, -3 - 3i) #x &= \
  #x = t #rect(stroke: blue)[$ mat(-1+i;1) $]
$

Then

$ P = #rect()[$ mat(-1,1;1,0), $] quad mat(0,1;1,1) $

$
  C &= P^(-1) A P \
  &= mat(0,1;1,1) mat(8,6;-3,2) mat(-1, 1; 1, 0) \
  &= mat(0,1;-2,-2) mat(-2, 8; 5, -3) \
  &= #rect()[$ mat(5, -3; 3, 5) $]
$
#align(right, $qed$)
