
// Metadata
#set document(
  title: "Report 3",
  author: "Carlos Rubio",
)

// Page one
#set page(columns: 2)

#place(
  top + center,
  scope: "parent",
  float: true,
  heading()[Section 1.6],
)

#place(
  top + left,
  scope: "parent",
  float: true,
  text()[Solve the following systems by inverting the coefficient matrix and
    using _Theorem 1.6.2_.],
)

== Problem 1

$ x_1 + x_2 = 2 \ 5x_1 + 6x_2 = 9 $

=== Answer

$
  A= mat(delim:"[", 1, 1; 5,6) \
  hat(b)= mat(delim:"[", 2; 9) \
  det(A) = 1 \
$
$
  A^(-1)hat(b) &= mat(delim:"[",
    6, -1;
    -5, 1
) mat(delim: "[", 2;9) \ &= mat(delim: "[", 3;-1)
$

#colbreak()

== Problem 3

$ x_1 + 3x_2 + x_3 = 4 \ 2x_1 + 2x_2 + x_3 = -1 \ 2x_1 + 3x_2 + x_3 = 3 $

=== Answer

$
  A &= mat(delim:"[", 1, 3, 1; 2,2, 1; 2, 3, 1) \
  hat(b) &= mat(delim:"[", 4; -1; 3) \
$
$
  det(A) &= (2-3) - 3(0) + (6-4) \
  &= 3
$
$
  A^(-1) &= 1 / det(A) "adj"(A) \
  &= mat(delim:"[",
  -1/3, 0, 1/3; 0, -1/3, 1/3; 2/3, 1/3, -4/3
)
$
$
  A^(-1)hat(b) &= mat(delim:"[",
  -1/3, 0, 1/3; 0, -1/3, 1/3; 2/3, 1/3, -4/3
)
  mat(delim: "[", 4;-1;3) \ &= mat(delim: "[", -1/3;4/3;5/3)
$

#pagebreak()

// Page two
#place(
  top + left,
  scope: "parent",
  float: true,
  text()[For the following exercises, solve the linear system together by
    reducing the appropriate augmented matrix.],
)

== Problem 9

$
  x_1 - 5x_2 = b_1 \
  3x_1 + 2x_2 = b_2
$

1. $b_1 = 1, b_2 = 4$

2. $b_1 = -2, b_2 = 5$

=== Answer

1. $
    mat(delim: "[", 1, -5, |, 1; 3, 2, |, 4) arrow.r.long.double
    mat(delim: "[", 1, -5, |, 1; 0, 17, |, 1) arrow.r.long.double \
    mat(delim: "[", 1, -5, |, 1; 0, 1, |, 1/17) arrow.r.long.double
    mat(delim: "[", 1, 0, |, 23/17; 0, 1, |, 1/17)
  $
#linebreak()
2. $
    mat(delim: "[", 1, -5, |, -2; 3, 2, |, 5) arrow.r.long.double
    mat(delim: "[", 1, -5, |, -2; 0, 17, |, 20) arrow.r.long.double \
    mat(delim: "[", 1, -5, |, 1; 0, 1, |, 20/17) arrow.r.long.double
    mat(delim: "[", 1, 0, |, 117/17; 0, 1, |, 1/17)
  $

#colbreak()

== Problem 11

$
  4x_1 - 7x_2 = b_1 \
  x_1 + 2x_2 = b_2
$

1. $b_1 = 0, b_2 = 1$
2. $b_1 = -4, b_2 = 6$
3. $b_1 = -1, b_2 = 3$
4. $b_1 = -5, b_2 = 1$

=== Answer

1. $
    mat(delim: "[", 4, -7, |, 1; 3, 2, |, 4) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, 1/4; 3, 2, |, 4) arrow.r.long.double \
    mat(delim: "[", 1, -7/4, |, 1/4; 0, 29/4, |, 13/4) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, 1/4; 0, 1, |, 13/29) arrow.r.long.double \
    mat(delim: "[", 1, 0, |, 81/29(4); 0, 1, |, 13/29)
  $
