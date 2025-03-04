---
title: Homework 2
author: Carlos Rubio
---

# Section 1.4

**9 Exercises attempted**

## 9
Find the inverse of 

$$\begin{bmatrix}
\frac{1}{2} (e^x + e^{-x}) & \frac{1}{2} (e^x - e^{-x}) \\
\frac{1}{2} (e^x - e^{-x}) & \frac{1}{2} (e^x + e^{-x})
\end{bmatrix}$$

### Answer

Let $A$ be the given matrix. Then

$$\begin{aligned}
det(A)  &= \left[\frac{1}{2} (e^x + e^{-x})\right]^2 -
              \left[\frac{1}{2} (e^x - e^{-x})\right]^2 \\
        &= \frac{1}{4}\left[(e^x+e^{-x} )^2 - (e^x - e^{-x})^2\right] \\
        &= \frac{1}{4}\left[(e^{2x}+2+e^{-2x} ) -
              (e^{2x} - 2 +e^{-2x})\right] \\
        &= \frac{1}{4}\left(e^{2x}+2+e^{-2x} - e^{2x} + 2 -e^{-2x}\right) \\
        &= \frac{1}{4}\left(4\right) \\
        &= 1 \\
\end{aligned}$$

And given $A^{-1} = \frac{1}{det(A)} \begin{bmatrix} d & - b \\
-c & a \end{bmatrix}$, then

$$\begin{aligned}
A^{-1}  &= (1) \begin{bmatrix} 
      \frac{1}{2} (e^x + e^{-x}) & -\frac{1}{2} (e^x - e^{-x}) \\
      -\frac{1}{2} (e^x - e^{-x}) & \frac{1}{2} (e^x + e^{-x})
         \end{bmatrix} \\
\end{aligned}$$

## 11

Verify that $(A^T)^{-1} = (A^{-1})^T$ for $A = \begin{bmatrix} 2 & -3 \\
4 & 4 \end{bmatrix}$

### Answer

$$A^T = \begin{bmatrix} 2 & 4 \\ -3 & 4 \end{bmatrix}$$

and

$$A^{-1} = \frac{1}{20} \begin{bmatrix} 4 & 3 \\ -4 & 2 \end{bmatrix}$$

Then

$$\begin{aligned}
(A^T)^{-1}  &= \begin{bmatrix} 2 & 4 \\ -3 & 4 \end{bmatrix}^{-1} \\
            &= \frac{1}{20} \begin{bmatrix} 4 & 3 \\ -4 & 2 \end{bmatrix} \\
\end{aligned}
$$

And

$$\begin{aligned}
(A^{-1})^T &= \frac{1}{20} \begin{bmatrix} 4 & -3 \\ 4 & 2 \end{bmatrix}^T \\
           &= \frac{1}{20} \begin{bmatrix} 4 & 3 \\ -4 & 2 \end{bmatrix} \\
\end{aligned}$$

## 13

Verify that the equation $(ABC)^{-1} = C^{-1}B^{-1}A^{-1}$ for 
$A = \begin{bmatrix} 2 & -3 \\ 4 & 4 \end{bmatrix}$, $B = \begin{bmatrix} 3 & 1
\\ 5 & 2 \end{bmatrix}$, $C = \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix}$

### Answer

$$\begin{aligned}
(ABC)^{-1} &= \left(\begin{bmatrix} 2 & -3 \\ 4 & 4 \end{bmatrix} \begin{bmatrix}
    3 & 1 \\ 5 & 2 \end{bmatrix} \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix}
    \right)^{-1} \\
           &= \left(\begin{bmatrix} 2(3)+(-3)5 & 2(1)+(-3)2 \\ 4(3)+4(5) & 4(1)+4(2)
                    \end{bmatrix}
                \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix} \right)^{-1} \\
           &= \left(\begin{bmatrix} 6-15 & 2-6 \\ 12+20 & 4+8 \end{bmatrix}
                \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix} \right)^{-1} \\
           &= \left(\begin{bmatrix} -9 & -4 \\ 32 & 12 \end{bmatrix}
                \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix} \right)^{-1} \\
           &= \left(\begin{bmatrix} -18 & -8 \\ 96 & 36 \end{bmatrix} \right)
                ^{-1} \\
           &= \frac{1}{120}
                \begin{bmatrix} 36 & 8 \\ -96 & -18 \end{bmatrix}
                 \\
