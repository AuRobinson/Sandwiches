library(data.table)
library(ggplot2)

# How many sandwiches are in a loaf of bread?
n <- 1:24
q <- (1/2) * (n - 1) * (n - 2) # Sandwiches
e <- n^2 # Exponential

# Plot 'q' with a grid and define.
grid(plot(n, q, 
     type = "l", 
     col = "blue", 
     main = "Sandwiches", 
     sub = "How sandwiches are contained n-sliced loaf of bread?",
     xlab = "slices", 
     ylab = "sandwiches",
     lty = 2)
)

# Add a line to represent exponential growth with 'e'.
lines(e,
      col = "red",
      lty = 1)

# Add a legend to the graphic.
legend(1, 200,
      legend = c("Sandwich Growth",
                 "Exponential Growth"),
      col = c("blue", "red"),
      lty = 2:1,
      cex = 0.8)
