clc, clear
I=imread('tu.bmp');
BW=im2bw(I,0.9);   %ת���ɶ�����ͼ��
BW(:,200:512)=1;    %��סBԲ
ed=edge(BW);%���AԲ�ı߽�
stat1=regionprops(ed,'all')  %���AԲ����ͼ�������
center=stat1.Centroid   %���AԲ��Բ��
xy=stat1.BoundingBox    %���AԲ���ڵĺ���
r=sum(xy(3:4))/4        %����AԲ�İ뾶
