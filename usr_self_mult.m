function res = usr_self_mult(x)
%   res为x中所有元素的算术乘积
% requires ~isfinite(x) == 0

k = 1;
res = 1;
n = usr_num(x);
while k <= n
    res = res * x(k);
    k = k + 1;
end


end

