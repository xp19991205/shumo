%�������΢�ַ�����ʽ������ӣ����õ��ĺ���Ϊdsolve
%������������Ϊ��΢�ַ��̣���ֵ�����������޶����
clear
syms f(x)
Dy=diff(f);
con=[f(1)==2,Dy(0)==1];
dsolve(diff(f,x,2)+2*diff(f,x,1)-3*f==exp(x),con,'x');
