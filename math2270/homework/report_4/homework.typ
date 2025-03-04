
// Metadata
#set document(
  title: "Report 4",
  author: "Carlos Rubio",
)

// Page one
// #set page(columns: 2)

#place(
  top + center,
  scope: "parent",
  float: true,
  heading()[Section 2.1],
)

#place(
  top + left,
  scope: "parent",
  float: true,
  text()[Evaluate the determinant of the given matrix. If th matrix is
    invertible, find its inverse using $A^(-1) = 1/ det(A) a d j(A)$.
  ],
)

== Exercise 5

$ A=mat(delim: "[", 3, 5; -2,4) $

=== Answer

$
  det(A) &= 3(5) - (-2)(4) \
  &= 15 + 8 \
  &= 23
$

$
  A^(-1) &= 1 / det(A) mat(delim:"[", 4, -5;-3,2) \
  &= mat(delim:"[", 4/23, -5/23;-3/23,2/23)
$

// #colbreak()

== Exercise 7

$ A=mat(delim: "[", -5, 7; -7,2) $

=== Answer

$
  det(A) &= -5(2) - (-7)(7) \
  &= -10 + 49 \
  &= 39
$

$
  A^(-1) &= 1 / det(A) mat(delim:"[", 2, -7;7,-5) \
  &= mat(delim:"[", 2/39, -7/39; 7/39,-5/39)
$

#pagebreak()

#place(
  top + left,
  scope: "parent",
  float: true,
  text()[Use the arrow technique to evaluate the determinant.
  ],
)

== Exercise 11

$ A=mat(delim: "[", -2, 1, 4; 3,5,-7;1,6,2) $

=== Answer

$
  det(A) &= -2(5)(2) + 1(-7)(1) + 4(3)(6) -
  (-2)(-7)(6) - (1)(3)(2) - (4)(5)(1) \
  &= -20 - 7 + 72 - 84 - 6 - 20 \
  &= -20 - 12 -7 -6 -20 \
  &= -32 -13 -20 \
  &= -45 -20 \
  &= -65 \
$

// #colbreak()

== Exercise 13

$ A=mat(delim: "[", 3, 0, 0; 2, -1, 5; 1, 9, -4) $

=== Answer

$
  det(A) &= 3(-1)(-4) - 3(5)(9) \
  &= 12 - 135 \
  &= -123
$

#pagebreak()

#place(
  top + left,
  scope: "parent",
  float: true,
  text()[Find all values of $lambda$ for which $det(A)=0$
  ],
)

== Exercise 15

$ A = mat(delim:"[", lambda-2, 1; -5, lambda+4) $

=== Answer

$
  det(A) &= (lambda-2)(lambda+4) +5 \
  &= lambda^2 + 2 lambda - 3 \
  &= (lambda+3)(lambda-1)
$

Therefore, $lambda = -3, 1$

// #colbreak()

== Exercise 17

$ A = mat(delim:"[", lambda-1, 0; 2, lambda+1) $

=== Answer

$
  det(A) &= (lambda-1)(lambda+2) \
$

Therefore, $lambda = -2, 1$

#pagebreak()

#set page(columns: 1)

== Exercise 25

Evaluate $det(A)$ by a cofactor expansion along a row or a column of you choice.

$ A = mat(delim:"[", 3,3,0,5;2,2,0,-2;4,1,-3,0;2,10,3,2) $

=== Answer

$
  det(A) &= mat(delim:"|", 3,3,5;2,2,-2;2,10,2) -
  mat(delim:"|", 3,3,5;2,2,-2;4,1,0) \
  &= 3(4+20) - 3(4+4) + 5(20-4) - 3(2) + 3(8) - 5(2 - 8) \
  &= 72 - 24 + 80 - 6 + 24 + 30 \
  &= 72 + 80 + 24 \
  &= 80 + 96 \
  &= 176
$

// #set page(columns: 2)
#place(
  top + left,
  scope: "parent",
  float: true,
  text()[Evaluate the determinant of the given matrix $A$ by inspection.],
)
== Exercise 27

$ A = mat(delim:"[", 1,0,0;0,-1,0;0,0,1) $

=== Answer

$
  det(A) = -1
$

// #colbreak()

== Exercise 29

$ A = mat(delim:"[", 0,0,0,0;1,2,0,0;0,4,3,0;1,2,3,8) $

=== Answer

$
  det(A) = 0
$

#pagebreak()

#set page(columns: 1)

#place(
  top + center,
  float: true,
  scope: "parent",
  heading()[Section 2.2],
)


Verify that $det(A) = det(A^T)$

== Exercise 1

$ A = mat(delim: "[", -2, 3; 1, 4) $

=== Answer

$
  det(A) &= -2(4) - 3 \
  &= -11
$

$ A^T &= mat(delim: "[", -2, 1; 3, 4) $

