function ti8_1_2
clc, clear
[sigma1,yhat21]=yucefun(0.3) %��alpha=0.3ʱ��Ԥ���׼�Ԥ��ֵ
[sigma2,yhat22]=yucefun(0.6) %��alpha=0.6ʱ��Ԥ���׼�Ԥ��ֵ
function [sigma,yhat2]=yucefun(alpha);
yt=[80.8	94.0	88.4	101.5	110.3	121.5	134.7	142.7];
n=length(yt); st1(1)=mean(yt(1:3)); st2(1)=st1(1);
for i=2:n
    st1(i)=alpha*yt(i)+(1-alpha)*st1(i-1);
    st2(i)=alpha*st1(i)+(1-alpha)*st2(i-1);
end
at=2*st1-st2;
bt=alpha/(1-alpha)*(st1-st2);
yhat=at+bt;
sigma=sqrt(mean((yt(2:end)-yhat(1:end-1)).^2));
m=1:4;
yhat2=at(end)+bt(end)*m; %��1982�굽1985���Ԥ��ֵ