\end{aligned}$$

$$\begin{aligned}
C^{-1}B^{-1}A^{-1} &=
            \begin{bmatrix} 2 & 0 \\ 0 & 3 \end{bmatrix}^{-1}
            \begin{bmatrix} 3 & 1 \\ 5 & 2 \end{bmatrix}^{-1}
            \begin{bmatrix} 2 & -3 \\ 4 & 4 \end{bmatrix}^{-1}
                        \\
                &= \frac{1}{6} \left(\frac{1}{20}\right)
            \begin{bmatrix} 3 & 0 \\ 0 & 2 \end{bmatrix}
            \begin{bmatrix} 2 & -1 \\ -5 & 3 \end{bmatrix}
            \begin{bmatrix} 4 & 3 \\ -4 & 2 \end{bmatrix}
                        \\
                &= \frac{1}{120}
            \begin{bmatrix} 6 & -3 \\ -10 & 6 \end{bmatrix}
            \begin{bmatrix} 4 & 3 \\ -4 & 2 \end{bmatrix}
                        \\
           &= \frac{1}{120}
                \begin{bmatrix} 36 & 8 \\ -96 & -18 \end{bmatrix}
                 \\
\end{aligned}$$

## 19

Given $A = \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}$, compute the following

a) $A^3$

b) $A^{-3}$

c) $A^2 - 2A - I$

### Answer

a)
$$\begin{aligned}
A^3 &= \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}
        \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}
        \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix} \\
    &= \begin{bmatrix} 11 & 4 \\ 8 & 3 \end{bmatrix}
        \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix} \\
    &= \begin{bmatrix} 41 & 15 \\ 30 & 11 \end{bmatrix}
\end{aligned}$$

b)
$$\begin{aligned}
A^{-3} &= (A^3)^{-1} \\
       &= \begin{bmatrix} 41 & 15 \\ 30 & 11 \end{bmatrix}^{-1} \\
       &= \frac{1}{(41)(11)-(15)(30)}
            \begin{bmatrix} 11 & -15 \\ -30 & 41 \end{bmatrix} \\
       &= \begin{bmatrix} 11 & -15 \\ -30 & 41 \end{bmatrix}
\end{aligned}$$

c) 

$$\begin{aligned}
A^2 - 2A - I &= \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}
                    \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}
                - 2\begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}
                - \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \\
             &= \begin{bmatrix} 11 & 4 \\ 8 & 3 \end{bmatrix}
                - \begin{bmatrix} 6 & 2 \\ 4 & 2 \end{bmatrix}
                - \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \\
             &= \begin{bmatrix} 5 & 2 \\ 4 & 1 \end{bmatrix}
                - \begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix} \\
             &= \begin{bmatrix} 4 & 2 \\ 4 & 0 \end{bmatrix}
\end{aligned} $$

## 23

Given $A = \begin{bmatrix} a & b \\ c & d \end{bmatrix}$ and
$B = \begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}$, find all
the values of $A$ for which $A$ and $B$ commute.

### Answer

$$\begin{aligned}
AB &= BA \\
\begin{bmatrix} a & b \\ c & d \end{bmatrix}
\begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix} &=
\begin{bmatrix} 0 & 1 \\ 0 & 0 \end{bmatrix}
\begin{bmatrix} a & b \\ c & d \end{bmatrix} \\
\begin{bmatrix} 0 & a \\ 0 & c \end{bmatrix} &=
\begin{bmatrix} c & d \\ 0 & 0 \end{bmatrix} \\
\end{aligned}$$

Which implies that $a=d$, $b \in R$ and $c=0$. 

## 29

If a polynomial $p(x)$ can be factord as a product of lower degree polynomials,
say

$$p(x) = p_1(x)p_2(x)$$

and if $A$ is a square matrix, then it can be proved that

$$p(A) = p_1(A)p_2(A)$$

Verify the next statements for $A = \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}$

$$ p(x)=x^2-9 \quad p_1(x) = x + 3 \quad p_2(x) = x - 3 $$

### Answer

$$\begin{aligned}
p_1(A)  &= A + 3I \\ 
        &= \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix} +
            \begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} \\
        &= \begin{bmatrix} 6 & 1 \\ 2 & 4 \end{bmatrix}
