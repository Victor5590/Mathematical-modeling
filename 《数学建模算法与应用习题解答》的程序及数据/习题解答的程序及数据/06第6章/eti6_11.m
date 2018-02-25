clc, clear
dx=@(t,y,z) 2*z/(1+z^9.65)-y;
sol=dde23(dx,2,0.5,[0,200]);
t=linspace(2,100,1000); %������[2,100]��ȡ1000����
x=deval(sol,t); %�����Ӧ��t��״̬����x��ȡֵ
xlag=deval(sol,t-2);
plot(x,xlag) %������λͼ����ʾ��������
xlabel('x(t)'), ylabel('x(t-2)')
