clc, clear
I=imread('tu.bmp');   %��ȡͼ��
BW=im2bw(I);  %ת���ɶ�����ͼ��
BW(:,1:200)=1; %��סAԲ
imshow(BW)
ed=edge(BW); %����߽�
[y,x]=find(ed); %��߽�������
x0=mean(x), y0=mean(y)  %����Բ�ĵ�����
r1=max(x)-min(x),r2=max(y)-min(y)
r=(r1+r2)/4     %����Բ�İ뾶
