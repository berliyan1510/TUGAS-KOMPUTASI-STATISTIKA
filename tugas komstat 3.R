#1. Memanggil packages 
library(DAAG)

#2. Memanggil data set airquality (kualitas udara)
airquality

#3. Buat histogram dari data set untuk variable wind, dan sertakan density.
dens <- density(airquality$Wind)
dens

hist(airquality$Wind,
     probability = TRUE,
     freq = FALSE,
     xlab = "total wind",
     main = "histogram wind")

lines(dens, col = "yellow", lwd = 10)

#4. Buat boxplot stem and leaf
boxplot(airquality$Wind)

stem(airquality$Wind)

#5. Membuat scatter plot untuk data set
scatter.smooth(airquality$Wind ~ airquality$Temp)

plot (airquality$Wind ~ airquality$Temp,
      ylab = "angin",
      xlab = "suhu")
