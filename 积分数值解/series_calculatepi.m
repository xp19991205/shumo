%���MatLab��������atanx��̩��չ��ʽ���Pi
N=10000;%��������
result=0;
t=1;
for k=0:N-1
    result=result+t/(2*k+1);
    t=(-1)*t;
end
4*result
