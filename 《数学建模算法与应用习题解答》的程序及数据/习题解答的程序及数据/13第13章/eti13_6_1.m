clc, clear
I=imread('tu.bmp');   %��ȡͼ��
[m,n]=size(I)   %����ͼ��Ĵ�С
BW=im2bw(I);  %ת���ɶ�����ͼ��
%imshow(BW)
BW(:,200:512)=1; %��ס��2��Բ
figure, imshow(BW)
ed=edge(BW); %����߽�
[y,x]=find(ed); %��߽�������
x0=mean(x), y0=mean(y)  %����Բ�ĵ�����
r1=max(x)-min(x)+1,r2=max(y)-min(y)+1
r=(r1+r2)/2     %����Բ��ֱ��
