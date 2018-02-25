clc, clear
dxfun2=@(t,x,dx) [dx(1)-x(2);dx(2)*sin(dx(3))+dx(3)+x(1)*x(3)
    x(1)*dx(3)+x(1)*cos(dx(3))-x(2)*x(3)];
x0=[0;1;0]; %��ʼֵ
yy=@(y) y(1)*sin(y(2))+y(2);
y=fsolve(yy,rand(2,1))
xp0=[1;y]; %����һ�׵����ĳ�ֵ����
[t,x]=ode15i(dxfun2,[0,10],x0,xp0);
plot(t,x(:,1),'-P'), hold on, plot(t,x(:,2),'-*'), plot(t,x(:,3),'-.') 
legend('x����ֵ��','x��������ֵ��','y����ֵ��',0)
