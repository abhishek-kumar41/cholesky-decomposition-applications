function L = cholesky_decomposition(A)

n = size(A,1);
L = zeros(n);     %Initialising Lower triangular matrix
for i = 1:n
    for j = 1:i
        sum = 0;
        if i == j
            for k = 1:j
                sum = sum + (L(j,k))^2;
            end
            L(j,j) = sqrt(A(j,j) - sum);  %Finding Diagonal terms of L
        else
            for k = 1:j
                sum = sum + L(i,k)*L(j,k);
            end
            L(i,j) = (A(i,j) - sum)/L(j,j); % Finding Off_diagonal terms of L using diagonal terms
        end
    end
end

end