\end{aligned}$$

$$\begin{aligned}
p_2(A)  &= A - 3I \\ 
        &= \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix} -
            \begin{bmatrix} 3 & 0 \\ 0 & 3 \end{bmatrix} \\
        &= \begin{bmatrix} 0 & 1 \\ 2 & -2 \end{bmatrix}
\end{aligned}$$

$$\begin{aligned}
p_1(A)p_2(A)  &= (A+3I)(A-3I) \\
              &= \begin{bmatrix} 6 & 1 \\ 2 & 4 \end{bmatrix}
                  \begin{bmatrix} 0 & 1 \\ 2 & -2 \end{bmatrix} \\
              &= \begin{bmatrix} 2 & 4 \\ 8 & -6 \end{bmatrix}
\end{aligned}$$

$$\begin{aligned}
p(A)    &= A^2 - 9I \\ 
        &= \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix}
            \begin{bmatrix} 3 & 1 \\ 2 & 1 \end{bmatrix} -
            \begin{bmatrix} 9 & 0 \\ 0 & 9 \end{bmatrix} \\
        &= \begin{bmatrix} 11 & 4 \\ 8 & 3 \end{bmatrix} -
            \begin{bmatrix} 9 & 0 \\ 0 & 9 \end{bmatrix} \\
        &= \begin{bmatrix} 2 & 4 \\ 8 & -6 \end{bmatrix}
\end{aligned}$$

Thus, $p(A) = p_1(A)p_2(A)$. $\blacksquare$

## 35

Can a matrix with a row of zeroes or a column of zeros have an inverse? Explain.

### Answer

No, as the determinant would be 0. For example, let $A = \begin{bmatrix} 1 & 0
\\ 2 & 0 \end{bmatrix}$. Then $det(A) = 1(0) - 0(2) = 0$, then $A^{-1} = 
\displaystyle \frac{1}{0} \begin{bmatrix} 0 & 0 \\ -2 & 1 \end{bmatrix}$,
but $\displaystyle\frac{1}{0} = \text{undefined}$. Therefore, the inverse does
not exist.

## 43

(a) Show that if $A$ is invertible and $AB = AC$, then $B = C$.

(b) Explain why part (a) and Example 3 do not contradict each other.

### Answer (Use row reduction instead)

(a) We can multiply both sides with $A^{-1}$. Then:

$$\begin{aligned}
A^{-1}AB &= A^{-1}AC \\
B &= C \\
\end{aligned}$$

(b) The difference is that the matrix $A$ is nonsingular, meaning that the
product of itself and its inverse is the identity matrix. This implies that the
product of a matrix $A$ and the product of its inverse $A^-{-1}$ with any other
matrix $B$ is the product of $B$ and the identity matrix $I$, which is $B$.
Whereas, the Example 3 is a singular matrix. 

## 45

(a) Show that if $A,B$ and $A+B$ are invertible matrice swith the same size,
then

$$A(A^{-1}+B^{-1})B(A+B)^{-1} = I$$

(b) What does the result in the part (a) tell you about the matrix $A^{-1} +
B^{-1}$?

### Answer

(a) This can be shown using basic theorems of matrices

$$\begin{aligned}
I   &= A(A^{-1} + B^{-1})B(A + B)^{-1}      \\
    &= (AA^{-1} + AB^{-1})B(A + B)^{-1}     \\
    &= (I + AB^{-1})B(A + B)^{-1}           \\
    &= (B + A)(A + B)^{-1}                  \\
    &= I                                    \\
\end{aligned}$$

(b) $A^{-1} + B^{-1} = (A+B)^{-1}$

# Section 1.5

## 3

Find a row operation and the corresponding elementary matrix that will restore
the given elementary matrix to the identity matrix.

a) $\begin{bmatrix} 1 & -3 \\ 0 & 1 \end{bmatrix}$

b) $\begin{bmatrix} -7 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}$

c) $\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 5 & 0 & 1 \end{bmatrix}$

d) $\begin{bmatrix} 0 & 0 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}$

### Answer

a) Adding $3R_2$ to $R_1$. $\begin{bmatrix} 1 & 3 \\ 0 & 1 \end{bmatrix}$

b) Multiplying $-\frac{1}{7}R_1$.
$\begin{bmatrix} -\frac{1}{7} & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}$