2. $
    mat(delim: "[", 4, -7, |, -4; 3, 2, |, 6) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, -1; 3, 2, |, 6) arrow.r.long.double \
    mat(delim: "[", 1, -7/4, |, -1; 0, 29/4, |, 9) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, -1; 0, 1, |, 36/29) arrow.r.long.double \
    mat(delim: "[", 1, 0, |, 55/29; 0, 1, |, 36/29)
  $
3. $
    mat(delim: "[", 4, -7, |, -1; 3, 2, |, 3) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, -1/4; 3, 2, |, 3) arrow.r.long.double \
    mat(delim: "[", 1, -7/4, |, -1/4; 0, 29/4, |, 6) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, -1/4; 0, 1, |, 24/29) arrow.r.long.double \
    mat(delim: "[", 1, 0, |, 47/29; 0, 1, |, 24/29)
  $
4. $
    mat(delim: "[", 4, -7, |, 0; 3, 2, |, 1) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, 0; 3, 2, |, 1) arrow.r.long.double \
    mat(delim: "[", 1, -7/4, |, 0; 0, 29/4, |, 1) arrow.r.long.double
    mat(delim: "[", 1, -7/4, |, 0; 0, 1, |, 4/29) arrow.r.long.double \
    mat(delim: "[", 1, 0, |, 7/29; 0, 1, |, 24/29)
  $

#pagebreak()

// Page three
#place(
  top + left,
  float: true,
  scope: "parent",
  text()[For the following exercises, determine the conditions on the $b_i$'s,
    if any, in order to guarantee that the linear system is consistent.],
)

== Problem 13

$
  x_1 + 3x_2 = b_1 \
  -2x_1 + x_2 = b_2
$

=== Answer

This system should be consistent for all values of $(b_1, b_2)$ as its
determinant is non-zero.

#colbreak()

== Problem 15

$
  x_1 - 2x_2 + 5x_3 = b_1 \
  4x_1 - 5x_2 + 8x_3 = b_2 \
  -3x_1 + 3x_2 - 3x_3 = b_3
$

=== Answer

$
  mat(delim: "[",
  1, -2 , 5,|, b_1 ;
  4, -5, 8, |, b_2 ;
  -3, 3, -3, |, b_3;
) arrow.r.long.double
  mat(delim: "[",
  1, -2 , 5,|, b_1 ;
  4, -5, 8, |, b_2 ;
  1, -2, 5, |, b_3 + b_2;
) arrow.r.long.double \
  mat(delim: "[",
  1, -2 , 5,|, b_1 ;
  4, -5, 8, |, b_2 ;
  0, 0, 0, |, b_3 + b_2 - 1 b_1;
) arrow.r.long.double
  mat(delim: "[",
  1, -2 , 5,|, b_1 ;
  0, 3, -12, |, b_2 - 4 b_1 ;
  0, 0, 0, |, b_3 + b_2 - 1 b_1;
) arrow.r.long.double \
  mat(delim: "[",
  1, -2 , 5,|, b_1 ;
  0, 1, -4, |, 1/3(b_2 - 4 b_1) ;
  0, 0, 0, |, b_3 + b_2 - 1 b_1;
) arrow.r.long.double
  mat(delim: "[",
  1, 0 , -3,|, 2/3b_2 - 5/3 b_1;
  0, 1, -4, |, 1/3(b_2 - 4 b_1) ;
  0, 0, 0, |, b_3 + b_2 - b_1;
)
$

System is consistent for all $b_1 = b_2 + b_3$.

#pagebreak()

#set page(columns: 1)

== Problem 19

Solve the matrix equation for $X$.

$
  mat(delim:"[", 1,-1,1;2,3,0;0,2,-1) X
  = mat(delim:"[", 2,-1,5,7,8;4,0,-3,0,1;3,5,-7,2,1)
$

=== Answer

$
  mat(delim:"[", 1,-1,1;2,3,0;0,2,-1)^(-1) =
  mat(delim:"[", 3,-1,3;-2,1,-2;-4,2,-5)
