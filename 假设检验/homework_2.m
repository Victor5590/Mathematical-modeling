
clc
x=A(:,1:4);
y=A(:,5);
y=log(y);
inmodel=1:4;         %inmodel��һ��������X��������ȵ��߼�����
stepwise(x,y,inmodel);