clc, clear
x0=0:400:5600; y0=4800:-400:0;
z0=load('data51.txt');
pp=csape({x0,y0},z0'); %���ж�ά������ֵ
x=0:50:5600; y=4800:-50:0;
z=fnval(pp,{x,y}); %���ֵ��ĸ߳�ֵ
subplot(1,2,1),c=contourf(x,y,z',10);clabel(c)  %���ȸ���
subplot(1,2,2),surf(x,y,z') %����ά����ͼ
