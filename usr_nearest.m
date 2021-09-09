function [n,k,r, times] = usr_nearest(irr,rigor)
%�����ӽ� k * irr ������������Ϊrigor
% requires irr > 0, rigor > 0
% ensures k * irr - n = r, |r| <= rigor

persistent CALLED_TIMES
if isempty(CALLED_TIMES)
    CALLED_TIMES = 0;
end
CALLED_TIMES = CALLED_TIMES + 1;
times = CALLED_TIMES;

k = 1;
r = k * irr - floor(k * irr);
while r > rigor
    k = k + 1;
    r = k * irr - floor(k * irr);
end
n = floor(k * irr);
end

