// NOTE: Imports and templates
#import emoji: face
#set enum(numbering: "(a)")
// #show enum: set text(weight: "bold")
#set line(length: 100%)

// NOTE: Document
//          Title
#text(size: 46pt, font: "Noto Serif", stroke: navy, fill: navy, "Homework 9")

#text(size: 24pt, font: "Noto Serif", stroke: navy, fill: navy, "by Carlos Rubio")

#text(
  size: 18pt,
  font: "Noto Serif",
  stroke: navy,
  fill: navy,
  datetime.today().display("[month repr:long] [day]th, [year]"),
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
    &= (diff sqrt(2s + 3t)) / (diff s) + (diff sqrt(2s + 3t)) / (diff t)
  $

  Let $u = 2s + 3t arrow.r.double.long (diff u)/(diff s) = 2,
  (diff u)/(diff t) = 3$. Then

  $
    gradient f(s, t)
    &= (diff sqrt(u)) / (diff u) dot (diff u) / (diff s) +
    (diff sqrt(u)) / (diff u) dot (diff u) / (diff t) \
    &= (diff sqrt(u)) / (diff u)((diff u) / (diff s) + (diff u) / (diff t)) \
    &= (1 / 2 u^(-1 / 2))(2 + 3) \
    &= #rect()[$ 5 / (2 sqrt(2s +3t)) $] \
  $

+ $
    gradient f(x,y,z)
    &= diff(x^2 y e^(y / z)) / (diff x) + diff(x^2 y e^(y / z)) / (diff y)
    + diff(x^2 y e^(y / z)) / (diff z) \
    &= (y e^(y / z) (diff x^2 ) / (diff x))
    + (x^2 diff(y e^(y / z)) / (diff y))
    + (x^2 y (diff e^(y / z)) / (diff z)) \
  $
  Let $u = $
  $
    &= (y e^(y / z) (diff x^2 ) / (diff x))
    + (x^2 diff(y e^(y / z)) / (diff y))
    + (x^2 y (diff e^(y / z)) / (diff z)) \
  $

+ $f(x,y) = 1 / 2 (x^2 - y^2)$


#line()

== Problem 3

Plot the gradient vector field of

$ f(x, y) = x^2 - y $

together with a contour map of $f$. Explain how they are related.

=== Answer

#pagebreak()

= Curl and Divergence

== Problem 4

Compute the curl and divergence of each vector field.

+ $#F (x,y,z) = x^3 y z^2 #j + y^4 z^3 #k$

+ $#F (x,y,z) = ln(2y + 3z) #i + ln(x + 3z) #j + ln(x + 2y) #k$

=== Answer

#line()

== Problem 5

=== Answer

#line()
