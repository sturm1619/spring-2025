#let u = math.bold("u")
#let w = math.bold("w")
#set math.mat(delim: "[")
#set enum(numbering: "(a)")
#set line(length: 100%)

= Section 4.6

== Exercise 4.6.1

Consider the bases $B = {#u _1, #u _2}$ and $B' = {#u '_1, #u '_2}$ for $RR^2$, where

$
  #u _1 = mat(2;2), quad #u _2 = mat(4;-1),
  quad #u '_1 = mat(1;3), quad #u '_2 = mat(-1;-1)
$

+ Find the transition matrix from $B'$ to $B$.

+ Find the transition matrix from $B$ to $B'$.

+ Compute the coordinate vector $[#w]$, where

$
  #w = mat(3;-5)
$

and use (12) to compute $[#w]_(B')$.

(d) Check your work by computing $[#w]_(B')$ directly.

=== Answer

+ Finding the transition matrix $P_(B arrow.r B')$ from $B$ to $B'$ reduces to
multiplying the inverse of the matrix whose column vectors are $B'$ with the
matrix whose column vectors are $B$.

$
  B^(-1) B' &= mat(1,-1;3,-1)^(-1) mat(2, 4;2,-1) \
  &= mat(1/10, 2/5; 1/5, -1/5) mat(2,4;2,-1) \
  &= mat(13/10, -1/2; -2/5, 0)
$

(b) For $P_(B' arrow.r B)$, similar to (a), but multiplying $B^(-1)$ with $B'$.

$
  B'^(-1) B &= mat(2, 4;2,-1)^(-1) mat(1,-1;3,-1) \
  &= mat(-1/2, 1/2;-3/2,1/2)^(-1) mat(1,-1;3,-1) \
  &= mat(0, -5/2; -2, -13/2)
$

(c) Computing $[#w]_B$ reduces to multiplying $B^(-1)$ and $#w$

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

(d) Computing $#w _(B')$ reduces to multiplying $B'^(-1) #w$. Now,
note that $P_(B arrow.r B') = B^(-1) B'$. Therefore,

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

(c) Check your work by computing $[#w]_(B')$ directly.

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
  [#w]_(B') &= P_(B arrow.r B') [#w]_B) \
  &= mat(3/2,1/2,-5/2;-1/2,-1/2,3/2;-1,0,2) mat(-5;8;-5) \
  &= mat(-7/2;23/2;6)
$

(c)
$
  [#w]_(B') &= B'^(-1) #w \
  &= mat(1,1/2,1/2;-1,1/2,-1/2;1,2,1) mat(-5;8;-5) \
  &= mat(-7/2;23/2;6)
$

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

+ Use Formula (14) to find the transition matrix $P_(B_1 arrow.r B_2)$.

+ Use Formula (14) to find the transition matrix $P_(B_2 arrow.r B_1)$.

+ Confirm that $P_(B_2 arrow.r B_1)$ and $P_(B_1 arrow.r B_2)$ are inverses of
  one another.

+ Let $#w = (0,1)$. Find $[#w]_(B_1)$ and use the matrix $P_(B_1 arrow.r B_2)$
  to compute $[#w]_(B_2)$ from $[#w]_(B_1)$.

+ Let $#w = (2,5)$. Find $[#w]_(B_2)$ and use the matrix $P_(B_2 arrow.r B_1)$
  to compute $[#w]_(B_1)$ from $[#w]_(B_2)$.

=== Answer

Honestly, this is just a bunch of work when there are already algebraic systems
that can do all this work.

== Exercise 4.6.13

If $P$ is the transition matrix from a basis $B'$ to a basis $B$, and $Q$ is
the transition from $B$ to a basis $C$, what is the transition matrix $B'$
to $C$? What is the transition matrix from $C$ to $B'$?

=== Answer

$
  Q P: "The transition matrix from B' to C" \
  P^(-1) Q^(-1) : "The transition matrix from C to B'"
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

=== Exercise 4.6.17

Let $S = {#e _2, #e _3}$ be the standard basis for $RR^2$, and let $B = {#v _1,
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
