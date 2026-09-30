
# JAWABAN SOAL 1 (Poisson)

# Model: X ~ Poisson(lambda = 3)
lambda <- 3

# menghitung P(X >= 5) = 1 - P(X <= 4)
p_x_geq_5 <- 1 - ppois(4, lambda = lambda)
# menggunakan lower.tail = FALSE:
p_x_geq_5 <- ppois(4, lambda = lambda, lower.tail = FALSE)

cat("P(X >= 5) =", p_x_geq_5, "\n")



# JAWABAN SOAL 2 (Hipergeometrik)

N <- 100
K <- 20
n <- 10
k <- 0:n

# Fungsi Masa Peluang (PMF)
pmf_hyper <- dhyper(k, m = K, n = N - K, k = n)

# tabel PMF
data.frame(Jumlah_Bola_Merah = k, Peluang = pmf_hyper)




# JAWABAN SOAL 3 
set.seed(2025)
n <- 15
p <- 0.4

#Plot PMF Teoretis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)
plot(x, pmf, type = "h", lwd = 3, main = "PMF Binomial Teoretis", xlab = "k", ylab = "P(X=k)")

#Simulasi 1.000 percobaan
n_sim <- 1000
simulasi <- rbinom(n_sim, size = n, prob = p)

#Histogram hasil simulasi
hist(simulasi, main = "Histogram Simulasi Binomial (n=1000)", xlab = "k")