c) Adding $-5R_1$ to $R_3$.
$\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ -5 & 0 & 1 \end{bmatrix}$

d) Exchanging $R_1$ and $R_3$. Multiplying it by itself suffices.
$\begin{bmatrix} 0 & 0 & 1 & 0 \\ 0 & 1 & 0 & 0 \\ 1 & 0 & 0 & 0 \\ 0 & 0 & 0 & 1 \end{bmatrix}$

## 5

Identify the row operation corresponding to $E$ and verify the product $EA$
results from applying the row operation to $A$

a) $E = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$,
$A = \begin{bmatrix} -1 & -2 & 5 & -1 \\ 3 & -6 & -6 & -6 \end{bmatrix}$

b) $E = \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & -3 & 1 \end{bmatrix}$,
$A = \begin{bmatrix} 2 & -1 & 0 & -4 & -4 \\ 1 & -3 & -1 & 5 & 3 \\
2 & 0 & 1 & 3 & -1 \end{bmatrix}$

c) $E = \begin{bmatrix} 1 & 0 & 4 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}$,
$A = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}$

### Answer

a) 
$$\begin{aligned}
EA &= \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}
\begin{bmatrix} -1 & -2 & 5 & -1 \\ 3 & -6 & -6 & -6 \end{bmatrix} \\
   &= \begin{bmatrix} 3 & -6 & -6 & -6 \\ -1 & -2 & 5 & -1 \end{bmatrix} \\
\end{aligned}$$

The corresponding row operation is swapping $R_1$ and $R_2$. As it is trivial,
we won't write it down.

b)

$$\begin{aligned}
EA &= \begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & -3 & 1 \end{bmatrix}
\begin{bmatrix} 2 & -1 & 0 & -4 & -4 \\ 1 & -3 & -1 & 5 & 3 \\
2 & 0 & 1 & 3 & -1 \end{bmatrix} \\
   &= \begin{bmatrix} 2 & -1 & 0 & -4 & -4 \\ 1 & -3 & -1 & 5 & 3 \\
-1 & 9 & 4 & -12 & -10 \end{bmatrix} \\
\end{aligned}$$

The corresponding row operation is adding $-3R_2$ to $R_3$.

c) $E = \begin{bmatrix} 1 & 0 & 4 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}$,
$A = \begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}$

c) 
$$\begin{aligned}
EA &= \begin{bmatrix} 1 & 0 & 4 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 4 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}
   &= \begin{bmatrix} 13 & 28 \\ 2 & 5 \\ 3 & 6 \end{bmatrix}
 \\
\end{aligned}$$

The corresponding row operation is adding $4R_3$ to $R_1$.

## 9

Use Theorem 1.4.5 and then use the inversion algorithm to find $A^{-1}$, if it
exists.

a) $A = \begin{bmatrix} 1 & 4 \\ 2 & 7 \end{bmatrix}$

b) $A = \begin{bmatrix} 2 & -4 \\ -4 & 8 \end{bmatrix}$

### Answer

(a) Using **Theorem 1.4.5**:
$$det(A) = 1(7) - 4(2) = -1$$

$$\begin{aligned}
\frac{1}{det(A)} A^T &= -1 \begin{bmatrix} 7 & -4 \\ -2 & 1 \end{bmatrix} \\
                     &= \begin{bmatrix} -7 & 4 \\ 2 & -1 \end{bmatrix}
\end{aligned}$$

Using the inversion algorithm:

0. $\begin{bmatrix} 1 & 4 & \vert & 1 & 0 \\ 2 & 7 & \vert & 0 & 1 \end{bmatrix}$

1. Add $-2R_1$ to $R_2$: $\begin{bmatrix} 1 & 4 & \vert & 1 & 0 \\ 0 & -1 & \vert & -2 & 1 \end{bmatrix}$

2. Multiply $-R_2$. $\begin{bmatrix} 1 & 4 & \vert & 1 & 0 \\ 0 & 1 & \vert & 2 & -1 \end{bmatrix}$

3. Add $-4R_2$ to $R_1$. $\begin{bmatrix} 1 & 0 & \vert & -7 & 4 \\ 0 & 1 & \vert & 2 & -1 \end{bmatrix}$

b) $A$ is not invertible because $det(A) = 0$.

