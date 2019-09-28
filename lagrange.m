%�������ղ�ֵ����
function yy=lagrange(x,y,xx)
%Lagrange ��ֵ�������ݣ�x,y�������ʽ�ĺ����ڲ�ֵ��xx���Ĳ�ֵ
m=length(x);
n=length(y);
if m~=n
    error('����x,y���ȱ���һ��');
end
s=0;
for i=1:n
    t=ones(1,length(xx));
    for j=1:n
        if j~=i
            t=t.*(xx-x(j))/(x(i)-x(j));
        end
    end
    s=s+t*y(i);
end
yy=s;
