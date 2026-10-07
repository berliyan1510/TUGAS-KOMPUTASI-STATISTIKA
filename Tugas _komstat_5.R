# 1. Distribusi Eksponensial (Waktu Tunggu)
# Rata-rata mu = 5 menit -> rate (lambda) = 1/5 = 0.2
# Mencari P(X > 5)
mu_exp1 <- 5
rate_exp1 <- 1 / mu_exp1

# Hitung P(X > 5)
soal_1 <- pexp(5, rate = rate_exp1, lower.tail = FALSE)
soal_1


# 2. Distribusi Uniform Kontinu (Varians Waktu Tunggu Kereta)
# Interval waktu a = 0 menit, b = 20 menit
# Mencari Var(X) = (b - a)^2 / 12
a <- 0
b <- 20

# Hitung Varian
soal_2 <- (b - a)^2 / 12
soal_2


# 3. Distribusi Eksponensial (Masa Pakai Sensor)
# Rata-rata mu = 10 tahun -> rate (lambda) = 1/10 = 0.1
# Mencari P(X < 5)
mu_3 <- 10
rate_3 <- 1 / mu_3

# Hitung P(X < 5)
soal_3 <- pexp(5, rate = rate_3)
soal_3


# 4. Distribusi Normal (Berat Kemasan Kopi)
# mu = 250 gram, sigma = 5 gram
# Mencari proporsi P(X < 240)

mu_4 <- 250
sigma_4 <- 5

# Hitung P(X < 240)
soal_4 <- pnorm(240, mean = mu_4, sd = sigma_4)
soal_4