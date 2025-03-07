// NOTE: Imports and templates
#import emoji: face
#set enum(numbering: "(a)")
#show enum: set text(weight: "bold")
#set line(length: 100%)

// NOTE: Document
//          Title
#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 9")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(size: 18pt, font: "Noto Serif", stroke: navy, fill: navy, "March 8th, 2025")

#pagebreak()

// NOTE: Body

= Double Integrals over Rectangles

== Problem 1

Evaluate the double integral

$ integral integral_R (4 - 2y) d A,quad R = [0,1] times [0,1] $

by first identifying it as the volume of a solid.

=== Answer

Student note: _To be honest, I super lost with this one #face.sad. It wasn't hard
to understand that we are integrating into a three dimensional body, and that one
of the faces would be the area under the segment of the hypothenuse of a right
triangle. But I couldn't conclude it be a trapezoidal prism. More over, I don't
think I was ready to say trapezoidal prism._

But once the body is given, the formula is clear. Note that, if we project
this body into th $y z$ plane, we get a trapezoid. For such trapezoid, let
$a$ and $b$ be the length of the sides that are parallel, and $h$ be the height
or distance between those sides. Then $(a+b)/2 dot h$ is the area for this shape.
We can get the magnitude of the volume of the original body by scaling by the
depth $d$ of the original, yielding the formula $(a+b)/2 h d$.

Since we are integrating over $R = [x_0,x_1] times [y_0,y_1]$, let $x_0 = 0$ and
$x_1 = 1$ correspond to the endpoints in the $x$-axis of our shape. Similar for
$y_0 = 0$, $y_1 = 1$. let this segment of the $x y$ plane correspond to the
depth and height of our prism: $h = x_1 - x_0 = 1, d = y_1 - y_0 = 1$. Then, the
lengths $a$ and $b$ are given by our function $f(y) = 4 - 2 y$ evaluated at
$y_0$ and $y_1$ respectively.

$ (a+b) / 2 h d = (4 - 0 + 4 - 2) / 2 (1)(1) = 3 $

#line()

== Problem 2

Calculate the double integral

$ integral integral_R (y + x y^(-2)) d A, quad R = { (x,y) | 0 <= x <= 2, 1 <= y <= 2} $

=== Answer

Note that we can rewrite the given integral as

$ integral_0^2 integral_1^2 (y + x y^(-2)) d y d x $

#line(stroke: .5pt)

$
  integral_1^2 y + x y^(-2) d y
  &= integral_1^2 y d y + integral_1^2 x y^(-2) d y \
  &= y^2 / 2 |_1^2 + x integral_1^2 y^(-2) d y \
  &= y^2 / 2 |_1^2 - x y^(-1) |^2_1 \
  &= (4 - 1) / 2 - x / (2 - 1) \
  &= 3 / 2 - x \
$

#line(stroke: .5pt)

$
  integral_0^2 3 / 2 - x d x
  &= 3 / 2integral_0^2 d x - integral_0^2 x d x \
  &= 3 / 2 x|_0^2 - x^2 / 2 |_0^2 \
  &= 3 / 2 (2-0) - (2^2 - 0) / 2 \
  &= 3 - 2 \
  &= 1 \
$

== Problem 3

Calculate the interated integrals:

+ $ integral_0^(pi / 6) integral_0^(pi / 2) (sin x + sin y) d y d x $

+ $ integral_1^3 integral_1^5 (ln y) / (x y) d y d x $

+ $ integral_0^1 integral_0^1 x y sqrt(x^2 + y^2) d y d x $

=== Answer
