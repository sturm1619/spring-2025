Causal Inference for Statistics, Social and Biomedical Sciences
by CR Shalizi,
Ruben and Imbens

# The Basic Framework

(We'll use the word *unit* predominantly to refer to subjects/casesof study).

A **treatment** is an action taken upon a **unit**.

In praxis, causal inference is based on the following axioms:

If you can't manipulate something - if there is not human agent that can
intervene, there is no point in talking about causation.

Stable Unit Treatment Value Assumption (SUTVA) is the idea that given a set of
units and treatments, the potential outcomes for a unit $I$ should not vary with
the treatmets assigned to other units. Also, there should not be be different
forms of versions of each treatment; or give a treatment and a unit, there is
one reealized potential outcome.

Strongly Ignorable Treatment Assignment (SITA) assumption is the idea that 
The assignment mechanism should be ignorable (have no biasing effect,
intruduces not a cofounding variable) with respect to the outcomes.

Average Treatment Effect

$$\tau= \frac{1}{n} \sum_{i=1}^{n} Y_1 (1) - Y_i (0)$$

## Quiz 1 Review

An effect is the difference, the change or variance between potential outcomes.
Whenever we speak about effect, we are speaking about counterfactual facts. If
**there is an effect, there is an outcome.**

A covariate 

# R commands

```R
log(power, base="e")          # Natural log by default
set.seed()                    # Sets a seed for random generation
runif(n, min=0, max=1)        # Generates a random dataset with n entries from uniform distribution
rnorm(n, mean=0, sd=1)        # Generates a random dataset with n entries from normal distribution N(mean, sd)
stripchart(x)                 # Produces one-dimensional scatterplots
```
