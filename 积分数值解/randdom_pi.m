%���matlab�������ü��θ��͵Ļ����������pi,˼���������Ϊ4��������Ͷ����
%Ȼ�󿼲���ڰ뾶Ϊ1��Բ�ڵĸ���
N=10000;
count=0;
for k=1:N
    x=rand(1,2);
    if x(1)^2+x(2)^2<1
        count=count+1;
    end
end
count/N*4