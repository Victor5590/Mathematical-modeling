
A=xlsread('����2.1.xlsx','Example3','B3:E20');
x=pinjun_data(:,3:7);
y=pinjun_data(:,1);
inmodel=1:5;         %inmodel��һ��������X��������ȵ��߼�����
stepwise(x,y,inmodel);