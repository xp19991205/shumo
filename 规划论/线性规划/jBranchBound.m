function [xOut,fitOut,flagOut]=jBranchBound(c,A,B,Aeq,beq,vlb,vub,optXin,optF)
global optX optVal optFlag;optX=optXin;optVal=optF;
options = optimoptions('linprog','Algorithm','interior-point-legacy','display','none');
[x,fit,status]=linprog(c,A,B,Aeq,beq,vlb,vub,[],options);
if status~=1 %no optimal solution,end the program
%do these when the first LP cann't get a feasible solution
%in the next loop, these value don't return back.
xOut=x;fitOut=fit;flagOut=status;
return;
end
% the following programs are based on the condition of status=1
if max(abs(x-round(x)))>0.005 %there have real solution
if fit>optVal
%cann't find any real feasible solution better than optVal
xOut=x;fitOut=fit;flagOut=-100;
return;
else
%continue to branch
end
else% there have integer solution
if fit>optVal
%cann't find any integer feasible solution better than optVal
xOut=x;fitOut=fit;flagOut=-101;
return;
else
optVal=fit;optX=x; optFlag=status;
xOut=x;fitOut=fit;flagOut=status;
return;
end
end
midX=abs(x-round(x));
notIntV=find(midX>0.005);
pXidx=notIntV(1);%decide the branch variable index
tempVlb=vlb;tempVub=vub;
%the up branch calculation
if vub(pXidx)>=fix(x(pXidx))+1
tempVlb(pXidx)=fix(x(pXidx))+1;
[~,~,~]=jBranchBound(c,A,B,Aeq,beq,tempVlb,vub,optX,optVal);
end
%the down branch calculation
if vlb(pXidx)<=fix(x(pXidx))
tempVub(pXidx)=fix(x(pXidx));
[~,~,~]=jBranchBound(c,A,B,Aeq,beq,vlb,tempVub,optX,optVal);
end
%get the optimal solution
xOut=optX;fitOut=optVal;flagOut=optFlag;
end
