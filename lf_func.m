function f = lf_func(n)
%该函数返回所有小于n的阶乘
%返回值为一个行向量
f(1)=1;
i=1;
while f(i) * (i+1) < n
    f(i+1) = f(i) * (i+1);
    i = i + 1;
end

