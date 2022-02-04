# Cleaning up the Workspace
rm(list = ls())
dev.off()
cat("\014")

# Variation Data y300 and y200
variation <- read.csv("variation_transmission.csv", header=T)

plot(variation$y300~variation$y200, main = "Variation Transmission: y300 and y200",
     col = "tomato4", ylab = "y300 Value", xlab = "y200 value", xlim = c(-14,16), ylim = c(-14,16))
abline(h = -12.7, lty = 3, col = "black")
abline(h = 14.8, lty = 3, col = "black")

summary(lm(variation$y300~variation$y200))

# Variation Data y200 and y100
variation <- read.csv("variation_transmission_1.csv", header=T)

plot(variation$y200~variation$y100, main = "Variation Transmission: y200 and y100",
     col = "darkblue", ylab = "y200 Value", xlab = "y100 value", xlim = c(-14,16), ylim = c(-14,16))
abline(h = -12.7, lty = 3, col = "black")
abline(h = 14.8, lty = 3, col = "black")

summary(lm(variation$y200~variation$y100))