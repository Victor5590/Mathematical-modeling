clc, clear
yt=[80.8	94.0	88.4	101.5	110.3	121.5	134.7	142.7];
m=length(yt); n=3;
for i=n+1:m+1
    ythat(i)=sum(yt(i-n:i-1))/n; %��֪���ݵ�Ԥ��ֵ��δ��һ��Ԥ��ֵ 
end
ythat
for i=m+1:m+3
    yt(i)=ythat(i);
    ythat(i+1)=sum(yt(i-n+1:i))/n; %��δ���ಽԤ��ֵ
end
yhat=ythat(end-3:end)  %��ʾδ��4��ʱ�̵�Ԥ��ֵ
s1=sqrt(mean((yt(n+1:m)-ythat(n+1:m)).^2)) %����Ԥ��ı�׼���   
