= Section 4.4

== Exercise 1

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

$ mat(delim:"[", 2,3;1,0) mat(delim:"[", k_1;k_2) = mat(delim:"[", 0;0) $

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

== Exercise 3

Show that the following polynomials form a basis for $P-2$.

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

== Exercise 7

In each part, show that the set of vectors is not a basis for $RR^3$.

#set enum(numbering: "(a)")

+ ${(2,-3,1), (4,1,1), (0,-7,1)}$

+ ${(1,6,4), (2,4,-1), (-1,2,5)}$

=== Answer

+ $mat(delim: "|", 2,4,0;-3,1,-7;1,1,1) = 7(2-4) + (2 + 12) = 0$.

+ $mat(delim: "|", 1,2,-1;6,4,2;4,-1,5) = (20 + 2) - 2(30 - 8) - 1(-6 - 16)
= 0$.

== Exercise 9

Show that the following matrices do not form a basis for $M_(22)$:

$
  mat(delim:"[",1,0;1,1), mat(delim:"[",2,-2;3,2), mat(delim:"[",1,-1;1,0),
  mat(delim:"[",0,-1;1,1)
$

=== Answer

These matrices are linarly independent if $exists.not (k_1, k_2, k_3, k_4) in
RR^4$ such that

$
  k_1 mat(delim:"[",1,0;1,1) + k_2 mat(delim:"[",2,-2;3,2) +
  k_3 mat(delim:"[",1,-1;1,0) + k_4 mat(delim:"[",0,-1;1,1) =
  mat(delim:"[",0,0;0,0)
$

and $(k_1, k_2, k_3, k_4) != bold(0)$. We can rearrange this system as follows:

$
  mat(delim:"[",
    k_1+2 k_2+ k_3; -k_2 - k_3 - k_4;
    k_1 + 3k_2 + k_3 + k_4; k_1 + 2k_2 + k_4) = mat(delim:"[",0;0;0;0)
$

which, can be expressed as the following linear transformation:

$
  mat(delim:"[",
    1, 2, 1, 0; 0, -1, -1, -1;
    1,3,1,1; 1,2,0,1) mat(delim:"[",k_1;k_2;k_3;k_4) = mat(delim:"[",0;0;0;0)
$

Since the determinant of the cofficient matrix is 0, the given set is not
a basis for $RR^4$.

== Exercise 11

== Exercise 13
== Exercise 15
== Exercise 17
== Exercise 21

