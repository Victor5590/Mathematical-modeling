clc, clear
fid=fopen('str101.txt','r'); %�ѵ�һ�е��ַ����ݱ�����str101.txt��
ss=textscan(fid,'%s') %����ʡ�������������ַ���
a=load('data101.txt'); %����ֵ���ݱ����ڴ��ı��ļ�data101.txt��
b=zscore(a) %���ݱ�׼��
d=pdist(b) %��������֮���ŷ�Ͼ���
z=linkage(d) %���ɾ��в�νṹ�ľ�����
dendrogram(z,'label',ss{:}) %������ͼ
