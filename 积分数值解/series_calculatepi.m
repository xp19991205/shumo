%这个MatLab程序利用atanx的泰勒展开式求解Pi
N=10000;%迭代次数
result=0;
t=1;
for k=0:N-1
    result=result+t/(2*k+1);
    t=(-1)*t;
end
4*result
