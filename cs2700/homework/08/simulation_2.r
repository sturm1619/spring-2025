compute_estimand <- function(sample) {
    return(
        mean(data$outcome[data$treatment == "Active"]) -
        mean(data$outcome[data$treatment == "Control"])
    )
}

generate_observations <- function(sample_size, noise_deviation) {
    # Assignments
    assignments <- sample(
        c("Active","Control"), sample_size, replace=TRUE
    )

    # Generate observations
    observations <- data.frame(
        treatment = assignments,
        outcome = (assignments == "Active") + rnorm(sample_size, 0, .5)
    )
    return(observations)
}

main <- function(sample_size, randomization_sample_size) {
    data <- generate_observations(sample_size)

    estimated_effect <-
        mean(data$outcome[data$treatment == "Active"]) -
        mean(data$outcome[data$treatment == "Control"])

    # barplot(as.factor(data$outcome))
    boxplot(data$outcome ~ data$treatment)
    # print(estimated_effect)

    randomizations <- numeric(randomization_sample_size)

    for (index in 1 : randomization_sample_size) {
        new_assignment <- sample(
            c("Active","Control"), sample_size, replace=TRUE
        )

        randomizations[index] <-
            mean(data$outcome[new_assignment == "Active"]) -
            mean(data$outcome[new_assignment == "Control"])
    }

    plot(
        density(randomizations),
        xlim=c(-2,2)
    )
    abline(
        v=estimated_effect,
    )

}

main(100, 1000)


