clc, clear
xy0=randint(5,2,[0,10]); %���ɹ۲����ݾ���
F=@(s,xy)s(1)*xy(:,1)+s(2)*xy(:,1).*xy(:,2)+s(3)*xy(:,2)-3; %������������
FF=@(s,xy)(s(1)*xy(:,1)+s(2)*xy(:,1).*xy(:,2)+s(3)*xy(:,2)-3).^2;
s0=rand(1,3); %��ϲ����ĳ�ʼֵ������ȡ��
s1=nlinfit(xy0,zeros(length(xy0),1),FF,s0)
s2=lsqcurvefit(FF,s0,xy0,zeros(length(xy0),1))
plot(xy0(:,1),xy0(:,2),'o')
hold on
h=ezplot(@(x,y)F(s1,[x,y]),[0,10,0,10])
colormap([0,0,0]) %����ɫ����
title('�����������'), legend('������','�������',0)
