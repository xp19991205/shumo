%���Ƿ����Թ滮������ʵ�����
%������⺯����Сֵ�ĺ����ο��ĵ�fminXXXϵ��
clear
x0=[-1;1];
A=[];
b=[];
Aeq=[1 1];
beq=[0];
VLB=[];
VUB=[];
[x,fval]=fmincon('fun4',x0,A,b,Aeq,beq,VLB,VUB,'mycon');