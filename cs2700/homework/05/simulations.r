###############################################################################
#       Simulating the effects of conditioning on different SEMs
###############################################################################


# The next code is a subroutine that performs a linear regression test
# with the given structural equation model, and then plots it.

plot_model <- function(file_plot, causal_graph, x, y, interest, model, step = 1) {
    # Prepare color scheme
    colors <- c(
        "red", "blue", "dark green", "dark gray", "darkgoldenrod",
        "purple", "orange", "cyan", "magenta", "black"
    )
    breaks <- seq(0, max(interest), by = step)
    color_mapping <- colors[as.numeric(
        cut(interest, breaks = breaks, label = FALSE)
    )]

    # Review model
    message(causal_graph)
    linear_model <- lm(model)
    print(summary(linear_model))

    # Plot and store
    png(
        paste0("./visuals/", file_plot),
        width = 1440, height = 1080,
    )
    plot(
        x, y,
        col = color_mapping,
        pch = 19,
        main = causal_graph,
        xlab = "Value of X",
        ylab = "Value of Y",
        axes = FALSE
    )
    axis(1)
    axis(2)
    abline(linear_model)
    dev.off()
}

sample_size <- 1000 # Num

#####################################
#  1. Model with mediator
#####################################

# This model is X -> Z -> Y <- X. The effect of X on Y should be 2
x <- runif(sample_size, 0, 10)
z <- x + rnorm(sample_size, 0, 1)
y <- x + rnorm(sample_size, 0, 1) + z

plot_model(paste0("model_1.png"), "X -> Z -> Y <- X", x, y, z, y ~ x)

#####################################
#  2. Model with confounder
#####################################

# This model is X <- Z -> Y <- X. Z is a confounder, and the effect of X on Y
# is 1. The minimal set for d-separation is {Z}.

z <- runif(sample_size, 0, 10)
x <- z + rnorm(sample_size, 0, 1)
y <- x + z + rnorm(sample_size, 0, 1)

plot_model(
    "model_2_incorrect.png", "X -> Z -> Y <- X (Confounded)",
    x, y, z, y ~ x
)

plot_model(
    "model_2.png", "X -> Z -> Y <- X (Unconfounded)",
    x, y, z, y ~ x + z
)

# The second model should show a more even slope compared to the first one.
# This more even slope is directly proportional with the effect of X over Y.

#####################################
#  3. Butterfly Model
#####################################

# This third model corresponds to Y <- X <- W2 -> W1 <- W3 -> Y <- W1.
# W1, W2 and W3 are confounders. Minimal sets for d-separation are
# {W1, W2} and {W1,W3}.

w2 <- runif(sample_size, 0, 10)
w3 <- runif(sample_size, 0, 10)
w1 <- w2 + w3 + rnorm(sample_size, 0, 1)
x <- w1 + w2 + rnorm(sample_size, 0, 1)
y <- x + w1 + w3 + rnorm(sample_size, 0, 1)

# Note how this model overestimates the effect of X over Y
plot_model(
    "model_3_b_bad.png",
    "Y <- X <- W2 -> W1 <- W3 -> Y <- W1 (Confounded)",
    x, y, w1, y ~ x + w1, 4
)

# Note how in this model always underestimates the effect of X. The confounder
# W1 is attributed to most of the effect.
plot_model(
    "model_3_b_bad.png",
    "Y <- X <- W2 -> W1 <- W3 -> Y <- W1 (Confounded)",
    x, y, w1, y ~ x + w1, 4
)

plot_model(
    "model_3_c_good.png",
    "Y <- X <- W2 -> W1 <- W3 -> Y <- W1 (Unconfounded)",
    x, y, w1, y ~ x + w1 + w2, 4
)

plot_model(
    "model_3_d_good.png",
    "Y <- X <- W2 -> W1 <- W3 -> Y <- W1 (Unconfounded)",
    x, y, w1, y ~ x + w1 + w3, 4
)

# Note how in the next model we still get right result, even when we over
# conditioned.
plot_model(
    "model_3_e_fine.png",
    "Y <- X <- W2 -> W1 <- W3 -> Y <- W1 (Unconfounded)",
    x, y, w1, y ~ x + w1 + w2 + w3, 4
)
