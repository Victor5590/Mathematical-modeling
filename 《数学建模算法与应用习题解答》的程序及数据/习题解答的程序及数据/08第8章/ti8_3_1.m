clc, clear
t=1969:1983; 
yt=[3.78,4.19,4.83,5.46,6.71,7.99,8.60,9.24,9.67,9.87,10.49,10.92,10.93,12.39,12.59];
plot(t,yt,'*-')
n=length(yt); m=n/3; dyt=diff(yt)
for i=1:n-2
    jy(i)=dyt(i+1)/dyt(i); %����ģ�ͼ���
end
fw=minmax(jy) %�����������޺�����
s1=sum(yt(1:m)), s2=sum(yt(m+1:2*m)), s3=sum(yt(2*m+1:end))
b=((s3-s2)/(s2-s1))^(1/m)
a=(s2-s1)*(b-1)/(b*(b^m-1)^2)
k=(s1-a*b*(b^m-1)/(b-1))/m
yuce=@(t)k+a*b.^t; %����Ԥ�����������
bzcha=sqrt(mean((yt-yuce(1:n)).^2)) %����Ԥ��ı�׼��
ythat=yuce([n+2,n+7]) %��1985���1990���Ԥ��ֵ
