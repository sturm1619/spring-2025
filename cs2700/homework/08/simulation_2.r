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
# effect_parametrization: vector|list, noise_deviation: double
simulate_randomization_test <-
    function(sample_size, number_randomizations, effect_parametrization, title, noise_magnitude) {
        # Generate sample
        data <-
            generate_observations(sample_size, effect_parametrization, noise_magnitude)

        # Estimand
        estimated_effect <-
            mean(data$outcome[data$treatment == "Active"]) - mean(data$outcome[data$treatment == "Control"])

        # Plot sample data aggregates per treatment group
        boxplot(
            data$outcome ~ data$treatment,
            main="Comparison of Treatments", sub=title, xlab="Effectivenes", ylab="Treatment Group",
            col=c("green", "orange")
        ); grid()

        # Generate Distributon of Randomizations
        randomizations <-
            numeric(number_randomizations)

        for (index in 1 : number_randomizations) {
            new_assignment <- sample(c("Active","Control"), sample_size, replace=TRUE);
            randomizations[index] <-
                mean(data$outcome[new_assignment == "Active"]) - mean(data$outcome[new_assignment == "Control"])
        }

        # Plot Randomization Inference Results
        d <- density(randomizations)
        plot(
            d, col="blue", xlim=c(-4,4),
            main="Distribution of Randomized Trials",
            sub=title, xlab=paste("Randomized Trials: ", number_randomizations, "| Noise: ", noise_magnitude)#, ylab="",
        ); polygon(d, col=rgb(0,.2,.5,.3), border="blue"); grid(); abline(v=estimated_effect, col="red")
}

main <- function() {
    # png("./simulations.png")
    parametrizations <- list(
        functions=c(
            (function(x) 0), (function(x) x), (function(x) -1*x), (function(x) 2*x), (function(x) -2*x), (function(x) (2*x)^2), exp
        ),
        titles=c("None", "Linear +*1", "Linear -*1", "Linear +*2", "Linear -*2", "Quadratic *+2", "Exponential")
    )

    for (index in 1: length(parametrizations$titles)) for (jndex in 1:5)
        simulate_randomization_test(
            30, 10000,
            effect_parametrization=parametrizations[["functions"]][[index]],
            title=parametrizations[["titles"]][[index]],
            noise_magnitude=sample(c(.25,.5,1,1.25,.5,2,3), 1)
    )
}

main()
