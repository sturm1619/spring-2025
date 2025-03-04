# sample: data.frame
compute_estimand <- function(sample) {
    return(
        mean(data$outcome[data$treatment == "Active"]) -
        mean(data$outcome[data$treatment == "Control"])
    )
}

# sample_size: integer, effect_parametrization: function,
# noise_deviation: numeric
generate_observations <-
    function(sample_size, effect_parametrization, noise_deviation) {
        assignments <- sample(
            c("Active","Control"), sample_size, replace=TRUE
    )

        observations <- data.frame(
            treatment = assignments,
            outcome = effect_parametrization(assignments == "Active") +
                rnorm(sample_size, 0, noise_deviation)
        )

        return(observations)
    }

# sample_size: integer, randomization_sample_size: integer
# noise_deviation: double
simulate_randomization_test <-
    function(sample_size, number_randomizations, effect_parametrization, noise_deviation) {
        data <-
            generate_observations(sample_size, effect_parametrization, noise_deviation)
        estimated_effect <-
            mean(data$outcome[data$treatment == "Active"]) - mean(data$outcome[data$treatment == "Control"])

        randomizations <-
            numeric(number_randomizations)
        for (index in 1 : number_randomizations) {
            new_assignment <- sample(c("Active","Control"), sample_size, replace=TRUE);
            randomizations[index] <- mean(data$outcome[new_assignment == "Active"]) - mean(data$outcome[new_assignment == "Control"])
        }

        boxplot(data$outcome ~ data$treatment)
        plot(density(randomizations), xlim=c(-2,2)); abline(v=estimated_effect)
}

main <- function() {
    parametrizations <- c(
        (function(x) x), (function(x) x^2), (function(x) 2 * x), log, exp
    )

    for (index in 1:5) for (jndex in 1:20)
        simulate_randomization_test(
            30, 1000, parametrization[index], sample(c(.25,.5,1,1.25,.5,2), 1)
    )
}


