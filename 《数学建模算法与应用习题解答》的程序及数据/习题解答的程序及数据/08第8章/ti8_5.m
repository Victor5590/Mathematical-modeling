clc, clear
a=textread('data84.txt'); %��ԭʼ���ݱ��浽���ı��ļ�data84.txt
a=a'; a=nonzeros(a); n=length(a);
plot(a,'.-')
for i=11:n
    b(i-10)=a(i)-a(i-10); %���м��ڲ�ֱ任
end
b=b'; figure,plot(b,'.-')
figure, subplot(121), autocorr(b)
subplot(122), parcorr(b)
cs=armax(b,[1,10]) %���ģ��
figure, myres=resid(cs,b); %����в������������в������غ���ͼ
[h1,p1,st1]=lbqtest(myres,'lags',6) %����LBQ����
[h2,p2,st2]=lbqtest(myres,'lags',12)
[h3,p3,st3]=lbqtest(myres,'lags',18)
bhat1=predict(cs,[b;0]); 
bhat(1)=bhat1{:}(end); %�������е�һ��Ԥ��ֵ
bhat2=predict(cs,[b;bhat(1);0]);
bhat(2)=bhat2{:}(end); %�������еĵڶ���Ԥ��ֵ
ahat(1)=a(end-9)+bhat(1); %��ԭʼ���е�Ԥ��ֵ
ahat(2)=a(end-8)+bhat(2)
