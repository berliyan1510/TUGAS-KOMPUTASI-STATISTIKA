# 1. Jika rata-rata pelanggan datang ke toko adalah 3 orang per jam,
# modelkan dengan Poisson dan hitung P(X≥5)

lambda <- 3
x <- 0:15
pmf <- dpois(x, lambda)
pmf
plot(x, pmf, type='h', lwd=3, main='Poisson(λ= 3)', xlab='k', ylab='P(X=k)')

# P(X >= 5) = 1 - P(X <= 4)
p_lebihdari_5 <- 1 - ppois(4, lambda)
p_lebihdari_5


#2. Dari 100 bola (20 berwarna merah), diambil 10 tanpa pengembalian.
# Modelkan jumlah bola merah yang diambil dengan sebaran hipergeometrik 

N <- 100   
K <- 20
n <- 10   
# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

pmf <- dhyper(k, m = K, n = N - K, k = n)
data.frame(k = k, P = pmf)

plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak sukses dalam sampel)", ylab = "P(X=k)")

# Simulasi sampling tanpa pengembalian
m <- 10
samp <- rhyper(m, m = K, n = N - K, k = n)
mean(samp)   
n*K/N 
var(samp)    
n*K/N * (1-K/N) * ((N-n)/(N-1))

# 3. Simulasikan 1.000 percobaan Binomial (n=15, p=0.4)

set.seed(123)
n <- 15 
p <- 0.4
x <- 0:n
pmf <- dbinom(x, size=n, prob=p)
cdf <- pbinom(x, size=n, prob=p)
plot(x, pmf, type="h", lwd=3, main="PMF Binomial", xlab="k", ylab="P(X=k)")
plot(x, cdf, type="h", lwd=3, main="CDF Binomial", xlab="k", ylab="P(X=k)")

# Simulasi 1.000 percobaan 
m <- 1.000
sampel_binom <- rbinom(m, size = n, prob = p)
sampel_binom

# Membandingkan histogram hasil simulasi dengan PMF teoritis
hist(sampel_binom,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Histogram Simulasi vs PMF Teoritis",
     xlab = "Jumlah Sukses (X)",
     ylab = "Probabilitas")
# PMF teoritis
points(x, pmf, pch = 19)
lines(x, pmf, type = "h", lwd = 3)
#rata-rata simulasi
mean(sampel_binom)
#rata-rata teoritis
n*p
