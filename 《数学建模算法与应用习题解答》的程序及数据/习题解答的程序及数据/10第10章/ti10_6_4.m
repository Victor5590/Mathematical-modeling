clc,clear
a=load('data1017.txt');   %��ԭʼ���ݱ����ڴ��ı��ļ�data1017.txt��
var0=cov(a); %����������Э������
for j=1:15
    for i=j+1:16
        d(i,j)=sqrt((a(i,:)-a(j,:))*inv(var0)*(a(i,:)-a(j,:))');
    end
end
b=nonzeros(d);%ȥ��d�е���Ԫ��
b=b';  %����������
z=linkage(b); %������뷨����  
h=dendrogram(z); %������ͼ
set(h,'Color','k','LineWidth',1.3)  %�Ѿ���ͼ�ߵ���ɫ�ĳɺ�ɫ���߿�Ӵ�
