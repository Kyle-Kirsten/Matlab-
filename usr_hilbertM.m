function h = usr_hilbertM(n, m)
% 生成nxm阶的Hilbert矩阵，有h(i,j) = 1/(i + j - 1);

if nargin == 1
    m = n;
elseif nargin == 0 || nargin > 2
    error('Wrong number of input arguments');
end

for i = 1:n
    for j = 1:m
        h(i, j) = 1/(i + j - 1);
    end
end

end

