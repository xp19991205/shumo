%此程序用于解P35页所示的标准线性规划问题(下面是例二的展示)
clear
c=[40,36];%目标函数，取min
A=[-5,-3];%不等式约束的系数矩阵，注意补零
b=[-45];%不等式约束右边的值的矩阵，为列向量
Aeq=[];%此矩阵要求与不等式约束系数矩阵同维
beq=[];%等式约束的右边值的矩阵
vlb=zeros(1,2);%六变量且均大于零,变量下界
vub=[9;15];%变量上界，标准型为空
[x,fval]=linprog(c,A,b,Aeq,beq,vlb,vub);

