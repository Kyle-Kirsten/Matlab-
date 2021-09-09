function x = least_solve(A, b)
%计算Ax == b方程的最小二乘解
x = (A'*A)\(A'*b);
end

