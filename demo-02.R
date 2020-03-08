# simulate data according to a GP
set.seed(7365) 
n <- 500
p <- 10
sigma <- 0.01
t <- sort(c(seq(0, 1, length.out = 100), runif(n-100)))
K <- exp(-as.matrix(dist(t))) + diag(rep(sigma, n))
Q <- qr.Q(qr(matrix(rnorm(n*n), ncol = n)))
E <- 0.05*matrix(rnorm(n*n), ncol = n)
X <- (K + E) %*% Q[, seq_len(p)]
colnames(X) <- paste0("dim", seq_len(p))


library(liminal)
# make a data.frame
tbl <- cbind(as.data.frame(X), data.frame(depth = t))

limn_tour(tbl, dim1:dim10, color = depth)
