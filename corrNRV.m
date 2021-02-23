function [x,y] = corrNRV(m,n,cov_matrix)

x =randn(n, m);     % Random Uncorrelated vectors
L = cholesky_decomposition(cov_matrix);   % Cholesky decomposition of covariance matrix
y = L*x;            % Correlated vectors


