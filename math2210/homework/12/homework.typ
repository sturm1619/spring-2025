// NOTE: Imports and templates
#import emoji: face
#set enum(numbering: "(a)")
// #show enum: set text(weight: "bold")
#set line(length: 100%)
#set rect(stroke: blue)

// NOTE: Document
//          Title
#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 9")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(
  size: 18pt,
  font: "Noto Serif",
  stroke: navy,
  fill: navy,
  datetime.today().display("[month repr:long] [day padding:none]th, [year]"),
)

#pagebreak()

// NOTE: Body

= Vector Fields

== Problem 1

#let F = math.bold("F")
#let i = math.bold("i")
#let j = math.bold("j")
#let k = math.bold("k")

Sketch each vector field $#F$.

+ $#F (x, y) = y #i + (x + y) #j$

+ $#F (x, y, z) = #i + #k$

=== Answer

Generated using the following code in GNU/Octave (MATLAB):

```MATLAB
% Defining coordinate system (covenant) and graph range
rangeX = -5:0.5:5;
rangeY = -5:0.5:5;
rangeZ = -5:1.25:5;

[covX2D, covY2D] = meshgrid(rangeX, rangeY);
[covX3D, covY3D, covZ3D] = meshgrid(rangeX, rangeY, rangeZ);

function _ = graphVectorField2D(covX, covY, X, Y, filepath)
    quiver(covX, covY, X, Y);
    hold on;

    % Draw reference axis
    line([-6,6], [0,0], 'Color', 'k', 'LineStyle', '--');
    line([0,0], [-6,6], 'Color', 'k', 'LineStyle', '--');
    saveas(gcf, filepath);
    hold off;
end

function _ = graphVectorField3D(covX, covY, covZ, X, Y, Z, filepath)
    quiver3(covX, covY, covZ, X, Y, Z);
    hold on;

    % Draw reference axis
    line([-6,6], [0,0], [0,0], 'Color', 'k', 'LineStyle', '--');
    line([0,0], [-6,6], [0,0], 'Color', 'k', 'LineStyle', '--');
    line([0,0], [0,0], [-6,6], 'Color', 'k', 'LineStyle', '--');
    saveas(gcf, filepath);
    hold off;
end

% F(x, y) = yi + (x+y)j
X = covY2D;
Y = covX2D + covY2D;
graphVectorField2D(covX2D, covY2D, X, Y, 'field_1.png');

%F(x, y, z) = i + k
X = ones(size(covX3D));
Y = zeros(size(covY3D));
Z = ones(size(covZ3D));
graphVectorField3D(covX3D, covY3D, covZ3D, X,Y,Z, 'field_2.png');
```
#line(stroke: 0.5pt)

#figure(
  image("field_1.png", width: 85%),
  caption: [$#F (x,y) = y #i + (x + y) #j$],
)

#figure(
  image("field_2.png", width: 85%),
  caption: [$#F (x,y,z) = #i + #k$],
)

#line()
#pagebreak()

== Problem 2

Find the gradient vector field of the following functions.

+ $f(s, t) = sqrt(2s + 3t)$

+ $f(x,y,z) = x^2 y e^(y / z)$

+ $f(x,y) = 1 / 2 (x^2 - y^2)$

=== Answer

