clc, clear
x=-5:0.3:5; L=length(x);
a=[1 -6 5 3]; %�������ʽ��ϵ������
y=polyval(a,x); %�������ʽ��ֵ
plot(x,y,'.-')
no=randn(1,L); %������������
hold on
plot(x,y+no,'*'); %����������
b1=polyfit(x,y+no,3); %����Ⱦ������������ζ���ʽ
y1=polyval(b1,x); plot(x,y1,'>-')
b2=polyfit(x,y+no,2); %����Ⱦ��������϶��ζ���ʽ
y2=polyval(b2,x); plot(x,y2,'<-')
b3=polyfit(x,y+no,4); %����Ⱦ����������Ĵζ���ʽ
y3=polyval(b3,x); plot(x,y3,'rP-')
legend('ԭ���ݵ�','������Ⱦ������','�������','�������','�Ĵ����',0)