## 13

Use the inversion algorithm to find the inverse of the matrix (if the inverse
exists).

$$\begin{bmatrix} 1 & 0 & 1 \\ 0 & 1 & 1 \\ 1 & 1 & 0 \end{bmatrix}$$

### Answer

0. $\begin{bmatrix} 1 & 0 & 1 & \vert & 1 & 0 & 0 \\ 0 & 1 & 1 & \vert & 0 & 1 & 0
\\ 1 & 1 & 0 & \vert & 0 & 0 & 1\end{bmatrix}$

1. Add $-R_1$ to $R_2$. $\begin{bmatrix} 1 & 0 & 1 & \vert & 1 & 0 & 0 \\
-1 & 1 & 0 & \vert & -1 & 1 & 0 \\ 1 & 1 & 0 & \vert & 0 & 0 & 1\end{bmatrix}$

2. Add $-R_1$ to $R_3$. $\begin{bmatrix} 1 & 0 & 1 & \vert & 1 & 0 & 0 \\
-1 & 1 & 0 & \vert & -1 & 1 & 0 \\ 0 & 1 & -1 & \vert & -1 & 0 & 1\end{bmatrix}$

3. Add $R_3$ to $R_1$. $\begin{bmatrix} 1 & 1 & 0 & \vert & 0 & 0 & 1 \\
-1 & 1 & 0 & \vert & -1 & 1 & 0 \\ 0 & 1 & -1 & \vert & -1 & 0 & 1\end{bmatrix}$

4. Add $R_2$ to $R_1$. $\begin{bmatrix} 0 & 2 & 0 & \vert & -1 & 1 & 1 \\
-1 & 1 & 0 & \vert & -1 & 1 & 0 \\ 0 & 1 & -1 & \vert & -1 & 0 & 1\end{bmatrix}$

5. Multiply $\frac{1}{2}R_1$. $\begin{bmatrix} 0 & 1 & 0 & \vert & -\frac{1}{2}
& \frac{1}{2} & \frac{1}{2} \\ -1 & 1 & 0 & \vert & -1 & 1 & 0 \\ 0 & 1 & -1 &
\vert & -1 & 0 & 1\end{bmatrix}$

6. Add $-R_1$ to $R_2$. $\begin{bmatrix} 0 & 1 & 0 & \vert & -\frac{1}{2}
& \frac{1}{2} & \frac{1}{2} \\ -1 & 0 & 0 & \vert & -\frac{1}{2} & \frac{1}{2}
& 0 \\ 0 & 1 & -1 & \vert & -1 & 0 & 1\end{bmatrix}$

7. Multiply $-R_2$. $\begin{bmatrix} 0 & 1 & 0 & \vert & -\frac{1}{2}
& \frac{1}{2} & \frac{1}{2} \\ 1 & 0 & 0 & \vert & \frac{1}{2} & -\frac{1}{2}
& 0 \\ 0 & 1 & -1 & \vert & -1 & 0 & 1\end{bmatrix}$

8. Add $-R_1$ to $R_3$. $\begin{bmatrix} 0 & 1 & 0 & \vert & -\frac{1}{2}
& \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & 0 & 0 & \vert & 1 & -\frac{1}{2}
& 0 \\ 0 & 0 & -1 & \vert & \frac{1}{2} & -\frac{1}{2} & \frac{1}{2}
\end{bmatrix}$

9. Multiply $-R_3$. $\begin{bmatrix} 0 & 1 & 0 & \vert & -\frac{1}{2}
& \frac{1}{2} & \frac{1}{2} \\ \frac{1}{2} & 0 & 0 & \vert & 1 & -\frac{1}{2}
& 0 \\ 0 & 0 & 1 & \vert & -\frac{1}{2} & \frac{1}{2} & -\frac{1}{2}
\end{bmatrix}$

10. Exchage $R_1$ and $R_2$. $\begin{bmatrix} 1 & 0 & 0 & \vert & \frac{1}{2} &
-\frac{1}{2} & 0 \\ 0 & 1 & 0 & \vert & -\frac{1}{2} & \frac{1}{2} &
\frac{1}{2} \\ 0 & 0 & 1 & \vert & -\frac{1}{2} & \frac{1}{2} & -\frac{1}{2}
\end{bmatrix}$

## 15

