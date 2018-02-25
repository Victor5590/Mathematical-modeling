clc, clear
yp=@(x,y)[y(2);2*x/(1+x^2)*y(2)-2/(1+x^2)+1]; %���巽�������������
bc=@(ya,yb)[ya(1)-1.25; yb(1)+0.95]; %����߽���������������
guess=@(x)[1.25+x; 1.25*x+x^2/2]; %������ֵ�²��
solinit=bvpinit(linspace(0,4,50),guess);
sol=bvp4c(yp,bc,solinit);
plot(sol.x,sol.y(1,:),'o-',sol.x,sol.y(2,:),'*-')
xlabel('x'),ylabel('y')
legend('y_1','y_2')
