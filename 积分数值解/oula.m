function result =  oula(a, b, n)
    h = (b-a)/n;
    x = 0.0;%��ֵ���ֳ�ʼֵ
    for m = 1:n
        x0 = a + (m-1)*h;
        x1 = a + m*h;
        if(x0 == a) 
            y0 = 0; %����д���������޴��ĺ���ֵ��f(a)
        else
            y0 = 1/(1+x0^2);%����дҪ���е���ֵ���ֵĺ������ʽ
        end
        y1 = 1/(1+x0^2);%����дҪ������ֵ���ֵĺ������ʽ
        x = x + y0 + y1;
    end
    x=x+1/(1+b^2);%f(b)
    result = x * (h/2);
end