Use the inversion algorithm to find the inverse of the matrix $\begin{bmatrix}
2 & 6 & 6 \\ 2 & 7 & 6 \\ 2 & 7 & 7 \end{bmatrix}$, if it exists.

### Answer

0) $\begin{bmatrix}
    2 & 6 & 6 &\vert& 1 & 0 & 0 \\
    2 & 7 & 6 &\vert& 0 & 1 & 0 \\
    2 & 7 & 7 &\vert& 0 & 0 & 1 \\
\end{bmatrix}$

1) Add $-1R_1$ to $R_2$: $\begin{bmatrix}
    2 & 6 & 6 &\vert& 1 & 0 & 0 \\
    0 & 1 & 0 &\vert& -1 & 1 & 0 \\
    2 & 7 & 7 &\vert& 0 & 0 & 1 \\
\end{bmatrix}$

2) Add $-1R_1$ to $R_3$: $\begin{bmatrix}
    2 & 6 & 6 &\vert& 1 & 0 & 0 \\
    0 & 1 & 0 &\vert& -1 & 1 & 0 \\
    0 & 1 & 1 &\vert& -1 & 0 & 1 \\
\end{bmatrix}$

3) Add $-1R_2$ to $R_3$: $\begin{bmatrix}
    2 & 6 & 6 &\vert& 1 & 0 & 0 \\
    0 & 1 & 0 &\vert& -1 & 1 & 0 \\
    0 & 0 & 1 &\vert& -1 & -1 & 1 \\
\end{bmatrix}$

4) Add $-6R_3$ to $R_1$: $\begin{bmatrix}
    2 & 6 & 0 &\vert& 7 & 6 & -6 \\
    0 & 1 & 0 &\vert& -1 & 1 & 0 \\
    0 & 0 & 1 &\vert& -1 & -1 & 1 \\
\end{bmatrix}$

5) Add $-6R_2$ to $R_1$: $\begin{bmatrix}
    2 & 0 & 0 &\vert& 13 & 0 & -6 \\
    0 & 1 & 0 &\vert& -1 & 1 & 0 \\
    0 & 0 & 1 &\vert& -1 & -1 & 1 \\
\end{bmatrix}$

6) Multiply $\frac{1}{2}R_1$: $\begin{bmatrix}
    1 & 0 & 0 &\vert& \frac{13}{2} & 0 & -3 \\
    0 & 1 & 0 &\vert& -1 & 1 & 0 \\
    0 & 0 & 1 &\vert& -1 & -1 & 1 \\
\end{bmatrix}$

## 23

Express the matrix and its inverse as a product of elementary matrices.

$$\begin{bmatrix} -3 & 1 \\ 2 & 2 \end{bmatrix}$$

### Answer

Let $A$ be the given matrix.

$$det(A) = -3(2) - (2) = -8$$

$$\begin{aligned}
A^{-1} &= -\frac{1}{8} \begin{bmatrix} 2 & -1 \\ -2 & -3 \end{bmatrix} \\
       &= \begin{bmatrix}
            -\frac{1}{4} & \frac{1}{8} \\
            \frac{1}{4} & \frac{3}{8}
        \end{bmatrix} \\
\end{aligned}$$

If we apply the inversion algorithm to $A$:

0) $\begin{bmatrix} -3 & 1 \\ 2 & 2 \end{bmatrix}$

1) Multiply $-\frac{1}{3}R_1$:
$\begin{bmatrix} 1 & -\frac{1}{3} \\
                 2 & 2 \end{bmatrix}$

2) Add $-2R_1$ to $R_2$:
$\begin{bmatrix} 1 & -\frac{1}{3} \\
                 0 & \frac{8}{3} \end{bmatrix}$

3) Multiply $\frac{3}{8}R_2$:
$\begin{bmatrix} 1 & -\frac{1}{3} \\
                 0 & 1 \end{bmatrix}$

4) Add $\frac{1}{3}R_2$ to $R_1$:
$\begin{bmatrix} 1 & 0 \\
                 0 & 1 \end{bmatrix}$

Therefore,
$$A =
\begin{bmatrix} -3 & 0 \\ 0 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 \\ 2 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 \\ 0 & \frac{8}{3} \end{bmatrix}
\begin{bmatrix} 1 & -\frac{1}{3} \\ 0 & 1 \end{bmatrix}
$$

