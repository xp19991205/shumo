%这个matlab程序利用几何概型的基本定义计算pi,思想是在面积为4的正方内投掷点
%然后考察点在半径为1的圆内的概率
N=10000;
count=0;
for k=1:N
    x=rand(1,2);
    if x(1)^2+x(2)^2<1
        count=count+1;
    end
end
count/N*4