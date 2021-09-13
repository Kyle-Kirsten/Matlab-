clear all;
t = linspace(0, 2*pi);
y = exp((0.5 + 5*1i) * t);
subplot(1, 2, 1); plot(y);
xlabel('(a) 直角坐标图');

r = abs(y);
theta = angle(y);
subplot(1, 2, 2); polar(theta, r);
xlabel('(b) 极坐标图');
