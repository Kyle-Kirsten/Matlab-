%ͼ�ν������
h = waitbar(0, 'Loading');
n = 10000;
for i = 1 : n
    waitbar(i / n)
end
close(h);