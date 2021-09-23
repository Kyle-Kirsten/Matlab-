function str = usr_poly2sym(p, varargin)
% ������Ķ���ʽת��Ϊ�ַ���
% ��ʽΪ��׼����ʽ

if nargin == 1
    opt = '';
else
    opt = varargin{1};
end

% ��Ԥ����
str = '';
for n = (length(p) - 1):-1:0
    str = [str, '+', num2str(p(n+1)), ' * x^', num2str(n)]
end
% �ٸ���opt��ֵѡ���Ƿ񻯼�
switch opt
    case 'simple'
        % ��ȷ������
        n = length(p) - 1;
        while n >= 0 && p(n+1) == 0
            n = n - 1;
        end
        
        if n == 0
            str = '0';
        else
            switch p(n+1)
                case 1
                    str = '';
                case -1
                    str = '-';
                otherwise
                    str = [num2str(p(n+1)), ' * '];
            end
            if n == 1
                str = [str, 'x'];
            else
                str = [str, 'x^', num2str(n)];
            end
            for n = (n-1):-1:0
                switch p(n+1)
                    case 1
                        str = [str, ' + '];
                        if n == 0
                            str = [str, '1'];
                        end
                    case -1
                        str = [str, ' - '];
                        if n == 0
                            str = [str, '1'];
                        end
                    case 0
                        continue;
                    otherwise
                        cof = num2str(p(n+1));
                        if cof(1) == '-'
                            str = [str, ' - ', cof(2:end)];
                        else
                            str = [str, ' + ', cof];
                        end
                        if n ~= 0
                            str = [str, ' * '];
                        end
                end
                switch n
                    case 1
                        str  = [str, 'x'];
                    case 0
                        str = str;
                    otherwise
                        str = [str, 'x^', num2str(n)];
                end
            end
        end
    otherwise
        str = str;
end

end

