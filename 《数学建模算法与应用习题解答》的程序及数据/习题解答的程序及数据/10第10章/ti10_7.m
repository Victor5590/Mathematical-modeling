clc, clear
d=textread('data1023.txt');
d=nonzeros(d)';
[y,eigvals]=cmdscale(d) %�󾭵�⣬d����Ϊʵ�Գƾ����pdist���������������
plot(y(:,1),y(:,2),'o','Color','k','LineWidth',1.3)   %�����������
pin={'1','2','3','4','5','6','7','8','9','10'}; %�����ע���ַ���
text(y(:,1),y(:,2)+3,pin) %��10��Ʒ�ƶ�Ӧ�ĵ���б�ע
