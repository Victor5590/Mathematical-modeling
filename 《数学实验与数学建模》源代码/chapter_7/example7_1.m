function example7_1()
%zhui.m
[x,y]=ode23(@zhuiji,[500,1],[0,0]);        
%����ode23�������ⷽ����
plot(x, y(:,1))       
%����ͼ��
%%
function f=zhuiji(x,y)             
%zhuiji.m
%����΢�ַ����麯����������Ϊ'zhuiji'
f=[y(2);0.75*sqrt(1-y(2)^2)/x];


