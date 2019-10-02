%这是非线性规划例二的实验程序
%其他求解函数极小值的函数参考文档fminXXX系列
clear
x0=[-1;1];
A=[];
b=[];
Aeq=[1 1];
beq=[0];
VLB=[];
VUB=[];
[x,fval]=fmincon('fun4',x0,A,b,Aeq,beq,VLB,VUB,'mycon');