$$
  X &= mat(delim:"[", 3,-1,3;-2,1,-2;-4,2,-5)
  mat(delim:"[", 2,-1,5,7,8;4,0,-3,0,1;3,5,-7,2,-1) \
  &= mat(delim:"[", 8,12,-3,27,26;-6,-8,1,-18,-17;-15,-21,9,-38,35) \
$


#pagebreak()

//#set page(columns: 2)

#place(
  top + center,
  scope: "parent",
  float: true,
  heading()[Section 1.7],
)

== Problem 3

Find the product by inspection of
$
  mat(delim: "[", 3, 0, 0; 0,-1,0;0,0,2)
  mat(delim: "[", 2, 1; -4,1;2,5)
$

=== Answer
$
  mat(delim: "[",6,3;4,-1;4,10)
$

== Problem 7

Given $ A = mat(delim: "[", 1,0;0,-2) $

Find $A^2$, $A^(-2)$ and $A^(-k)$ (where $k$ is any integer) by inspection.

=== Answer
$
  A^2 = mat(delim: "[",1,0;0,4) \
  A^(-2) = mat(delim: "[",1,0;0,1/4) \
  A^(-k) = mat(delim: "[",1,0;0,(-1/2)^k)
$

== Problem 11
Given
$
  mat(delim: "[",1,0,0;0,0,0;0,0,3)
  mat(delim: "[",2,0,0;0,5,0;0,0,0)
  mat(delim: "[",0,0,0;0,2,0;0,0,1)
$

Comput the product by inspection

=== Answer

The product is the zero matrix.
$
  mat(delim: "[",0,0,0;0,0,0;0,0,0)
$

== Problem 13

Compute the indicated quantity
$
  mat(delim: "[",1,0;0,-1)^39
$

=== Answer

$
  mat(delim: "[",1,0;0,1)
$

== Problem 17

Create a symmetric matrix by ubstituting approprite numbers for the $times$'s.

1. $
    mat(delim: "[", 2, -1; times, 3)
  $
2. $
    mat(delim: "[",
  1, times, times, times;
  3, 1, times, times;
  7, -8, 0, times;
  2, -3, 9, 0
)
  $

=== Answer

1. $
    mat(delim: "[", 2, -1; -1, 3)
  $
2. $
    mat(delim: "[",
  1, 3, 7, 2;
  3, 1, -8, -3;
  7, -8, 0, 9;
  2, -3, 9, 0
)
  $

#set page(columns: 2)

#place(
  top + left,
  scope: "parent",
  float: true,
  text()[For the following exercises, determine by inspection whether the matrix
    is invertible.],
)
== Problem 19

$
  mat(delim: "[", 0,6, -1; 0, 7, -4; 0, 0, -2)
$

=== Answer

Matrix is singular.

#colbreak()

== Problem 21

$
  mat(delim: "[",
  1, 0, 0, 0;
  2, -5, 0, 0;
  4, -3, 4, 0;
  1, -2, 1, 3
)
$

=== Answer

Invertible.

#set page(columns: 1)

== Problem 23

Find the diagonal entries of $A B$ by inspection.

$
  A = mat(delim: "[", 3, 2, 6; 0, 1, -2; 0, 0, -1) \
  B = mat(delim: "[", -1, 2, 7; 0, 5, 3; 0, 0, 6)
$

=== Answer

$
  A B = mat(delim: "[", -3, 9, 26; 0, 5, -13; 0, 0, -6) \
$

== Problem 25

Find all the values of the unknown constant(s) for which $A$ is symmetric.

$
  A = mat(delim: "[", 4,-3; a+5,-1)
$

=== Answer

$ a = -8 $

== Problem 27

Find all the values of x for which A is invertible.

$
  A = mat(delim:"[",
  x-1,x^2,x^4;
  0, x+2, x^3;
  0, 0, x-4
)
$

=== Answer

Invertible for $x in (oo, -2) union (-2, 1) union (1, 4) union (4, oo)$.

== Problem 31

Find a diagonal matrix $A$ that satisfies
$
  A^5 = mat(delim: "[",
  1, 0, 0;
  0, -1,0;
  0, 0, -1)
$

=== Answer

$
  A = mat(delim: "[",
  1, 0, 0;
  0, -1,0;
  0, 0, -1)
$



