function f = lf_func(n)
%�ú�����������С��n�Ľ׳�
%����ֵΪһ��������
f(1)=1;
i=1;
while f(i) * (i+1) < n
    f(i+1) = f(i) * (i+1);
    i = i + 1;
end

