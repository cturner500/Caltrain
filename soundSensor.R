#soundSensor: Caltrain project

mdat <- matrix(c(1.95,76,
                 .43,49,
                 2.13,83,
                 .49,45,
                 .41,48,
                 1.81,88,
                 .47,49,
                 .43,48,
                 2.11,78
                 ), nrow = 9, ncol = 2, byrow = TRUE,
            dimnames = list(c("10:17", "10:21", "10:24", "10:25", "10:28", "10:34", "10:43", "10:44", "10:46"),
                               c("Volts", "dB")))
mdat <- data.frame(mdat)
View(mdat)
plot(mdat[,2]~mdat[,1], xlim=c(0,3), ylim =c(0,100), col=4)
model <- lm(mdat[,2]~mdat[,1])
abline(model, col = 2, lwd=3)
summary(model)
