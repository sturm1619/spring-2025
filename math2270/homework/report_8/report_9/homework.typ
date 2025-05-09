#let u = math.bold("u")
#let v = math.bold("v")
#let w = math.bold("w")
#set math.mat(delim: "[")
#show heading.where(level: 1): set text(size: 20pt)
#set enum(numbering: "(a)")
#set line(length: 100%)

= Section 4.6

==== Change of Basis (7 Exercises)

== Exercise 4.6.1

Consider the bases $B = {#u _1, #u _2}$ and $B' = {#u '_1, #u '_2}$ for $RR^2$, where

$
  #u _1 = mat(2;2), quad #u _2 = mat(4;-1),
  quad #u '_1 = mat(1;3), quad #u '_2 = mat(-1;-1)
$

+ Find the transition matrix from $B'$ to $B$.

+ Find the transition matrix from $B$ to $B'$.

+ Compute the coordinate vector $[#w]_B$, where

  $
    #w = mat(3;-5)
  $

  and use (12) to compute $[#w]_(B')$.

+ Check your work by computing $[#w]_(B')$ directly.

=== Answer

+ Finding the transition matrix $P_(B arrow.r B')$ from $B$ to $B'$ reduces to
  multiplying the inverse of the matrix whose column vectors are $B'$ with the
  matrix whose column vectors are $B$.

  $
    B^(-1) B' &= mat(1,-1;3,-1)^(-1) mat(2, 4;2,-1) \
    &= mat(1/10, 2/5; 1/5, -1/5) mat(2,4;2,-1) \
    &= mat(13/10, -1/2; -2/5, 0)
  $

+ For $P_(B' arrow.r B)$, similar to (a), but multiplying $B^(-1)$ with $B'$.

  $
    B'^(-1) B &= mat(2, 4;2,-1)^(-1) mat(1,-1;3,-1) \
    &= mat(-1/2, 1/2;-3/2,1/2)^(-1) mat(1,-1;3,-1) \
    &= mat(0, -5/2; -2, -13/2)
  $

+ Computing $[#w]_B$ reduces to multiplying $B^(-1)$ and $#w$

  $
    [#w]_B &= B^(-1) #w \
    &= mat(1/10, 2/5; 1/5, -1/5) mat(3;-5) \
    &= mat(-17/10; 8/5) \
  $

  Then, computing $[#w]_(B')$ from $#w _B$ reduces to multiplying
  $P_(B arrow.r B')$ with $[#w] _B$.

  $
    [#w]_(B') &= P_(B arrow.r B') [#w]_B \
    &= mat(-1/2, 1/2;-3/2,1/2) mat(-17/10; 8/5) \
    &= mat(-4; 7) \
  $

+ Computing $#w _(B')$ reduces to multiplying $B'^(-1) #w$. Now, note that
  $P_(B arrow.r B') = B^(-1) B'$. Therefore,

  $
    P_(B arrow.r B') [#w]_B &= B^(-1) B' B #w \
    &= B' #w \
  $

#line()

== Exercise 4.6.3

Consider the bases $B = {#u _1, #u _2, #u _3}$ and $B' = {#u '_1, #u '_2,
#u '_3}$ for $RR^3$, where

$
  #u _1 = mat(2;1;1), quad #u _2 = mat(2;-1;1), quad #u _3 = mat(1;2;1) \
  #u '_1 = mat(3;1;-5), quad #u '_2 = mat(1;1;-3), quad #u '_3 = mat(-1;0;2) \
$

+ Find the transition matrix from $B$ to $B'$.

+ Compute the coordinate vector $[#w]$, where
  $
    #w = mat(-5;8;-5)
  $
  and use (12) to compute $[#w]_(B')$.

+ Check your work by computing $[#w]_(B')$ directly.

=== Answer

+
$
  P_(B arrow.r B') &= B^(-1)B' \
  &= mat(2,2,1;1,-1,2;1,1,1)^(-1) mat(3,1,-1;1,1,0;-5,-3,2) \
  &= mat(3/2,1/2,-5/2;-1/2,-1/2,3/2;-1,0,2) mat(3,1,-1;1,1,0;-5,-3,2) \
  &= mat(3,2,5/2;-2,-3,-1/2;5,1,6)
$

(b)
$
  [#w]_B &= B^(-1) #w \
  &= mat(3/2,1/2,-5/2;-1/2,-1/2,3/2;-1,0,2) mat(-5;8;-5) \
  &= mat(9;-5;-5)
$

$
  [#w]_(B') &= P_(B arrow.r B') [#w]_B \
  &= mat(3/2,1/2,-5/2;-1/2,-1/2,3/2;-1,0,2) mat(-5;8;-5) \
  &= mat(-7/2;23/2;6)
$

(c)
$
  [#w]_(B') &= B'^(-1) #w \
  &= mat(1,1/2,1/2;-1,1/2,-1/2;1,2,1) mat(-5;8;-5) \
  &= mat(-7/2;23/2;6)
$

#line()

== Exercise 4.6.5

#let f = math.bold("f")
#let g = math.bold("g")
#let h = math.bold("h")

Let $V$ be the space spanned by $#f _1 = sin x$ and $#f _2 = cos x$.

+ Show that $#g _1 = 2 sin x + cos x$ and $#g _2 = 3 cos x$ form a basis
  for $V$.

+ Find the transition matrix from $B' = {#g _1, #g _2}$ to $B = {#f _1,
  #f _2}$

+ Find the transition matrix from $B$ to $B'$.

+ Compute the coordinate vector $[#h]_B$, where $#h = 2 sin x - 5 cos x$, and
  use (12) to obtain $[#h]_(B')$.

+ Check your work by computing $[#h]_(B')$ directly.

=== Answer

+ #text(weight: "regular")[Let $a_1 #f _1 + a_2 #f _2$ be a vector in $V$. If
    ${#g _1, #g _2}$ is a basis for $V$, then $b_1 #g _1 + b_2 #g _2 = a_1 #f _1
  + a_2 #f _2$. Note that $a_1 #f _1 + a_2 #f _2 = mat(#f _1, #f _2) mat(a_1;
    a_2)$, and $b_1 #g _1 + b_2 #g _2 = mat(#g _1, #g _2) mat(b_1; b_2)$]

$
  a_1 sin x + a_2 cos x &= b_1 (2 sin x + cos x) + 3 b_2 cos x \
  a_1 sin x + a_2 cos x &= 2 b_1 sin x + b_1 cos x + 3 b_2 cos x \
  a_1 sin x + a_2 cos x &= 2 b_1 sin x + (b_1 + 3 b_2) cos x \
  mat(sin x, cos x)mat(a_1; a_2) &= mat(sin x, cos x) mat(2b_1;b_1 + 3b_2) \
  mat(a_1; a_2) &= mat(2b_1; b_1 + 3b_2) \
  &= mat(2, 1; 0, 3) mat(b_1; b_2)
$

#set enum(start: 2)

+ #text(
    weight: "regular",
  )[The equality $mat(a_1; a_2) = mat(2, 1; 0, 3)
  mat(b_1; b_2)$ in *(a)* implies $P_(B' arrow.r B) = mat(2, 1; 0, 3)$.]

+ #text(
    weight: "regular",
  )[$P_(B' arrow.r B) = mat(2, 0; 1, 3)
  arrow.r.l.long.double P_(B arrow.r B') = (P_(B arrow.r B'))^(-1) =
  mat(1/2,0;-1/6,1/3)$.]


+ #text(weight: "regular")[The usual way to compute $[#h]_B$ involves using the
    inverse of the matrix with column vectors $B$. Since $B$ is a singular matrix,
    we must use algebraic methods. Note that $#h = 2 #f _1 - 5 #f _2 = mat(#f _1,
    #f _2) mat(2; -5)$. Since $B = mat(#f _1, #f _2)$, $[#h]_B = mat(2;-5)$. We
    can now plug this vector as a parameter of $T_(P_(B arrow.r B'))$:]

$
  T_(P_(B arrow.r B'))(mat(2;-5)) = mat(1/2,0;-1/6,1/3) mat(2;-5) = mat(1;-2)
$

Therefore, $[#h]_B = (2,-5)$ and $[#h]_(B') = (1,-2)$.

#set enum(start: 5)
+ #text(weight: "regular")[]
$
  #h &= a_1 #g _1 + a_2 #g _2 \
  2 sin x - 5 cos x &= a_1 (2 sin x + cos x) + a_2 (3 cos x) \
  2 sin x - 5 cos x &=  2 a_1 sin x + a_1 cos x + 3 a_2 cos x \
  2 sin x - 5 cos x &=  2 a_1 sin x + (a_1 + 3a_2 ) cos x \
  mat(2;-5) &= mat(2, 0; 1, 3)mat(a_1;a_2)  \
  mat(1/2,0;-1/6,1/3) mat(2;-5) &= mat(a_1;a_2)  \
$
Note that solving this system is exactly the same as applying
$T_(P_(B arrow.r B'))$ to $#h$.

#line()
#pagebreak()

== Exercise 4.6.7

Let $B_1 = {#u _1, #u _2}$ and $B_2 = {#v _1, #v _2}$ be the bases for $RR^2$
in which $#u _1 = (1,2), #u _2 = (2,3), #v _1 = (1,3), #v _2 = (1,4)$.

#set enum(start: 1)

+ Use Formula (14) to find the transition matrix $P_(B_2 arrow.r B_1)$.

+ Use Formula (14) to find the transition matrix $P_(B_1 arrow.r B_2)$.

+ Confirm that $P_(B_2 arrow.r B_1)$ and $P_(B_1 arrow.r B_2)$ are inverses of
  one another.

+ Let $#w = (0,1)$. Find $[#w]_(B_1)$ and use the matrix $P_(B_1 arrow.r B_2)$
  to compute $[#w]_(B_2)$ from $[#w]_(B_1)$.

+ Let $#w = (2,5)$. Find $[#w]_(B_2)$ and use the matrix $P_(B_2 arrow.r B_1)$
  to compute $[#w]_(B_1)$ from $[#w]_(B_2)$.

=== Answer

+ Let $Q$ be the matrix whose column vectors are $#u _1, #u _2$, and let $R$ be
  the matrix with column vectors $#v _1, #v _2$. Note that $"span"(B_1) =
  "col"(Q)$, and $"span"(B_2) = "col"(R)$. Applying _Formula 14_ implies
  $P_(B_2 arrow B_1) = Q^(-1)R$.

  $
    mat(1,2;2,3)^(-1) mat(3,5;-1,-2) = mat(-3,2;2,1) mat(3,5;-1,-2) =
    mat(3,5;-1,-2)
  $
  #line(stroke: .5pt)

+ Similar as the last part: $P_(B_1 arrow B_2) = R^(-1)Q$.
  $
    mat(3,5;-1,-2)^(-1) mat(1,2;2,3) = mat(4,-1;-3,1) mat(1,2;2,3) =
    mat(2,5;-1,-3)
  $
  #line(stroke: .5pt)

+ Note that $P_(B_1 arrow B_2) P_(B_2 arrow B_1) = Q^(-1)R R^(-1)Q = I$.

  $
    mat(3,5;-1,-2) mat(2,5;-1,-3) = I
  $
  #line(stroke: .5pt)

+ Note that $[#w]_(B_1) = Q^(-1) #w = mat(2;-1)$. Then
  $
    P_(B_1 arrow B_2) [#w]_(B_1) = R^(-1)Q Q^(-1) #w \
    mat(3,5;-1,-2) mat(2;-1) = mat(-1;1)
  $
  #line(stroke: .5pt)

+ Note that $[#w]_(B_2) = R^(-1) #w = mat(3;-1)$. Then
  $
    P_(B_2 arrow B_1) [#w]_(B_1) = Q^(-1)R R^(-1) #w \
    mat(-3,2;2,1) mat(3;-1) = mat(4;-1)
  $

#line()

== Exercise 4.6.13

If $P$ is the transition matrix from a basis $B'$ to a basis $B$, and $Q$ is
the transition from $B$ to a basis $C$, what is the transition matrix $B'$
to $C$? What is the transition matrix from $C$ to $B'$?

=== Answer

The transition matrix can be found by multiplying the second transition to the
first transition matrix (multiplying the matrices in reverse order). To find
the inverse transition, multiply the inverse of the matrices.

$
  Q P: "The transition matrix from" B' "to" C \
  P^(-1) Q^(-1) : "The transition matrix from" C "to" B'
$

#line()

== Exercise 4.6.15

#let e = math.bold("e")

Consider the matrix

$ P = mat(1,1,0;1,0,2;0,2,1) $

+ $P$ is the transition matrix from what basis $B$ to the standard basis $S =
  {#e _1, #e _2, #e _3}$ for $RR^3$?

+ $P$ is the transition matrix from the standard basis $S = {#e _1, #e _2,
  #e _3}$ to what basis $B$ for $RR^3$?

=== Answer

+ $P$ is the transition matrix from $B = {(1,1,0), (1,0,2), (0,2,1)}$ to $S$.

+ $P$ is the transition matrix from $S$ to $B = {(4/5,1/5,-2/5),
  (1/5, -1/5, 2/5), (-2/5,2/5,1/5)}$.

#line()

== Exercise 4.6.17

Let $S = {#e _1, #e _1}$ be the standard basis for $RR^2$, and let $B = {#v _1,
#v _2}$ be the basis that results when the linear transformation defined by

$ T(x_1, x_2) = (2x_1 + 3x_2, 5x_1 - x_2) $

is applied to each vector in $S$. Find the transition matrix $P_(B arrow.r S)$.

=== Answer

The linear tranformation $T$ corresponds to the transition matrix $P_(B arrow.r
s)$. We can express this transformation as

$ T(mat(x_1;x_2)) = mat(2x_1 + 3x_2; 5x_1 - x_2) $

If we decompose this matrix:

$
  mat(2x_1 + 3x_2; 5x_1 - x_2) &= mat(2,3;5,-1) mat(x_1;x_2) \
$

where $mat(x_1, x_2)$ was the input to $T$. Therefore, $P_(B arrow.r S) = mat(2,3;5,-1)$
is the corresponding transition matrix.

#pagebreak()

= Section 4.7

==== _Row space, Column Space and Null Space (8 Exercises)_

== Exercise 4.7.3

#let b = math.bold("b")

Determine whether $#b$ is in the column space of $A$, and if so, express $#b$ as a
linear combination of the column vectors of $A$

+ $ A = mat(1,1,2;1,0,1;2,1,3); quad #b = mat(-1;0;2) $

+ $ A = mat(1,-1,1;9,3,1;1,1,1); quad #b = mat(5;1;-1) $

=== Answer

+ Note that $det(A) = 0$. By row-reducing $A$ we get the matrix
$
  mat(1,0,1;0,1,1;0,0,0)
$
whose column space is $"span"({(1,0,0), (0,1,0)})$ which does not
include $#b$.

#set enum(start: 2)
+ Note that $det(A) != 0$, $"rank"(A) = 3$ and $#b in RR^3$. Given that
  $"col"(A) = {(1,9,1), (-1,3,1), (1,1,1)}$. Therefore

$ #b = (1,9,1) - 3(-1,3,1) + (1,1,1) $

#line()

== Exercise 4.7.5

#let x = math.bold("x")

Suppose that $x_1 = 3$, $x_2 = 0$, $x_3 = -1$, $x_4=5$ is a solution of a
nonhomogeous linear system $A #x = #b$ and that the solution set of the
homogenous system $A #x = bold(0)$ is given by the formulas

$ x_1 = 5r - 2s, quad x_2 = s, quad x_3 = s + t, quad x_4 = t $

#set enum(start: 1)

+ Find a vector form of the general solution of $A#x = bold(0)$.

+ Find a vector form of the general solution of $A#x = #b$.

=== Answer

+ $
    #x = mat(5r-2s;s;s+t;t) = r mat(5;0;0;0) + s mat(-2;1;1;0) + t mat(0;0;1;1)
  $

+ $
    #x = mat(3+5r-2s;s;s+t-1;5+t)
    = mat(3;0;-1;5) + mat(5r-2s;s;s+t;t)
    = mat(3;0;-1;5) + r mat(5;0;0;0) + s mat(-2;1;1;0) + t mat(0;0;1;1)
  $

#line()
#pagebreak()

== Exercise 4.7.7

Find the vector form of the general solution of the linear system $A#x = #b$,
and then use that result to find the vector of the general solution of $A#x =
bold(0)$.

+ $
    x_1 - 3x_2 &= 1 \
    2x_1 - 6x_2 &= 2
  $

+ $
    x_1 + x_2 + 2x_3 &= 5 \
    x_1 + 6x_2 &= -2 \
    2x_1 + x_2 + 3x_1 &= 3
  $

=== Answer

+ $ #b = mat(1;0) + t mat(3;1), quad bold(0) = t mat(3;1) $

+ $ #b = mat(-2;7;0) + t mat(-1;-1;1), quad bold(0) = t mat(-1;-1;1) $

#line()

== Exercise 4.7.9

Find bases for the null space and row space of $A$.

+ $ A = mat(1,-1,3;5,-4,-4;7,-6,2) $

+ $ A = mat(2,0,-1;4,0,-2;0,0,0) $

=== Answer

+ Since $det(A) != 0 arrow.r.l.double.long A$ is full rank, the row space of $A$
  is the span of the rows of the matrix: $ "row"(A) = "span"({(1,-1,3),
  (5,-4, -4), (7,-6,2)}), quad "null"(A) = {bold(0)} $

+ From Gaussian elimination we get $ "row"(A) = "span"({(2,0,-1)}),
  quad "null"(A) = {(0,1,0), (1 / 2,0,1)} $

#line()
#pagebreak()

== Exercise 4.7.11

For each part, a matrix in row echelon form is given. By inspection, find a
basis for the row space and for the column space of that matrix.

+ $ mat(1,0,2;0,0,1;0,0,0) $

+ $ mat(1,-3,0,0;0,1,0,0;0,0,0,0;0,0,0,0) $

=== Answer

+ Basis for the row space: ${(1,0,2), (0,0,1)}$. Basis for the column space: ${
  (1,0,0), (2,1,0)}$.

+ Basis for the row space: ${(1,-3,0,0), (0,1,0,0)}$. Basis for the column space:
  ${(1,0,0,0), (-3,1,0,0)}$.

#line()

== Exercise 4.7.13

+ Use methods of Examples 6 and 7 to find bases for the row space and column
  space of the matrix

$ A = mat(1,-2,5,0,3;-2,5,-7,0,-6; -1,3,-2,1,-3;-3,8,-9,1,-9) $

+ Use the method of example 9 to find a basis for the row space of $A$ that
  consists entirely of row vectors of $A$.

=== Answer

+ Recall that the method in _Example 6_ consists finding the row echelon form
  of $A$, then choosing those row vectors with leading ones. Similarly, the method
  in _Example 7_ consists in row reducing, then choosing the column vectors of the
  original matrix that correspond to the column vectors of the row echelon form
  that contain the leading one of a row.

  Through gaussian elimination, we get that $ "ref"(A) =
  mat(1,0,11,0,3;0,1,3,0,0;0,0,0,1,0;0,0,0,0,0) $ Therefore, a basis for the row
  space of $A$ is ${(1,0,11,0,3), (0,1,3,0,0), (0,0,0,1,0)}$, and a basis for
  the column space is ${(1,-2,-1,-3),(-2,5,3,8), (0,0,1,1)}$.

+ Recall that the method in _Example 9_ in applying the method of _Example 7_ to
  the $A^T$, then transposing back the vectors into row vectors.
  $ (A^T) = mat(1,-2,-1,-3;-2,5,3,8;5,-7,-2,-9;0,0,1,1;3,-6,-3,-9) $
  $ "ref"(A^T) = mat(1,0,0,0;0,1,0,1;0,0,1,1;0,0,0,0;0,0,0,0) $
  Therefore, a basis for the row space of $A$ is ${(1,-2,5,0,3),(-2,5,-7,0,-6),
  (-1,3,-2,1,-3)}$.

#line()
== Exercise 4.7.15

Find a basis for the subspace of $RR^4$ that is spanned by the given vectors.

$ (1,1,0,0), quad (0,0,1,1), quad (-2,0,2,2), quad (0,-3,0,3) $

=== Answer

Let $A$ be the the matrix whose columns are the given vectors. Since $A$ is a
$4 times 4$ matrix, if $det(A) != 0$, the vectors form basis for $RR^4$.

$
  det(A) &= mat(delim: "|", 1,0,-2,0;1,0,0,-3;0,1,2,0;0,1,2,3)
  = mat(delim: "|", 1,0,-2,0;1,0,0,-3;0,1,2,0;0,0,0,3) \
  &= mat(delim: "|", 1,0,-2,0;1,0,0,0;0,1,2,0;0,0,0,3)
  = mat(delim: "|", 0,0,-2,0;1,0,0,0;0,1,2,0;0,0,0,3) \
  &= mat(delim: "|", 0,0,-2,0;1,0,0,0;0,1,0,0;0,0,0,3)
  = -2(3) = -6
$

Therefore, the given vectors form a basis for $RR^4$. Other candidate basis
are ${(-2,0,0,0), (0,1,0,0), (0,0,1,0), (0,0,0,3)}$, and the standard basis of
$RR^4$.

#line()
#pagebreak()

== Exercise 4.7.17

Find a subset of the given vectors that forms a basis for the space spanned by
those vectors, and then express each vector that is not in the basis as a linear
combination of the basis vectors.

$
  #v _1 = (1,-1,5,2), quad #v _2 = (-2,3,1,0), quad #v _3 = (4, -5,9, 4) \
  #v _4 = (0,4,2,-3), quad #v _5 = (-7,18,2, -18)
$

== Answer

Let $A$ be the $4 times 5$ matrix formed by the transpose of the given vectors.
Let $"ref"(A)$ be the row echelon form of $A$. Note that $"col"(A)$ is the space
whose basis we want to find. Since row operations do not change the dependency
relationship between the vectors, matrix, the column vectors corresponding to the
leading ones of $"ref"(A)$ form a basis for $"col"(A)$.

$
  A = mat(1,-2,4,0,-7;-1,3,-5,4,18;5,1,9,2,2;2,0,4,-3,-18) \
  // = mat(1,-2,4,0,-7;0,1,1,4,11;0,-9) \
  // &= ...
  "ref"(A) = mat(1,0,2,0,0;0,1,-1,0,0;0,0,0,1,0;0,0,0,0,1)
$

Therefore, ${(1,-1,5,2), (-2,3,1,0), (0,4,2,-3), (-7,18,2,-18)}$ is a basis
for the given space. Let $B$ be the matrix formed by the transponse of this
vectors. Note that, since this basis spans $"col"(A)$ as well as $"col"(B)$,
$"col"(A) = "col"(B)$. Since $#v _3$ is not necessary to span , it must be a
linear combination of the former: therefore, $exists #x in "col" | B #x =
#v _3$, and since $B$ is an invertible matrix, $#x = B^(-1) #v$.

$
  B = mat(1,-2,0,-7;-1,3,4,18;5,1,2,2;2,0,-3,-18) \
  #x = mat(2;-1;0;0) arrow.r.l.double.long #v _3 = 2#v _1 - #v _2
$


#pagebreak()

= Section 4.8

=== _Rank, Nullity, and the Fundamental Matrix Subspaces - (7 Exercises)_

== Exercise 4.8.1

Find the rank and nullity of the matrix $A$ by reducing it to row echelon form.

+ $ A = mat(1,2,-1,1;2,4,-2,2;3,6,-3,3;4,8,-4,4) $

+ $ A = mat(1,-2,2,3,-1;-3,6,-1,1,7;2,-4,5,8,-4) $

=== Answer

+ Let $#u$ be the vector corresponding to the first row of $A$. Note that
  $2 #u$, $3 #u$ and $4 #u$ correspond to the second, third and fourth column,
  respectively; meaning ${#u}$ is a basis for the row space of $A$. Therefore,
  $"rank"(A) = 1$.

+ Let $#u$ and $#v$ be the first and second row vectors of $A$. Note that the
  third row vector can be expressed as $-(#u + #v)$, meaning ${#u, #v}$ is a
  basis for the row space of $A$. Therefore, $"rank"(A) = 2$.

#line()
== Exercise 4.8.5

Note that $R$ is the reduced row echelon form of the matrix $A$.

+ By inspection of the matrix $R$, find the rank and nullity of $A$.

+ Confirm that the rank and nullity satisfy Formula (4).

+ Find the number of leading variables and the number of parameters in the
  general solution of $A #x = bold(0)$ without solving the system.

$
  A = mat(2,-1,-3;-2,1,3;-4,2,6);
  quad R = mat(1, - 1/2, - 3/2; 0, 0, 0; 0,0,0)
$

=== Answer

+ Since $R$ only has one non-zero row and two zero rows, $"rank"(A) = 1,
  "nullity"(A) = 2$.

+ $A$ is a $3 times 3$ matrix. Therefore, $n=3$. $"rank"(A) + "nullity"(A) =
  1 + 2 = 3 = n$.

+ Since $"rank"(A) = 1$, $A #x = bold(0)$ has leading variable. Since
  $"nullity"(A) = 2$, the system has two parameters or free variables.

#line()

== Exercise 4.8.7

In each part, find the largest possible value for the rank of $A$ and the
smallest possible value for the nullity of $A$.

+ $A$ is $4 times 4$

+ $A$ is $3 times 5$

+ $A$ is $5 times 3$

=== Answer

The largest possible value of the rank of a $m times n$ matrix is the minimum of
${m,n}$. The smallest possible value for the nullity of such matrix is $n -
"rank"(A)$.

+ Since $m = n = 4, "rank"(A) = 4, "nullity"(A) = 0$.

+ Since $(m = 3) < (n = 5), "rank"(A) = 3, "nullity"(A) = 2$.

+ Idem to (b): $(m = 5) > (n = 3), "rank"(A) = 3, "nullity"(A) = 1$.

#line()

== Exercise 4.8.11

+ Find an equation relating $"nullity"(A)$ and $"nullity"(A^T)$ for the matrix
  $ A = mat(1,2,4,0;-3,1,5,2;-2,3,9,2) $

+ Find an equation relating $"nullity"(A)$ and $"nullity"(A^T)$ for a general
  $m times n$ matrix.

=== Answer

+ Let $r = "rank"(A) = "rank"(A^T) = min({m, n})$, where $m$ is the number of
  rows of $A$, and $n$ is the number of columns of $A$.

  Since $A$ has $m = 3$ rows, $n = 4$ columns, and $"nullity"(A) = n - r
  = 4-3 = 1$. Similarly, $A^T$ has $n$ rows, $m$ columns, therefore
  $"nullity"(A^T) = m - r = 3-3 = 0$.

  As proven in the next part, $"nullity"(A) - "nullity"(A^T) = n - m$.
  Therefore, $"nullity"(A) - "nullity"(A^T) = 1$.

+ In general, for a $m times n$ matrix $A$, $"rank"(A) = n - "nullity"(A) = m -
  "nullity"(A^T)$. Therefore, $n - m = "nullity"(A) - "nullity"(A^T)$.

#line()

== Exercise 4.8.13

Let $T: RR^5 arrow.r.long RR^3$ be a linear transformation defined by the
formula

$ T(x_1, x_2, x_3, x_4, x_5) = (x_1 + x_2, x_2 + x_3 + x_4, x_4 + x_5) $

+ Find the rank of the standard matrix for $T$.

+ Find the nullity of the standard matrix for $T$.

=== Answer

+ Note that, since $T: RR^5 arrow.r.long RR^3$, then the standard matrix for $T$
  must be a $3 times 5$ matrix. Therefore, the rank is $3$.

+ Given that the standard matrix for $T$ has $n=5$ columns, $"nullity"(A) =
  n - "rank"(A) = 5 - 3 = 2$.

#line()
#pagebreak()

== Exercise 4.8.15

Are there values of $r$ and $s$ for which

$ mat(1, 0, 0;0,r-2,2;0,s-1,r+2;0,0,3) $

has rank 1? Has rank 2? If so, find those values.

=== Answer

Tested by guessing. Note that $r=2, s=1$ implies that the given matrix is equal
to

$ mat(1,0,0;0,0,2;0,0,4;0,0,3) $

which reduces to $mat(1,0,0;0,0,2;0,0,0;0,0,0)$; and is rank $2$.

We can prove that there are no values for $r, s$ such that the rank of the
matrix is $1$ by contradiction:

Suppose that there are values $r,s$ such that the given matrix has rank $1$.
Therefore, there must exists values $(k_1, k_2, k_3, k_4) in RR^4$ and a (row)
vector $#u = (u_1,u_2,u_3)$ in $RR^3$ such that, $forall i <= m, k_i #u$ is the
$i$th row vector of the matrix. This means that

$
  k_1 #u &= (1, 0, 0) \
  k_2 #u &= (0, r-2, 2) \
  k_3 #u &= (0, s-1, r+2) \
  k_4 #u &= (0, 0, 3) \
$

Note that, from the first equation, $#u = 1/k_1 (1, 0, 0)$, and from the third
equation $#u = 1/k_4 (0,0,3)$. Meaning that $k_3/k_1 (1,0,0) = (0,0,3)$, which
contradicts scalar multiplication in Euclidian spaces. $qed$

#line()

== Exercise 4.8.21

Let $A$ be a $5 times 7$ matrix with rank $4$.

+ What is the dimension of the solution space of $A #x = bold(0)$?

+ Is $A #x = bold(b)$ consistent for all vectors $bold(b)$ in $RR^5$? Explain.

=== Answer

+ The dimension of the solution space is $"nullity"(A) = n - "rank"(A) =
  7 - 4 = 3$.

+ No. An "advanced" proof would state that $"null"(A^T)$ corresponds to all the
  vectors in $RR^5$ that are not in by $"col"(A)$ and therefore cannot be
  expressed as a product of $A #x$. Since, $"nullity"(A^T) = 1$ and $"null"(A)
  subset.eq RR^5$, $exists bold(b) in RR^5, exists.not #x in RR^7$ such that $A
  #x != bold(b)$.

  A "simpler" proof starts the explanation from the rank: Let $A$ be a $5 times
  7$ matrix with rank $4$, $bold(b) in RR^5$ and $#x in RR^7$. $A #x = bold(b)$
  is consistent if and only if $bold(b) in "coll"(A)$. Note that $"col"(A)
  subset.eq RR^5$, $"dim"("col"(A)) = "rank"(A) = 4$.

  Let $S$ be a basis for $"col"(A)$. Therefore, $|S| = 4$, and $forall #u in S,
  #u in RR^5$. Also, let $B = RR^5 - "col"(A)$. Remember that, for a set of
  vectors $V$ to be a basis in $RR^5$, $|V| = "dim"(RR^5)$ and $forall #v in V,
  #v in RR^5$. Now, $|S| = 4 != "dim"(RR^5) arrow.r.l.long.double "span"(S) =
  "col"(A) != RR^5 arrow.r.l.long.double B != {0}$. Therefore, $forall bold(b)
  in B, bold(b)$ is not a solution for the system $A #x = bold(b)$. $qed$

#pagebreak()

= Section 4.9

==== _Basic Matrix Transformations (8 exercises)_

== Exercise 4.9.3

Use matrix multiplication to find the reflection of $(2,-5,3)$ about the

+ $x y$-plane.

+ $x z$-plane.

+ $y z$-plane.

=== Answer

Let $#u = (2,-5, 3)$.

+ The standard matrix corresponding to a reflection over the $x y$-plane is

  $ A = mat(1,0,0;0,1,0;0,0,-1) $

  Therefore, the reflection of the #u over the $x y$-plane is given by

  $ (A #u^T)^T = (mat(1,0,0;0,1,0;0,0,-1) mat(2;-5;3))^T = #rect($(2;-5;-3)$) $

  #line(stroke: 0.5pt)

+ The standard matrix corresponding to a reflectin over the $x z$-plane is

  $ A = mat(1,0,0;0,-1,0;0,0,1) $

  Therefore, the reflection of the #u over the $x y$-plane is given by

  $ (A #u^T)^T = (mat(1,0,0;0,-1,0;0,0,1) mat(2;-5;3))^T = #rect($(2;5;3)$) $

  #line(stroke: 0.5pt)

+ The standard matrix corresponding to a reflectin over the $x z$-plane is

  $ A = mat(-1,0,0;0,1,0;0,0,1) $

  Therefore, the reflection of the #u over the $x y$-plane is given by

  $ (A #u^T)^T = (mat(-1,0,0;0,1,0;0,0,1) mat(2;-5;3))^T = #rect($(-2;5;3)$) $

#line()

== Exercise 4.9.7

Use matrix multiplication to find the image of the vector $(3,-4)$ when it is
rotated about the origin through an angle of

+ $theta = 30 degree$.
+ $theta = -60 degree$.
+ $theta = 45 degree$.
+ $theta = 90 degree$.

=== Answer

In general, the standard matrix representing a rotation about the origin by
$theta$ is given by the matrix

$ A_theta = mat(cos theta, - sin theta; sin theta, cos theta) $

Let $#u = (3,-4)$. The image of $#u$ after a rotation by $theta$ is given by
$(A_theta #u^T)^T$

#line(stroke: 0.5pt)

+ Note that $sin(30 degree) = 1/2, cos(30 degree) = sqrt(3)/2$. Therefore,

  $
    (A_(30 degree) #u^T)^T
    &= (mat(sqrt(3)/2, - 1/2; 1/2, sqrt(3)/2) mat(3;-4))^T \
    &= mat((3 sqrt(3))/2 + 2; 3 / 2 - 2 sqrt(3))^T
    = #rect($((3 sqrt(3)) / 2 + 2; 3 / 2 - 2 sqrt(3))$, inset: 10pt)
  $

  #line(stroke: 0.5pt)

+ Note that $sin(-60 degree) = -sqrt(3)/2, cos(-60 degree) = 1/2$.
  Therefore,

  $
    (A_(-60 degree) #u^T)^T
    &= (mat(1/2, sqrt(3)/2; -sqrt(3)/2, 1/2) mat(3;-4))^T \
    &= mat(3/2 - 2 sqrt(3); - 3sqrt(3)/2 - 2)^T
    = #rect($(3/2 - 2 sqrt(3); - (3sqrt(3))/2 - 2)$, inset: 10pt)
  $

  #line(stroke: 0.5pt)

+ Note that $sin(45 degree) = cos(45 degree) = sqrt(2)/2$. Therefore,

  $
    (A_(45 degree) #u^T)^T
    &= (mat(sqrt(2)/2, sqrt(2)/2; -sqrt(2)/2, sqrt(2)/2) mat(3;-4))^T \
    &= mat(- sqrt(2)/2; - (7 sqrt(2))/2)^T
    = #rect($(- sqrt(2)/2; - (7 sqrt(2))/2)$, inset: 10pt)
  $

  #line(stroke: 0.5pt)

+ Note that $sin(90 degree) = 1, cos(90 degree) = 0$. Therefore,

  $
    (A_(90 degree) #u^T)^T
    &= (mat(0, -1; 1, 0) mat(3;-4))^T \
    &= mat(4,3)^T
    = #rect($(4,3)$, inset: 10pt)
  $

#line()

== Exercise 4.9.11

Use matrix multiplication to find the image of the vector $(2, -1, 2)$, if it
is rotated

+ $30 degree$ clockwise about the positive $x$-axis.
+ $30 degree$ counterclockwise about the positive $y$-axis.
+ $45 degree$ clockwise about the positive $y$-axis.
+ $90 degree$ counterclockwise about the positive $z$-axis.

=== Answer

Let $#u = (2, -1, 2)$.

+ Note that a clockwise rotation by $30 degree$ corresponds to a rotation of
  $theta = -30 degree$. Also note that $sin(-30 degree) = -1/2, cos(-30 degree)
  = sqrt(3)/2$. The image of #u under a rotation about the $x$-axis by $-30
  degree$ is given by

  $
    (A_(-30 degree) #u^T)^T
    &= (mat(
        1,0,0;
        0, cos(-30 degree), - sin(-30 degree);
        0, sin(-30 degree), cos(30 degree)) mat(2;-1;2))^T \
    &= (mat(
        1,0,0; 0, sqrt(3)/2, 1/2; 0, -1/2, sqrt(3)/2
      ) mat(2;-1;2))^T \
    &= #rect($(2, -sqrt(3)/2 + 1, 1/2 + sqrt(3))$, inset: 7.5pt)
  $

  #line(stroke: .5pt)

+ Note that a counterclockwise rotation by $30 degree$ corresponds to a rotation
  of $theta = 30 degree$. Also note that $sin(30 degree) = 1/2, cos(30 degree)
  = sqrt(3)/2$. The image of #u under a rotation about the $y$-axis by $30
  degree$ is given by

  $
    (A_(30 degree) #u^T)^T
    &= (mat(
        cos(30 degree), 0, - sin(30 degree);
        0,1,0;
        sin(30 degree), 0, cos(30 degree)) mat(2;-1;2))^T \
    &= (mat(
        sqrt(3)/2, 0, - 1/2,;0, 1, 0; 1/2, 0, sqrt(3)/2
        )
        mat(2;-1;2))^T \
    &= #rect($(sqrt(3) -1, -1, 1 + sqrt(3))$, inset: 7.5pt)
  $


  #line(stroke: .5pt)

+ Note that a clockwise rotation by $45 degree$ corresponds to a rotation
  of $theta = -45 degree$. Also note that $sin(-45 degree) = -sqrt(2)/2,
  cos(-45 degree) = sqrt(2)/2$. The image of #u under a rotation about the
  $y$-axis by $-45 degree$ is given by

  $
    (A_(-45 degree) #u^T)^T
    &= (mat(
        cos(-45 degree), 0, - sin(-45 degree);
        0,1,0;
        sin(-45 degree), 0, cos(-45 degree)) mat(2;-1;2))^T \
    &= (mat(
        sqrt(2)/2, 0, sqrt(2)/2;0, 1, 0; -sqrt(2)/2, 0, sqrt(2)/2
        )
        mat(2;-1;2))^T \
    &= #rect($(2sqrt(2), -1, 0)$, inset: 7.5pt)
  $

+ Note that a counterclockwise rotation by $90 degree$ corresponds to a rotation
  of $theta = 90 degree$. Also note that $sin(90 degree) = 1, cos(90 degree) =
  0$. The image of #u under a rotation about the $z$-axis by $90 degree$ is
  given by

  $
    (A_(90 degree) #u^T)^T
    &= (mat(
        cos(90 degree), - sin(90 degree), 0;
        sin(90 degree), cos(90 degree), 0;
        0, 0, 1) mat(2;-1;2))^T \
    &= (mat(0, -1, 0; 1, 0, 0; 0, 0, 1) mat(2;-1;2))^T \
    &= #rect($(1,2,2)$, inset: 7.5pt)
  $

#line()

== Exercise 4.9.15

+ Use matrix multiplication to find the contraction of $(2, -1, 3)$ with
  factor $k = 1/4$.

+ Use matrix multiplication to find the dilation of $(2, -1, 3)$ with factor
  $k = 2$.

=== Answer

+ The corresponding matrix to a contraction factor $k= 1/4$ in $RR^3$ is
  $ k I = mat(1/4,0,0;0,1/4,0;0,0,1/4) $
  This is exactly the same as multiplying all vectors in $RR^3$ by $k$.
  Therefore, $k(2, -1, 3) = (1/2, -1/4, 3/4)$.

+ The corresponding matrix to a dilation factor $k=2$ is
  $ k I = mat(2,0,0;0,2,0;0,0,2) $
  The image of the given vector under this transformation is $(4,-2,6)$.

#line()
#pagebreak()

== Exercise 4.9.21

Describe the matrix operator whose standard matrix is given, and then show in
a coordinate system its effect on the unit square.

+ $ A_1 = mat(1/2,0;0,1/2) $
+ $ A_2 = mat(1,0;0,1/2) $
+ $ A_3 = mat(1,0;1/2,1) $
+ $ A_4 = mat(1,0;-1/2,1) $

=== Answer

+ This matrix corresponds to a contraction by $k = 1/2$. Given the unit square
  with area $1$ and vertices ${(0,0), (1,0), (0,1), (1,1)}$, it shrinks it to a
  square with area $1/4$ and vertices ${(0,0), (1/2,0), (0,1/2), (1/2,1/2)}$.

+ This matrix corresponds to a compression over the $y$-axis by $k = 1/2$. It
  compresses the unit square to a rectangle with area $1/2$ and vertices
  ${(0,0), (1,0), (0,1/2), (1,1/2)} $.

+ This matrix corresponds to a sheer in the positive $y$-axis direction by $k =
  1/2$. It would distort the unit square to a paralellogram with area $1$ and
  vertices ${(0,0), (1,1/2), (0,1), (3/2,1/2)} $.

+ This matrix corresponds to a sheer in the negative $y$-axis direction by $k =
  1/2$. It would distort the unit square to a paralellogram with area $1$ and
  vertices ${(0,0), (1,-1/2), (0,1), (1/2,1/2)} $.

#line()

== Exercise 4.9.23

In each part, the effect of some matrix operator on the unit square is shown.
Find the standard matrix for an operator with that effect.

#align(center)[_Note: Illustrations in the book_.]

=== Answer

+ This effect corresponds to a dilation by a factor of $k=2$: $mat(2,0;0,2)$.
  Proof of this is that, for all the vertices $(u_1, u_2)$ of the square, their
  image is given by $T(u_1, u_2) = (k u_1, k u_2)$: E.G: $T(1,1) = (2,2)$.

+ This effect corresponds to a sheer in the postive $x$ direction by a factor of
  $k=2$: $mat(1,3;0,1)$, as for all vertices $#u$ of the unit square, their
  image is given by $T(u_1, u_2) = (u_1 + k u_2, u_2)$. E.G: $T(1,1) = (3,1)$,
  $T(0,1) = (2, 1)$, $T(1,0) = (1,0)$.

#line()
#pagebreak()

== Exercise 4.9.31

Find the standard matrix for the operator $T: RR^3 arrow.r RR^3$ that

+ rotates each vector $30 degree$ counterclockwise about the $z$-axis.

+ rotates each vector $45 degree$ counterclockwise about the $x$-axis.

+ rotates each vector $90 degree$ counterclockwise about the $y$-axis.

=== Answer

+ $
    mat(cos 30 degree, - sin 30 degree, 0;
    sin 30 degree, cos 30 degree, 0; 0, 0, 1
  ) = mat(sqrt(3)/2, -1/2, 0; 1/2, sqrt(3)/2, 0;
    0, 0, 1)
  $

+ $
    mat(1,0,0;
        0, cos 45 degree, - sin 30 degree;
        0, sin 30 degree, cos 30 degree, 0)
    = mat(1,0,0;0,sqrt(2)/2, -sqrt(2)/2; 0, sqrt(2)/2, sqrt(2)/2)
  $

+ $
    mat(cos 90 degree, 0, - sin 90 degree;
        0, 1, 0;
        sin 90 degree, 0, cos 90 degree)
    = mat(0, 0, -1; 0, 1, 0; 1, 0, 0)
  $

== Exercise 4.9.33

User Formula (3) to find the standard matrix for a rotation of $180 degree$
about the axis determind by the vector $#v = (2,2,1)$. [_Note: Formula (3)
requires that the vector defining the axis of rotation have length 1. _]

=== Answer

Since the vector defining the axis of rotation must be length 1, the axis of
rotation around $#v$ is given by

$
  1/(||#v||) #v &= 1/(sqrt( 4 + 4 + 1)) (2,2,1) \
  &= (2/9, 2/9, 1/9)
$

Let $#u = (a,b,c) arrow.r.l.double.long a = 2/9, b = 2/9, c = 1/9$, and $theta
= 180 degree$. Note that $sin 180 degree = 0, cos 180 degree = 0$. Plugging this
values into Formula 3, we get:

#let p = $(1 - cos theta)$

$
  mat(
  a^2 #p + cos theta, a b #p - c sin theta, a c #p + b sin theta;
  a b #p + c cos theta, b^2 #p + cos theta, b c #p -  sin theta;
  a c #p - b sin theta, c b #p + a sin theta, c^2 #p + cos theta;
) \
  = mat(
  (2/9)^2 (1 - 0) + 0, (2/9) (2/9) (1 - 0) - (1/9) 1, (2/9) (1/9) (1 - 0) + (2/9) 1;
  (2/9) (2/9) (1 - 0) + (1/9) 0, (2/9)^2 (1 - 0) + 0, (2/9) (1/9) (1 - 0) -  1;
  (2/9) (1/9) (1 - 0) - (2/9) 1, (1/9) (2/9) (1 - 0) + (2/9) 1, (1/9)^2 (1 - 0) + 0;
) \
  = mat(
  4/81, 4/81 - 1/9, 2/81 + 2/9 ;
  4/81, 4/81, 2/81 - 1;
  2/81 - 2/9, 2/81 + 2/9, 1/81;
) \
  = mat(
  4/81, -5/81, 20/81 ;
  4/81, 4/81, - 79/81;
  - 16/81, 20/81, 1/81;
) \
#rect($ = 1 / 81 mat(4, -5, 20; 4, 4, -79; - 16, 20, 1) $, inset: 10pt) \
$
