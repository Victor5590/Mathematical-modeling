clc,clear
a=load('data1017.txt')   %��ԭʼ���ݱ����ڴ��ı��ļ�data1017.txt��
sy=zscore(a); %���ݱ�׼��
r=corrcoef(sy);  %�����ϵ������
[vec1,val,con]=pcacov(r)  %�������ɷַ�������ؼ���
cumrate=cumsum(con) %�����ۻ�������
f1=repmat(sign(sum(vec1)),size(vec1,1),1);
vec2=vec1.*f1;     %��������������ת��
f2=repmat(sqrt(val)',size(vec2,1),1); 
a=vec2.*f2   %������غɾ���
contr1=sum(a.^2)  %�������ӹ���
num=input('��ѡ�������ӵĸ�����');  %����ʽѡ�������ӵĸ���
am=a(:,[1:num]);  %���num�������ӵ��غɾ���
[b,t]=rotatefactors(am,'method', 'varimax') %��ת�任,bΪ��ת����غ���
bt=[b,a(:,[num+1:end])];   %��ת��ȫ�����ӵ��غɾ���
degree=sum(b.^2,2)     %���㹲ͬ��
contr2=sum(bt.^2)       %�������ӹ���
rate=contr2(1:num)/sum(contr2) %�������ӹ�����
coef=inv(r)*b          %����÷ֺ�����ϵ��
xlswrite('tt1.xls',a(:,[1:num])); %������׼������������
xlswrite('tt1.xls',contr1(1:num),'Sheet1','A7');
xlswrite('tt1.xls',b,'Sheet1','D1');
xlswrite('tt1.xls',contr2(1:num),'Sheet1','D7');
xlswrite('tt1.xls',degree,'Sheet1','G1');