+ $
    gradient f(s, t)
    = (diff sqrt(2s + 3t)) / (diff s) #i + (diff sqrt(2s + 3t)) / (diff t) #j
  $

  Let $u = 2s + 3t arrow.r.double.long (diff u)/(diff s) = 2,
  (diff u)/(diff t) = 3$. Then

  $
    gradient f(s, t)
    &= (diff sqrt(u)) / (diff u) dot (diff u) / (diff s) #i +
    (diff sqrt(u)) / (diff u) dot (diff u) / (diff t) #j \
    &= (diff sqrt(u)) / (diff u)((diff u) / (diff s) #i + (diff u) / (diff t) #j) \
    &= (1 / 2 u^(-1 / 2))(2 #i + 3 #j) \
    &= #rect()[$ 1 / sqrt(2s +3t) #i + 3/(2 sqrt(2s + 3t)) #j $] \
  $
  #line(stroke: 0.5pt)

+ $
    gradient f(x,y,z)
    &= diff(x^2 y e^(y / z)) / (diff x) #i
    + diff(x^2 y e^(y / z)) / (diff y) #j
    + diff(x^2 y e^(y / z)) / (diff z) #k \
    &= (y e^(y / z) (diff x^2 ) / (diff x)) #i
    + (x^2 diff(y e^(y / z)) / (diff y)) #j
    + (x^2 y (diff e^(y / z)) / (diff z)) #k \
  $
  Let $u = e^(y)$, $(diff u)/(diff y) = e^y$,
  $(diff u^(1/z))/(diff u) = 1/z e^(y/z-y)$. Then

  $
    gradient f(x,y,z) &= 2x y e^(y / z) #i
    + x^2 (e^(y / z) + y (diff (e^y)^(1 / z)) / (diff y)) #j
    + x^2 y (diff e^(y / z)) / (diff z) #k \

    &= 2x y e^(y / z) #i
    + x^2 (e^(y / z) + y (diff u^(1 / z)) / (diff u) dot (diff u) / (diff y)) #j
    + x^2 y (diff e^(y/z)) / (diff z) #k \

    &= 2x y e^(y / z) #i
    + x^2 (e^(y / z) + y dot 1/z e^(y/z-y) dot e^y) #j
    + x^2 y (diff e^(y/z)) / (diff z) #k \

    &= 2x y e^(y / z) #i
    + x^2 (e^(y / z) + y dot 1/z e^(y/z) dot e^y/e^y) #j
    + x^2 y (diff e^(y/z)) / (diff z) #k \

    &= 2x y e^(y / z) #i
    + x^2 e^(y/z) (1 + y/z ) #j
    + x^2 y (diff e^(y/z)) / (diff z) #k \
  $

  Let $v = e^(1/z)$, $(diff v)/(diff z) = -1/z^2 e^(1/z) $,
  $(diff v^y)/(diff v) = y e^(y/z) dot e^(-1/z)$. Then

  $
    &= 2x y e^(y / z) #i + x^2 e^(y/z) (1 + y/z ) #j
    + x^2 y (diff (e^(1 / z))^y) / (diff z) #k \

    &= 2x y e^(y / z) #i + x^2 e^(y/z) (1 + y/z ) #j
    + (x^2 y (diff v^y) / (diff v) dot (diff v) / (diff z)) #k \

    &= 2x y e^(y / z) #i + x^2 e^(y/z) (1 + y/z ) #j
    + (x^2 y dot y e^(y/z)/e^(1/z) dot (- (e^(1/z))/z^2)) #k \

    &= #rect()[$
        2x y e^(y / z) #i + x^2 e^(y/z) (1 + y/z ) #j - (x^2 y^2)/z^2 e^(y/z) #k
        $]
  $
  #line(stroke: 0.5pt)

+ $
    gradient f(x,y)
    &= 1 / 2 ((diff (x^2 - y^2))/(diff x) #i + (diff (x^2 - y^2))/(diff y) #j) \
    &= 1 / 2 (2x #i - 2y #j) \
    &= #rect()[$ x #i - y #j $]
  $

#line()

== Problem 3

Plot the gradient vector field of

$ f(x, y) = x^2 - y $

together with a contour map of $f$. Explain how they are related.

=== Answer

The gradient vector field of $f$ is given by $gradient f = angle.l 2x, -1
angle.r$. The following graph was generated using the following MATLAB script:

```MATLAB
% Defining coordinate system (covenant) and graph range
rangeDense = -5:0.5:5;
[covX2D, covY2D] = meshgrid(rangeDense, rangeDense);

function _ = graphVectorField2D_Contour(covX, covY, f, X, Y, filepath)
    contour(covX, covY, f, -4:1:6, 'LineColor', 'r');
    hold on;
    quiver(covX, covY, X, Y);

    % Draw reference axis
    line([-6,6], [0,0], 'Color', 'k', 'LineStyle', '--');
    line([0,0], [-6,6], 'Color', 'k', 'LineStyle', '--');
    saveas(gcf, filepath); hold off;
end

% f(x,y) = x^2 - y
f = covX2D.^2 - covY2D;

% F(x, y) = 2xi - yj
X = 2 * covX2D;
Y = - ones(size(covY2D));
graphVectorField2D_Contour(
    covX2D, covY2D,
    f, X, Y, 'field_3.png'
    );
```

#figure(
  image("field_3.png"),
  caption: [$ gradient f(x,y)$ and contour map of $f(x,y)$],
)

#pagebreak()

= Curl and Divergence

== Problem 4

Compute the curl and divergence of each vector field.

+ $#F (x,y,z) = x^3 y z^2 #j + y^4 z^3 #k$

+ $#F (x,y,z) = ln(2y + 3z) #i + ln(x + 3z) #j + ln(x + 2y) #k$

=== Answer

A more formal derivation of the curl of a field $#F: RR^3 arrow RR^3$ is

+ $
    gradient times #F &=
    (z^3 (diff y^4)/(diff y) - y^4 (diff z^3)/(diff z)) #i
    - (y^4 z^3 (diff 1)/(diff x) - (diff 0)/(diff z)) #j +
    + (y z^2 (diff x^3)/(diff x) - (diff 0)/(diff y))#k \

    &= (4z^3 y^3 - 3y^4 z^2) #i + (2 y z^2 x^2)#k \

    &= #rect()[$ y^3 z^2(4z - 3y^3 ) #i + (2 y z^2 x^2)#k $] \
  $
  #align(center, line(stroke: .5pt, length: 75%))

  $
    gradient dot #F &= x^3 z^2 (diff y)/(diff y) + y^4 (diff z^3)/(diff z) \
    &= #rect()[$ x^3 z^2 + 3 y^4 z^2 $]
  $

  #line(stroke: .5pt)

+ $
    gradient times #F \
    = ((diff ln(x + 2y))/(diff y) - (diff ln(x + 3z))/(diff z))#i
    + ((diff ln(x + 2y))/(diff x) - (diff ln(2y + 3z))/(diff z))#j
    + ((diff ln(x + 3z))/(diff x) - (diff ln(x + 2y))/(diff y))#k \

    = #rect()[$ (2/(x + 2y) - 3/(x + 3z))#i
    + (1/(x + 2y) - 3/(2y + 3z))#j
    + (1/(x + 3z) - 2/(x + 2y))#k $]
  $
  #align(center, line(stroke: .5pt, length: 75%))

  $
    gradient dot #F \
    = (diff ln(2y + 3z))/(diff x)#i + (diff ln(x + 3z))/(diff y)#j
    + (diff ln(x + 2y))/(diff z)#k \

    = #rect()[$ 0 $]
  $

#line()

== Problem 5

Let $f$ be a scalar field and $#F$ a vector field. State whether each
expression is meaningful. If not, briefly explain why. If so, state whether the
expression is a scalar field or a vector field.

+ $"curl" f$

+ $gradient f$

+ $"div" #F$

+ $"curl" gradient f$

+ $gradient #F$

+ $gradient ("div" #F)$

+ $"div" (gradient f)$

+ $gradient ("div" f)$

+ $gradient f times ("div" #F)$

+ $"div"("curl"(gradient f))$

=== Answer

+ *Meaningless*. Scalar fields don't have curl defined.

+ Meaningful. The gradient of a scalar field is a vector field.

+ Meaningful. The divergence of a vector field is also vector field.

+ Meaningful. Since $gradient f$ is a vector field, its curl is a vector field.

+ *Meaningless*. Vector fields don't have gradient.

+ Meaningful. Since $"div" #F$ is a scalar field, its gradient is a vector
  field.

+ Meaningful. Since $gradient f$ is a vector field, the divergence is a scalar
  field.

+ *Meaningless*. Scalar fields don't have divergence defined: therefore, there
  is no such thing as the gradient of the divergence of a scalar field.

+ Meaningful. Since $"curl" #F$ is a vector field, the curl of the curl is also
  a vector field.

+ *Meaningless*. Scalar fields do not have divergence defined: there is not
  such thing as the divergence of the divergence.

+ *Meaningless*. Since $"div" #F$ is a scalar field, it can't be an operand in
  a cross product.

+ Meaningful. Since $gradient f$ is a vector field, it has curl. Since $"curl"
  (gradient f)$ is a vector, its divergence is a scalar field.

#line()

== Problem 6

Determine whether or not the vector field is conservative.

+ $#F (x,y,z) = x y z^4 #i + x^2 z^4 #j + 4x^2 y z^3 #k$

+ $#F (x,y,z) = #i + sin z #j + y cos z  #k$

=== Answer

+ $
    gradient times #F &=
    (4x^2 z^3 (diff y)/(diff y) - x^2 (diff z^4)/(diff z)) #i
    - (4y z^3 (diff x^2)/(diff x) - x y (diff z^4)/(diff z)) #j
    + (z^4 (diff x^2)/(diff x) - x z^4(diff y)/(diff y)) #k \

    &= (4x^2 z^3 - 4 x^2 z^3) #i - (8x y z^3 - 4 x y z^3) #j
    + (2 x z^4 - x z^4) #k \

    &= 0 #i - 4x y z^3 #j + x z^4 #k != bold(0)
  $

  #align(center, rect()[$therefore #F$ is not conservative.])
  #line(stroke: .5pt)

+ $
    gradient times #F &=
    (cos z (diff y)/(diff y) - (diff sin z)/(diff z)) #i
    - (y cos z (diff 1)/(diff x) - (diff 1)/(diff z)) #j
    + (sin z (diff 1)/(diff x) - (diff 1)/(diff y)) #k \

    &= (cos z - cos z) #i - 0#j + 0#k \
    &= bold(0)
  $
  #align(center, rect()[$therefore #F$ is conservative.])

#line()

== Problem 7

#let G = math.bold("G")

Verify the identities where $f(x,y,z)$ is a scalar field and $#F (x,y,z)$ is a
vector field, and where
$
  (f #F)(x,y,z) = f(x, y, z) #F (x, y, z) \
  (#F dot #G)(x,y,z) = #F (x,y,z) dot #G (x, y, z) \
  (#F times #G)(x,y,z) = #F (x,y,z) times #G (x, y, z) \
$

+ $"curl"(#F + #G) = "curl" #F + "curl" #G$

+ $"curl"(f #F) = f "curl" #F + (gradient f) times #F$

=== Answer

+ Let $#F = f_1#i + f_2#j + f_3#k$, and $#G = g_1#i + g_2#j + g_3#k$.
  #footnote()[The $f_i$ are not related to the $f(x,y,z)$ given in the problem
  presentation.] Note that

  $
    gradient times #F =
    ((diff f_3)/(diff y) - (diff f_2)/(diff z))#i - ((diff f_3)/(diff x) -
    (diff f_1)/(diff z))#j + ((diff f_2)/(diff x) - (diff f_1)/(diff y))#k \

    gradient times #G = ((diff g_3)/(diff y) - (diff g_2)/(diff z))#i -
    ((diff g_3)/(diff x) - (diff g_1)/(diff z))#j + ((diff g_2)/(diff x) -
    (diff g_1)/(diff y))#k
  $

  Then:
  $
    gradient times (#F + #G)
    = gradient times (f_1#i + f_2#j + f_3#k + g_1#i + g_2#j + g_3#k) \
    = gradient times ((f_1 + g_1)#i + (f_2 + g_2)#j + (f_3 + g_3)#k) \
    = (diff(f_3 + g_3)/(diff y) - diff(f_2 + g_2)/(diff z))#i
    - (diff(f_3 + g_3)/(diff x) - diff(f_1 + g_1)/(diff z))#j
    + (diff(f_2 + g_2)/(diff x) - diff(f_1 + g_1)/(diff y))#k \
  $
  By the additivity of differetiation (sum rule of differentiation):
  $
    = ((diff f_3)/(diff y) + (diff g_3)/(diff y)
         - (diff f_2)/(diff z) - (diff  g_2)/(diff z))#i
    - ((diff f_3)/(diff x) + (diff g_3)/(diff x)
        - (diff f_1)/(diff z) - (diff g_1)/(diff z))#j
    + ((diff f_2)/(diff x) + (diff g_2)/(diff x)
          - (diff f_1)/(diff y) - (diff g_1)/(diff y))#k \
  $

  By commutativity of vector addition:
  $
    = ((diff f_3)/(diff y) - (diff f_2)/(diff z)
        + (diff g_3)/(diff y) - (diff  g_2)/(diff z))#i
    - ((diff f_3)/(diff x) - (diff f_1)/(diff z)
          + (diff g_3)/(diff x) - (diff g_1)/(diff z))#j
    + ((diff f_2)/(diff x) - (diff f_1)/(diff y)
          + (diff g_2)/(diff x) - (diff g_1)/(diff y))#k \
  $
  By distributivity of scalar multiplication over vector addition:
  $
    = ((diff f_3)/(diff y) - (diff f_2)/(diff z))#i
        + ((diff g_3)/(diff y) - (diff  g_2)/(diff z))#i
    - ((diff f_3)/(diff x) - (diff f_1)/(diff z))#j
          + ((diff g_3)/(diff x) - (diff g_1)/(diff z))#j
    + ((diff f_2)/(diff x) - (diff f_1)/(diff y))#k
          + ((diff g_2)/(diff x) - (diff g_1)/(diff y))#k \
  $
  By associativity of vector addition:
  $
    = [((diff f_3)/(diff y) - (diff f_2)/(diff z))#i
    - ((diff f_3)/(diff x) - (diff f_1)/(diff z))#j
    + ((diff f_2)/(diff x) - (diff f_1)/(diff y))#k] \
    + [((diff g_3)/(diff y) - (diff  g_2)/(diff z))#i
    - ((diff g_3)/(diff x) - (diff g_1)/(diff z))#j
    + ((diff g_2)/(diff x) - (diff g_1)/(diff y))#k] \
  $
  As given by the identities at the beginning.
  $
    = (gradient times #F) + (gradient times #G)
  $

  #line(stroke: 0.5pt)

+ Let $#F (x,y,z) = A#i + B#j + C#k$ and $gradient f = gradient f = f_x#i +
  f_y#j + f_z#k$. Note that

  $
    #linebreak()
    f #F = f A#i + f B#i + f C#k \
    #linebreak()

    f (gradient times #F)
    = f[((diff C)/(diff y) - (diff B)/(diff z))#i
    - ((diff C)/(diff x) - (diff A)/(diff z))#j
    + ((diff B)/(diff x) - (diff A)/(diff y))#j] \
    #linebreak()

    (gradient f) times #F = (C f_y - B f_z) #i - (C f_x - A f_z) #j
    + (B f_x - A f_y) #k
  $

  It follows that

  $
    gradient times (f #F) = gradient times (f A#i + f B#j + f C#k) \
    #linebreak()

    = ((diff f C)/(diff y) - (diff f B)/(diff z))#i
    - ((diff f C)/(diff x) - (diff f A)/(diff z))#j
    - ((diff f B)/(diff x) - (diff f A)/(diff y))#k \
  $
  By the product rule of differentiation:
  $
    = [f (diff C)/(diff y) + C f_y - f (diff B)/(diff z) - B f_x] #i
    - [f (diff C)/(diff x) + C f_x - f (diff A)/(diff z) - A f_z] #j
    + [f (diff B)/(diff x) + B f_x - f (diff A)/(diff y) - A f_y] #j \
  $
  By associativity and commutativity of vector addition
  $
    = [(f (diff C)/(diff y) - f (diff B)/(diff z)) + (C f_y - B f_z)] #i
    - [(f (diff C)/(diff x) - f (diff A)/(diff z)) + (C f_x - A f_z)] #j
    + [(f (diff B)/(diff x) - f (diff A)/(diff y)) + (B f_x - A f_y)] #k \
  $
  By distributivity of vector-scalar multiplication:
  $
    = [f((diff C)/(diff y) - (diff B)/(diff z)) + (C f_y - B f_z)] #i
    - [f((diff C)/(diff x) - (diff A)/(diff z)) + (C f_x - A f_z)] #j
    + [f((diff B)/(diff x) - (diff A)/(diff y)) + (B f_x - A f_y)] #k \
    #linebreak()

    = f((diff C)/(diff y) - (diff B)/(diff z))#i + (C f_y - B f_z) #i
    - f((diff C)/(diff x) - (diff A)/(diff z)) #j + (C f_x - A f_z) #j
    + f((diff B)/(diff x) - (diff A)/(diff y)) #k + (B f_x - A f_y) #k \
    #linebreak()

    = f[((diff C)/(diff y) - (diff B)/(diff z))#i
        - ((diff C)/(diff x) - (diff A)/(diff z)) #j
        + ((diff A)/(diff y) - (diff B)/(diff z)) #k]
      + [(C f_y - B f_z) #i + (C f_x - A f_z) #j + (A f_y - B f_x) #k] \
    #linebreak()
  $
  As given by the identities at the beggining.
  $
    = f(gradient times #F) + (gradient f) times #F
  $


#pagebreak()
= Line Integrals

== Problem 8

Evaluate the line integral, where $C$ is the given curve.

+ $integral_C x e^y d s$, where $C$ is the line segment from $(2,0)$ to $(5,4)$.

+ $integral_C x^2 d x + y^2 d y$, where $C$ is the arc of the circle $x^2 + y^2
= 4$ from $(2,0)$ to $(0,2)$.

=== Answer

#let r = math.bold("r")

+ Note that
  $
    C &= #r (t) \
      &= angle.l (5-2)t + 2, (4-0)t angle.r \
      &= angle.l 3t + 2, 4t angle.r
  $
  is the equation for the path, and the bounds correspond to $x in [2,5], t =
  (x-2)/3 arrow.r.l.double.long t in [0, 1]$. Note that the arclength $|#r '(t)|
  = |angle.l 3, 4 angle.r| = 5$. We can rewrite the given integral as

  $
    integral_C x e^y d s &= integral_0^1 (3t+2)e^(4t) dot 5 d t \
    &= 5 integral_0^1 3t e^(4t) + 2e^(4t) d t \
    &= 15 integral_0^1 t e^(4t) d t + 10 integral_0^1e^(4t) d t \
  $

  Let

  $
    u = t arrow.r.double.long d u &= d t \
    d v = e^(4t) d t arrow.r.long.double v &= e^(4t) / 4 \
    a = 4t arrow.r.double.long (d a) / 4 &= d t
  $

  Then

  $
    10 integral_0^1 e^(4t) d t + 15 integral_0^1 t e^(4t) d t
    &= 10 integral_0^1 e^(4t) d t
    + 15(e^(4) / 4 - 1 / 4 integral_0^1 e^(4t) d t) \
    &= 10 integral_0^1 e^(4t) d t
    + 15 / 4 e^4 - 15 / 4 integral_0^1 e^(4t) d t \
    &= 5(2-3 / 4) integral_0^1 e^(4t) d t + 15 / 4 e^4 \
    &= 25 / 4 integral_0^1 e^(4t) d t + 15 / 4 e^4 \
    &= 25 / 16 (e^4 - 1) + 15 / 4 e^4 \
    &= 5 / 4 (5 / 4 e^4 + 3 e^4- 5 / 4) \
  $
  $
    &= 5 / 4 ((5 / 4 + 3) e^4 - 5 / 4) \
    &= 5 / 4 (17 / 4 e^4 - 5 / 4) \
    &= #rect()[$ (85e^4) / 16 - 25 / 16 $] \
  $

  #line(stroke: 0.5pt)

+ Note that
  $
    C &= #r (t) \
      &= 2 cos t #i + 2 sin t #j
  $
  with bounds $t in [0, pi/2]$. This implies
  $
    x(t) = 2 cos t arrow.r.l.double.long x'(t) = - 2 sin t \
    y(t) = 2 sin t arrow.r.l.double.long x'(t) = 2 cos t \
  $

  Therefore,
  $
    integral_C x^2 d x + y^2 d y
    &= integral_0^(pi / 2) - 8 cos^2 2 sin t + 8 sin^2 t 2 cos t d t \
    &= 8 (integral_0^(pi / 2) sin^2 t cos t d t - integral_0^(pi / 2)
      cos^2 t sin t d t) \
  $
  Let $u = cos t arrow.r.double.long d u - sin t d t$ and $v = sin t
  arrow.r.double.long d v = cos t d t$. Then

  $
    8 (integral_0^(pi / 2) sin^2 t cos t d t
      - integral_0^(pi / 2) cos^2 t sin t d t)
    &= 8 (integral_0^1 v^2 d v + integral_1^0 u^2 d u) \
    &= 8 (1 / 3 - 1 / 3) \
    &= #rect()[$ 0 $]
  $

#line()

= Problem 9

Compute

$ integral_C (y+z) d x + (x + z) d y + (x + y) d z $

where $C$ consists of the line segment from $(0,0,0)$ to $(1,0,1)$ followed by
the line segment from $(1,0,1)$ to $(0,1,2)$.

=== Answer

Let $#r _1 (t)$ and $#r _2 (s)$ be the given lines, respectively. Then

$
  #r _1 (t) &= t#i + t#k \
  #r _2 (s) &= (1 - s)#i + s#j + (s + 1)#k
$

where $t in [0,1]$ and $s in [0,1]$. Let that:

$
  x_(#r _1) = t, quad y_(#r _1) = 0, quad z_(#r _1) = t \
  x'_(#r _1) = 1, quad y'_(#r _1) = 0, quad z'_(#r _1) = 1 \
$

be the reparametrization for $x,y,z$ to $#r _1$ and their derivatives,
respectively. Similarly, let

$
  x_(#r _2) = 1 - s, quad y_(#r _2) = s, quad z_(#r _2) = s + 1 \
  x'_(#r _2) = - 1, quad y_(#r _2) = 1, quad z_(#r _2) = 1 \
$

be the reparametrization for $x,y,z$ to $#r _2$ and their derivatives. Then

$
  integral_C (y+z) d x + (x + z) d y + (x + y) d z \
  = integral_0^1 t d t + 2t (0) d t + t d t
  + integral_0^1 (2s + 1) (-1) d s + 2 d s + d s \
  = 2 integral_0^1 t d t - 2 integral_0^1 s d s + 2 integral_0^1 d s \
  = t^2|_0^1 - s^2|_0^1 + 2s|_0^1 \
  = (1-0) - (0-1) + 2(1-0) \
  = 1 - 1 + 2 \
  = #rect()[$ 2 $]
$

#line()

== Problem 10

#let r = math.bold("r")

For the following functions, compute the line integral $integral_C #F dot d
#r$ where $C$ is given by the vector function $#r (t)$.

+ $#F (x,y,z) = (x+y^2) #i + x z #j + (y + z) #k, quad #r (t) = t^2 #i + t^3 #j
  - 2t #k, quad 0 <= t <= 2$

+ $#F (x,y,z) = x #i + y #j + x y #k, quad #r (t) = cos t #i + sin t #j
  + t #k, quad 0 <= t <= pi$

== Answer

+ Note that

  $
    #r '(t) = 2t#i + 3t^2#j - 2#k \
    #F (#r (t)) = (t^2 + t^6)#i - 2t^3 #j + (t^3 - 2t)#k
  $

  Recall that $d #r = #r '(t) d t$.

  Therefore:

  $
    integral_C #F dot d #r
    &= integral_0^2 ((t^2 + t^6)#i - 2t^3 #j + (t^3 - 2t)#k) dot
      (2t#i + 3t^2#j - 2#k) d t \
    &= integral_0^2 (t^2 + t^6)(2t) + (- 2t^3)(3t^2) + (t^3 - 2t)(-2) d t \
    &= integral_0^2 2(t^3 + t^7) - 6t^5 - 2(t^3 - 2t) d t \
    &= 2 integral_0^2 t^3 + t^7 d t - 6 integral_0^2 t^5 d t
        - 2 integral_0^2 (t^3 - 2t) d t \
    &= 2 integral_0^2 t^3 d t + 2 integral_0^2 t^7 d t - 6 integral_0^2 t^5 d t
        - 2 integral_0^2 t^3 d t + 4 integral_0^2 t d t \
    &= 2 integral_0^2 t^7 d t - 6 integral_0^2 t^5 d t + (2 integral_0^2 t^3 d t
        - 2 integral_0^2 t^3 d t) + 4 integral_0^2 t d t \
    &= 2 integral_0^2 t^7 d t - 6 integral_0^2 t^5 d t + 4 integral_0^2 t d t \
    &= 1/4 t^8|_0^2 - t^6|_0^2 + 2 t^2|_0^2 \
    &= 1/4 2^8 - 2^6 + 8 \
    &= 64 - 64 + 8 \
    &= #rect()[$ 8 $] \
  $

  #line(stroke: 0.5pt)

+ Note that
  $
    #r '(t) = - sin(t)#i + cos(t)#j + 1#k \
    #F (#r (t)) = cos(t)#i + sin(t)#j + sin(t)cos(t)#k
  $

  Therefore:
  $
    integral_C #F dot d #r
    &= integral_0^pi (cos(t)#i + sin(t)#j + sin(t)cos(t)#k)
        dot (- sin(t)#i + cos(t)#j + 1#k) d t \
    &= integral_0^pi -sin(t)cos(t) + cos(t)sin(t) + sin(t)cos(t) d t \
    &= integral_0^pi sin(t)cos(t) d t \
  $
  Let $u = sin(t)$, $d u = cos(t) d t$. Therefore
  $
    integral_0^pi sin(t)cos(t) d t &= integral_0^0 u d u \
    &= 1 / 2 u^2|_0^0 \
    &= #rect()[$ 0 $] \
  $