If we apply the inversion algorithm to $A^{-1}$:

0) $\begin{bmatrix} 
            -\frac{1}{4} & \frac{1}{8} \\
            \frac{1}{4} & \frac{3}{8}
\end{bmatrix}$

1) Multiply $-4R_1$:
$\begin{bmatrix} 1 & -2 \\
                \frac{1}{4} & \frac{3}{8}
\end{bmatrix}$

2) Add $-\frac{1}{4}R_1$ to $R_2$:
$\begin{bmatrix} 1 & -2 \\
                0 & \frac{7}{8}
\end{bmatrix}$

3) Multiply $\frac{8}{7}R_2$:
$\begin{bmatrix} 1 & 2 \\
                 0 & 1 \end{bmatrix}$

4) Add $-2R_2$ to $R_1$:
$\begin{bmatrix} 1 & 0 \\
                 0 & 1 \end{bmatrix}$

Therefore,
$$A =
\begin{bmatrix} -\frac{1}{4} & 0 \\ 0 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 \\ \frac{1}{4} & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 \\ 0 & \frac{7}{8} \end{bmatrix}
\begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}
$$

## 25

Express the matrix and its inverse as a product of elementary matrices.

$$\begin{bmatrix} 1 & 0 & -2 \\ 0 & 4 & 3 \\ 0 & 0 & 1 \end{bmatrix}$$

### Answer

Let $A$ be the given matrix.

$$det(A) = 4$$

$$\begin{aligned}
A^{-1} &= \frac{1}{4}
    \begin{bmatrix}
        4 & 0 & 0 \\
        0 & 1 & 0 \\
        8 & -3 & 4
    \end{bmatrix} \\
        &=
    \begin{bmatrix}
        1 & 0 & 0 \\
        0 & \frac{1}{4} & 0 \\
        2 & -\frac{3}{4} & 1
    \end{bmatrix} \\
\end{aligned}$$

If we apply the inversion algorithm to $A$:

0) $\begin{bmatrix} 1 & 0 & -2 \\ 0 & 4 & 3 \\ 0 & 0 & 1 \end{bmatrix}$

1) Add $-3R_3$ to $R_2$:
$\begin{bmatrix} 1 & 0 & -2 \\ 0 & 4 & 0 \\ 0 & 0 & 1 \end{bmatrix}$

2) Add $2R_3$ to $R_1$:
$\begin{bmatrix} 1 & 0 & 0 \\ 0 & 4 & 0 \\ 0 & 0 & 1 \end{bmatrix}$

4) Multiply $\frac{1}{4}R_2$:
$\begin{bmatrix} 1 & 0 & 0 \\ 0 & \frac{1}{4} & 0 \\ 0 & 0 & 1 \end{bmatrix}$

Therefore,
$$A =
\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 3 \\ 0 & 0 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 & -2 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 & 0 \\ 0 & 4 & 0 \\ 0 & 0 & 1 \end{bmatrix}
$$

If we apply the inversion algorithm to $A^{-1}$:

0) $\begin{bmatrix} 1 & 0 & 0 \\ 0 & \frac{1}{4} & 0 \\ 2 & -\frac{3}{4} & 1 \end{bmatrix}$

1) Add $-2R_1$ to $R_3$:
$\begin{bmatrix} 1 & 0 & 0 \\ 0 & \frac{1}{4} & 0 \\ 0 & -\frac{3}{4} & 1 \end{bmatrix}$

2) Add $3R_2$ to $R_3$:
$\begin{bmatrix} 1 & 0 & 0 \\ 0 & \frac{1}{4} & 0 \\ 0 & 0 & 1 \end{bmatrix}$

3) Multiply $4R_2$:
$\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 1 \end{bmatrix} $

Therefore,
$$A =
\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 2 & 0 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & -3 & 1 \end{bmatrix}
\begin{bmatrix} 1 & 0 & 0 \\ 0 & \frac{1}{4} & 0 \\ 0 & 0 & 1 \end{bmatrix}
$$
## 31

Prove that if $A$ and $B$ are $m \times n$ matrices, then $A$ and $B$ are row
equivalent if and only if $A$ and $B$ have the same reduced row echelon form.

### Answer

$$ XA = B \iff XC rref(A) = B \iff rref(A) = C^{-1} X^{-1} B $$