$
  det(A^T) &= -2(4) - 3 \
  &= -11
$

== Exercise 3

$ A = mat(delim: "[", 2,-1,3;1,2,4,;5,-3,6) $

=== Answer

$
  det(A) &= -2(12+12) + (6-20) + 3(-3 - 10) \
  &= -48 - 14 - 39 \
  &= -50 - 11 - 40 \
  &= -101
$

$ A^T = mat(delim: "[", 2,1,5;-1,2,-3,;3,4,6) $

$
  det(A^T) &= -2(12+12) + (6-20) + 3(-3 - 10) \
  &= -48 - 14 - 39 \
  &= -50 - 11 - 40 \
  &= -101
$

#pagebreak()

Find the determinant of the given elementary matrix by inspection,

== Exercise 5

$ mat(delim: "[", 1, 0, 0, 0; 0, 1, 0, 0; 0, 0, -5, 0; 0, 0, 0, 1) $

=== Answer

$ det(A) = -5 $

== Exercise 7

$ mat(delim: "[", 1, 0, 0, 0; 0, 0, 1, 0; 0, 1, 0, 0; 0, 0, 0, 1) $

=== Answer

$ det(A) = -1 $

#pagebreak()

#set page(columns: 2)

#place(
  top + left,
  scope: "parent",
  float: true,
  text()[Evaluate the determinant of the matrix by first reducing the matrix to
    row echelon form and then using some combination of row operations and
    cofactor expansion.],
)

== Exercise 11

$ mat(delim: "[", 3, -6, 9; -2, 7, -2; 0, 1, 5) $

=== Answer

$
  mat(delim: "|", 3, -6, 9; -2, 7, -2; 0, 1, 5)
  &=3mat(delim: "|", 1, -2, 3; -2, 7, -2; 0, 1, 5) \
  =3mat(delim: "|", 1, -2, 3; 0, 11, -8; 0, 1, 5)
  &=33mat(delim: "|", 1, -2, 3; 0, 1, -8/11; 0, 1, 5) \
  =33mat(delim: "|", 1, -2, 3; 0, 1, -8/11; 0, 0, 63/11)
  &=(363 / 63)mat(delim: "|", 1, -2, 3; 0, 1, -8/11; 0, 0, 1) \
  = 363 / 63
$

#colbreak()

== Exercise 13

$
  mat(delim: "[",
  1, 3, 1,5,3;
  -2, -7, 0, -4, 2;
  0, 0, 1, 0, 1;
  0, 0, 2, 1, 1;
  0, 0, 0, 1, 1
)
$

=== Answer

$
  mat(delim: "|",
  1, 3, 1,5,3;
  -2, -7, 0, -4, 2;
  0, 0, 1, 0, 1;
  0, 0, 2, 1, 1;
  0, 0, 0, 1, 1
)
  &= mat(delim: "|",
  1, 3, 1,5,3;
  0, -1, 2, 6, 8;
  0, 0, 1, 0, 1;
  0, 0, 0, 1, -1;
  0, 0, 0, 0, 2
) \
  = -2mat(delim: "|",
  1, 3, 1,5,3;
  0, 1, -2, -6, -8;
  0, 0, 1, 0, 1;
  0, 0, 0, 1, -1;
  0, 0, 0, 0, 1
) &= -2
$

#pagebreak()

#set page(columns: 1)

Evaluate the determinant, given that
$ mat(delim: "|", a, b, c; d, e, f; g, h, i) = 6 $

== Exercise 15

$ mat(delim: "|", d, e, f; g, h, i; a, b, c) $

=== Answer

$ det(A) = 1 $

== Exercise 17

$ mat(delim: "|", 3a, 3b, 3c; -d, -e, -f; 4g, 4h, 4i) $

=== Answer

$ det(A) = -12 $

== Exercise 21

$ mat(delim: "|", -3a, -3b, -3c; d, e, f; g - 4d, h - 4e, i - 4d) $

=== Answer

$ det(A) = -3 $

#pagebreak()


== Exercise 31

It can be proven that if a square matrix $M$ is partitioned into *block
triangular form* as

$ M = mat(delim: "[", A, 0; C, B) "or" M = mat(delim: "[", A, C; 0, B) $

in which $A$ and $B$ are square, then $det(M) = det(A)det(B)$. Use this result
to compute the determinant of

$
  M = mat(delim:"[",
  1, 2, 0, "|", 8, 6, 7;
  2, 5, 0, "|", 4, 7, 5;
  -1, 3, 2, "|", 6, 9, -2;
  "-", "-", "-", "+", "-", "-", "-";
  0, 0, 0, "|", 3, 0, 0;
  0, 0, 0, "|", 2, 1, 0;
  0, 0, 0, "|", -3, 8, -4;
)
$

=== Answer

$
  det(M) &= 2(5-4)(3)(-4) \
  &= -24 \
$

