X <- runif(100,0,10)
M <- X + rnorm(100)
Y <- X + M + rnorm(100)

data <- data.frame(X, Y, M)
data

# Total direct effect
summary(lm(Y ~ X))

# Model of M
summary(lm(M ~ X))

# # Pure direct effect + pure indirect effect
summary(lm(Y ~ X + M))

# # Total indirect effect
# summary(lm(Y ~ M))
