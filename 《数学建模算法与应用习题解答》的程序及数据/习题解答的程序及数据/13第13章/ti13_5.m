clc, clear, T=20; %TΪ��ǿʱ����ֵ
a=imread('fengmian.bmp');
h=[1 2 1; 2 4 2; 1 2 1]/16;
b=imfilter(a,h);
subplot(1,3,1), imshow(a),title('ԭͼ��')
subplot(1,3,2), imshow(b), title('�˲����ͼ��')
b=double(b); %����ת��Ϊdouble���Ͳ������ݶ�����
[bx,by]=gradient(b); dxy=(bx.^2+by.^2).^(1/2); 
dxy=uint8(dxy); c=uint8(b); %��double��������ת��Ϊuint8����ͼ������
c(dxy>T)=dxy(dxy>T); %���������任
subplot(1,3,3), imshow(c), title('��ǿ���ͼ��')
