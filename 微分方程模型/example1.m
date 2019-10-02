%这是求解微分方程显式解的例子，利用到的函数为dsolve
%函数参数依次为：微分方程，初值条件，其他限定语句
clear
syms f(x)
dsolve(diff(f)==2*x,f(1)==2,'x');
