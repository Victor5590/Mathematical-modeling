clc, clear
a=[1 1]; b=7;
c1=[3 1]'; c2=[1 2]';
lb=zeros(2,1); ub=[5 5]'; %�������Թ滮���½��������Ͻ�����
[x1,y1]=linprog(-c1,a,b,[],[],lb,ub) %����һ�����Թ滮
[x2,y2]=linprog(-c2,a,b,[],[],lb,ub) %���ڶ������Թ滮
go=-[y1,y2]'; %Matlab���������Թ滮����⼫Сֵ
goalfun=@(x)[-3*x(1)-x(2);-x(1)-2*x(2)]; 
[x,fval]=fgoalattain(goalfun,rand(2,1),go,abs(go),a,b,[],[],lb,ub);
x, fval=-fval %�ָ���ԭ����Ŀ�꺯��
