%这是求解微分方程显式解的例子，利用到的函数为dsolve
%函数参数依次为：微分方程，初值条件，其他限定语句
clear
syms f(x)
Dy=diff(f);
con=[f(1)==2,Dy(0)==1];
dsolve(diff(f,x,2)+2*diff(f,x,1)-3*f==exp(x),con,'x');
