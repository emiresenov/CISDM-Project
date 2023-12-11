mu.male   <- 183
sd.male   <- 7.5
mu.female <- 164
sd.female <- 7.5

sample.pts     <- seq(140, 210, by=0.1)
density_male   <- dnorm(sample.pts, mean=mu.male, sd=sd.male)
density_female <- dnorm(sample.pts, mean=mu.female, sd=sd.female)
mm = .75*density_female + .25*density_male


plot(sample.pts, mm, col='black', type='l', xlab="Height (cm)", ylab="Density", lwd=2,)
lines(sample.pts, .75*density_female, col='blue', type='l', lty=1)
lines(sample.pts, .25*density_male, col='red', type='l', lty=1)



legend('topright', c('male', 'female', 'population'), col=c('red', 'blue', 'gray'), lty=c(2,2,1), lwd=c(1,1,2), cex=1.3)