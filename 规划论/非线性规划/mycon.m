function [g,ceq] = mycon(x)
%这里主要定义非线性规划中的非线性约束，例如x1x2的约束
g=[1.5+x(1)*x(2)-x(1)-x(2);-x(1)*x(2)-10];
ceq=[];
end

