%����ģ����ģ�͵�Matlab����
N=10000;%����������
k1=0;%û���е��˻��ڵ��������
k2=0;%���е���һ�Ż��ڵ��������
k3=0;%���е������Ż��ڵ��������
alphabet = [0 1]; prob = [0.5 0.5];
for k=1:N
    alphabet = [0 1]; prob = [0.5 0.5];%�����ʲ�����Ӧ���ʵ������
    if randsrc(1,1,[alphabet; prob])
        alphabet = [1 2 3 4 5 6]; prob = [1/6 1/6 1/6 1/6 1/6 1/6];
        r=randsrc(1,1,[alphabet; prob]);
        if r==1||r==2||r==3
            k1=k1+1;
        elseif r==4||r==5
            k2=k2+1;
        elseif r==6
            k3=k3+1;
        end
    else
        k1=k1+1;
    end
end
E=(k2+k3)/N
E1=0*k1/N+1*k2/N+2*k3/N
        
    