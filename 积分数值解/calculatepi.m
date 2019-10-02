%这个MatLab程序用于计算pi的精确值，通过1/（1+x^2）的积分（数值）为pi/4
%结合梯形公式求解数值解的方法
clear;
format long;
a1 = 0;%数值积分的下限
b1 = 1;%数值积分的上界
x = [100,1000,2000,3000,5000];
y(1) = oula(a1, b1, x(1));
y(2) = oula(a1, b1, x(2));
y(3) = oula(a1, b1, x(3));
y(4) = oula(a1, b1, x(4));
y(5) = oula(a1, b1, x(5));
for s = 1:5
    z(s) =pi;
    y(s)=y(s)*4;
end
y(2,:) = z;
plot(x,y);
