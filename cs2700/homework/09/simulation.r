plot_model <- function(filepath, data, model) {
    png(
        paste0("./visuals/", filepath),
        width=1440, height=1080
    )
    plot(
        data$treatment, data$response,
        xlab="Treatment", ylab="Response"
    )
    abline(lm(model))
    dev.off()
}


message("--------------------------------------------------------------------")
message("Model - Direct effect, no confounders")

sample_size <- 100
noise <- 10

data <- data.frame(
    covar_1=runif(sample_size,0, noise),
    covar_2=runif(sample_size,0, noise)
)

data$treatment <- runif(sample_size,0, noise)
data$response <- data$treatment * 2 + rnorm(sample_size, 0, 1)
plot_model("dir_no_conf.png", data, data$response ~ data$treatment + data$covar_1)
summary(lm(data$response ~ data$treatment + data$covar_1))

message("Conditioning on unrelated variables does not affect the estimator")

#######
message("====================================================================")
#######

data <- data.frame(
    observed_conf=runif(sample_size,0, noise)
)
data$treatment <- data$observed_conf + rnorm(sample_size,0,1)
data$response <- data$observed_conf * 2 + rnorm(sample_size, 0, 1)

message("Model, no effect, confounders")
message("No conditioning")
summary(lm(data$response ~ data$treatment))
plot_model("dir_conf_no_cond.png", data, data$response ~ data$treatment)
# lm(data$response ~ data$treatment)
message("--------------------------------------------------------------------")
message("Conditioning on confounders")
summary(lm(data$response ~ data$treatment + data$observed_conf))
plot_model("dir_conf_cond.png", data, data$response ~ data$treatment + data$observed_conf)
# lm(data$response ~ data$treatment + data$observed_conf)
message("Conditioning helps against bias in the estimator")

#######
message("====================================================================")
#######

message("Model - No effect, M bias")

data <- data.frame(
    observed_conf_1=runif(sample_size,0, noise),
    observed_conf_2=runif(sample_size,0, noise)
)

data$collider <- data$observed_conf_1 + data$observed_conf_2 + rnorm(sample_size,0,1)
data$treatment <- data$observed_conf_1 + rnorm(sample_size,0,1)
data$response <- data$observed_conf_2  + rnorm(sample_size, 0, 1)

message("No conditioning")
lm(data$response ~ data$treatment)
plot_model("dir_M_bias_no_cond.png", data, data$response ~ data$treatment)
message("Conditioning on collider")
lm(data$response ~ data$treatment + data$collider)
plot_model("dir_M_bias_cond.png", data, data$response ~ data$treatment)

message("--------------------------------------------------------------------")
