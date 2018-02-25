clc, clear
syms x
y=(x^2+2*x+3)*exp(-2*x);
dy=diff(y);
ezplot(dy,[0,1]), hold on
x0=0:0.1:1; y0=(x0.^2+2*x0+3).*exp(-2*x0);
pp=csape(x0,y0); %��������������ֵ
ddy=fnder(pp); %�����������ĵ������������Ϊpp���ݽṹ
ddy0=ppval(ddy,x0); %�������������ĵ�������ɢ���ϵ�ȡֵ
plot(x0,ddy0,'-P') %������ֵ������Ӧ�����ݵ�
legend('����ֵ','��ֵ��',0)
title('����ֵ����ֵ��Ķ���')
