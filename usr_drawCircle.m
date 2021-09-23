function varargout = usr_drawCircle(r, varargin)
% 绘制两个圆
% 调用格式：[x1, y1, x2, y2, s1, s2] = f(r, r2, 'PropertyName', ...)

v = length(varargin);
if nargin ~= 1 + v
    error('Wrong Argument number!');
end
if nargout > 6
    error('Too many output arguments!');
end

t = 0:pi/25:2*pi;
x = r*exp(i*t);
s = pi*r^2;

if v > 0
        r2 = varargin{1};
        x2 = r2*exp(i*t);
end

if nargout == 0
    switch v
        case 0
            plot(x, 'r');
        case 1
            plot(x, 'r');
            hold on;
            plot(x2, 'r');
            hold off;
        otherwise
            plot(x, varargin{2:end});
            hold on;
            plot(x2, varargin{2:end});
            hold off;
    end     
    axis('square');
else
% 先画圆1    
    varargout{1} = real(x);
    varargout{2} = imag(x);
    varargout{5} = pi*r^2;
    varargout{6} = [];
    if v > 0
        varargout{3} = real(x2);
        varargout{4} = imag(x2);
        varargout{6} = pi*(r^2 - r2^2);
    end
end

end

