function example7_4()
%7.1.3.3��Ⱦ��ģ��
%ģ�͢�
%������ֵ���㣬ʹ����ѧ�������ɣ���MATLAB��������
ts=0:50;
x0=[0.02,0.98];
[t,x]=ode45(@ill,ts,x0)                %����ode45���'ill'������
plot(t,x(:,1),t,x(:,2)),grid,              %���������ߺͲ��˵ı仯����
figure,plot(x(:,2),x(:,1)),grid           %������ͼ
%%
function y=ill(t,x)                    %����ill����ʾģ��IV
a=1;b=0.3;
y=[a*x(1)*x(2)-b*x(1),-a*x(1)*x(2)]';
