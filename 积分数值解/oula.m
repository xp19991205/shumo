function result =  oula(a, b, n)
    h = (b-a)/n;
    x = 0.0;%数值积分初始值
    for m = 1:n
        x0 = a + (m-1)*h;
        x1 = a + m*h;
        if(x0 == a) 
            y0 = 0; %这里写函数的下限处的函数值即f(a)
        else
            y0 = 1/(1+x0^2);%这里写要进行的数值积分的函数表达式
        end
        y1 = 1/(1+x0^2);%这里写要进行数值积分的函数表达式
        x = x + y0 + y1;
    end
    x=x+1/(1+b^2);%f(b)
    result = x * (h/2);
end