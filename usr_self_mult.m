function res = usr_self_mult(x)
%   resΪx������Ԫ�ص������˻�
% requires ~isfinite(x) == 0

k = 1;
res = 1;
n = usr_num(x);
while k <= n
    res = res * x(k);
    k = k + 1;
end


end

