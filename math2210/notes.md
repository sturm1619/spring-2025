---
author: Carlos Rubio
title: Notes
header-includes:
  - \usepackage{amsmath}
---

# Definitions

Given points $P_1, P_2$, the displacement vector is 

$$\overline{P_1 P_2} = \langle x_2 - x_1, y_2 - y_1, z_2 - z_1 \rangle$$

## Dot product

$$\begin{aligned}
\hat{a} \cdot \hat{b} &= |\hat{a}| |\hat{b}| \cos \theta \\
                      &= a_1 b_1 + a_2 b_2 + a_3 b_3
\end{aligned}$$

$$\hat{a} \cdot \hat{b} \iff \hat{a} \perp \hat{b}$$

## Projections

The **scalar projection** or **component** of a vector $\hat{b}$ over another
vector $\hat{a}$ is equal to the quotient of dot product of the vectors and
the norm of $\hat{a}$. Essentially, we are stripping the $|\hat{a}|$ factor
from the dot product. This is equivalent to finding the norm of the vector
projection.

$$\begin{aligned}
\text{comp}_{\hat{a}} \hat{b} &= \frac{\hat{a} \cdot \hat{b}}{|\hat{a}|} \\
                      &= |\hat{b}| \cos \theta
\end{aligned}$$

The **vector projection** of a vector $\hat{b}$ over another vector $\hat{a}$
is equal to the product of *scalar projection* and the unit vector in the
direction of $\hat{a}$. We can think about vector projection as the shadow
casted by a vector into a vector space.

$$\begin{aligned}
\text{proj}_a \hat{b} 
&= \text{comp}_{\hat{a}} \hat{b} \times \frac{\hat{a}}{|\hat{a}|} \\
&= \frac{(\hat{a} \cdot \hat{b})}{|\hat{a}|^2}\hat{a} \\
&=  \frac{|\hat{b}|\cos \theta}{|\hat{a}|} \hat{a}
\end{aligned}$$

## Cross Product

$$
\hat{a} \times \hat{b} =
\langle a_2 b_3 - a_3 + b_2, a_3 b_1 - a_1 b_3, a_1 b_2 - a_2 b_1 \rangle
$$

$\hat{a} \times \hat{b} = -\hat{b} \times \hat{a}$. The motion of the cross
product is anti-clockwise, and follows the right-hand rule.

$$|\hat{a} \times \hat{b}| = (|\hat{a}||\hat{b}| \sin \theta)$$

$$\begin{aligned}
|\hat{a} \times \hat{b}|^2  &= |\hat{a}||\hat{b}| - (\hat{a} \cdot \hat{b})^2 \\
                            &= |\hat{a}||\hat{b}| -
                                |\hat{a}|^2 |\hat{b}|^2 \cos^2 \theta \\
\end{aligned}$$
