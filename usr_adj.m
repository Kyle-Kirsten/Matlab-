function C = usr_adj(A)
% ����A�İ������
% ���ݶ���p(t) = det(t*I - A)
% ��adj(A) = (-1)^(n+1)*( p1*I + p2*A + ... + pn*A^(n-1) )
% ����piΪp(t)��ϵ��
%   requires A ~= 0

n = length(A);
p = fliplr(poly(A));
tmpA = eye(n);
k = 2;
C = 0;

while k <= n + 1
    C = C + p(k)*tmpA;
    tmpA = tmpA * A;
    k = k + 1;
end

C = (-1)^(n+1) * C;

end

