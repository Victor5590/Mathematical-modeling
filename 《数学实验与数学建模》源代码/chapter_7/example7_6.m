function example7_6()
%7.1.3.4  Volterraģ��
%����������shark.m���£�
    [t,x]=ode45(@shier,[0 15],[25 2]);         
    plot(t,x(:,1),'-',t,x(:,2),'*')
    plot(x(:,1),x(:,2))
%%
%����m-�ļ�shier.m���£�
function dx=shier(t,x)
    dx=zeros(2,1); 
    dx(1)=x(1)*(1-0.1*x(2));
    dx(2)=x(2)*(-0.5+0.02*x(1));

    
    