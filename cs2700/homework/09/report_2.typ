= Statistical Matching and Its Uses in Causal Inference

== by Carlos Rubio

Statistical matching is a method used in observational studies to estimate causal
effects when randomized controlled trials (RCTs) aren’t possible. The goal is to
make treated and untreated groups as similar as possible by matching individuals
based on observed characteristics, like age, income, or health status. This helps
reduce bias and makes it easier to compare outcomes between groups.

To use statistical matching, researchers first identify covariates that might
affect both the treatment and the outcome. For example, if we’re studying the
effect of a new drug, covariates could include demographics and medical
history. Then, we match individuals in the treatment group to similar
individuals in the control group. Common methods include propensity score
matching, nearest neighbor matching and entropy balancing.

After matching, we assume the groups are comparable and can estimate the average
treatment effect (ATE). But this relies on a big assumption: conditional
independence. This means that, after controlling for the covariates, the treatment
assignment isn’t related to the potential outcomes. If this assumption is wrong,
the results could be biased.

Statistical matching is used in many fields, when randomized experiments are
unethical (effects of drugs or diseases) or directly impossible to replicate
(like the impact of certain factors or policies in economics). In those
situations, it's one of the main alternatives. Even so, it's not except of
disadvantages, like relying on the quality of the covariates matched, or
limiting the sample size. Moreover, it can’t fully replace RCTs because it
relies on assumptions that we can’t always test. For example, if we’re
studying the effect of a new drug and forget to include an important variable
like diet, the results might be wrong. Still, when used carefully, it’s a great
way to get closer to causal insights in real-world settings where experiments
aren’t possible.
