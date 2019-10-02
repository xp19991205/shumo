%这是模拟打击模型的Matlab代码
N=10000;%定义打击次数
k1=0;%没击中敌人火炮的射击总数
k2=0;%击中敌人一门火炮的射击总数
k3=0;%击中敌人两门火炮的射击总数
alphabet = [0 1]; prob = [0.5 0.5];
for k=1:N
    alphabet = [0 1]; prob = [0.5 0.5];%依概率产生对应概率的随机数
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
        
    