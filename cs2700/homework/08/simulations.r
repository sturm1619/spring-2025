sample_size <- 30

assigned_treatments <- rbinom(sample_size, 1, 0.5)

outcome_trial_1 <- rnorm(sample_size, assigned_treatments, .5)

estimated_effect <-
    mean(outcome_trial_1[which(assigned_treatments == 1)]) -
    mean(outcome_trial_1[which(assigned_treatments == 0)])

randomized_estimands <- numeric(10000)

for (index in 1 : 10000) {
    new_assignment <- rbinom(sample_size, 1, 0.5)
    randomized_estimands[index] <-
        mean(outcome_trial_1[which(new_assignment == 1)]) -
        mean(outcome_trial_1[which(new_assignment == 0)])
}

print(estimated_effect)

plot(
    density(unknown),
    xlim=c(-1.5,1.5)
)

abline(v=estimated_effect)
