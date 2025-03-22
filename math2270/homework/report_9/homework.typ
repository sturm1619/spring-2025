#let u = math.bold("u")
#let w = math.bold("w")
#set math.mat(delim: "[")
#set enum(numbering: "(a)")
#set line(length: 100%)

= Section 4.7

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
nonhomogeous linnear system $A #x = #b$ and that the solution set of the
homogenous system $A #x = bold(0)$ is given by the formulas

$ x_1 = 5r - 2s, quad x_2 = s, quad x_3 = s + t, quad x_4 = t $

#set enum(start: 1)

+ Find a vector form of the general solution of $A#x = bold(0)$.

+ Find a vector form of the general solution of $A#x = #b$.

=== Answer

+ $
    #x = r mat(5;0;0;0) + s mat(-2;1;1;0) + t mat(0;0;1;1) =
  mat(5r-2s;s;s+t;t)
  $
+ $
    #x = mat(3;0;-1;5) + r mat(5;0;0;0) + s mat(-2;1;1;0) + t mat(0;0;1;1) =
    mat(3+5r-2s;s;s+t-1;5+t)
  $

#line()

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

+ $
    det(A) != 0 arrow.r.double.long
    quad "row"(A) = {(1,-1,3), (5,-4, -4), (7,-6,2)},
    quad "null"(A) = {bold(0)}
  $

+ $
    det(A) = 0 arrow.r.double.long
    quad "row"(A) = {(2,0,-1)},
    quad "null"(A) = {(0,1,0), (1 / 2,0,1)}
  $

#line()

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

+ Use methods of Examples 6 and 7 sto find bases for the row space and column
  space of the matrix

$ A = mat(1,-2,5,0,3;-2,5,-7,0,-6; -1,3,-2,1,-3;-3,8,-9,1,-9) $

+ Use the method of example 9 to find a basis for the row space of $A$ that
  consists entirely of row vectors of $A$.

=== Answer

+ $ "rref"(A) = mat(1,0,11,0,3;0,1,3,0,0;0,0,0,1,0;0,0,0,0,0) $ Therefore, a
  basis for the row space of $A$ is ${(1,0,11,0,3), (0,1,3,0,0), (0,0,0,1,0))}$,
  and a basis for the column space is ${(1,-2,-1,-3),(-2,5,3,8), (0,0,1,1)}$.

+ $ (A^T) = mat(1,-2,-1,-3;-2,5,3,8;5,-7,-2,-9;0,0,1,1;3,-6,-3,-9) $
  $ "rref"(A^T) = mat(1,0,0,0;0,1,0,1;0,0,1,1;0,0,0,0;0,0,0,0) $
Therefore, a basis for the row space of $A$ is ${(1,-2,5,0,3),(-2,5,-7,0,-6),
(-1,3,-2,1,-3)}$.

== Exercise 4.7.15
== Exercise 4.7.17
