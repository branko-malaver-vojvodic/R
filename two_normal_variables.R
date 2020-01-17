#Plotting the graph of two normal variables at the same time
lcb <- (-20)
ucb <- (40)

u <- seq(from = lcb,
         to = ucb,
         length.out = 1e+5)
v1 <- dnorm(x = u,
            mean = 4.6,
            sd = 4)
v2 <- dnorm(x = u,
            mean = 11.5,
            sd = sqrt(70))

matplot(x = u,
        y = cbind(v1, v2),
        type = "l",
        lty = 1,
        col = c("red", "blue"),
        xlab = "Valeur",
        ylab = "Densit�",
        main = "Exercise 1.1")
legend(x = "topright",
       legend = paste("Distbn X", 1:2),
       col = c("red", "blue"),
       lty = 1)