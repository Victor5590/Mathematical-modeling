clc, clear
a=load('data85.txt'); %��ԭʼ�����ĸ����ȵ����ݱ��浽���ı��ļ�
a=a'; a=a(:); %�����ݱ��������
n=length(a);
t0=[46:1/4:71-1/4]';
t=[1:100]';
xishu=[ones(n,1),t];
cs=xishu\log(a);
cs(1)=exp(cs(1))
ahat=cs(1)*exp(cs(2)*t);
cha=a-ahat;
res=sum(cha.^2)
subplot(121), plot(t0,a,'*-')
subplot(122), plot(t0,cha,'.-')
figure, subplot(121), autocorr(cha)
subplot(122), parcorr(cha)
for i=1:10
    cs2{i}=ar(cha,i); %���ģ��
    cha2=resid(cs2{i},cha); %����в�����
    myvar(i)=sum(cha2.^2)/(100-i); %����в�� 
end
figure, plot(myvar,'*-')
