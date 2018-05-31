
clc
x1=1./x;
ly=log(y);
lx=log(x);
stats1=reglm(y,x,'linear'); 
stats2=reglm(y,x1,'linear'); 
stats3=reglm(ly,lx,'linear'); 
stats4=reglm(ly,x,'linear'); 
y1=stats1.beta(1)+stats1.beta(2)*x;%��ԭ�ĸ����̵�Ԥ��ֵ
y2=stats2.beta(1)+stats2.beta(2)./x;
y3=exp(stats3.beta(1)+stats3.beta(2)*lx);
y4=exp(stats4.beta(1)+stats4.beta(2)*x);
q1=sum((y-y1).^2);    %����ع鷽�̵Ĳв�ƽ����
q2=sum((y-y2).^2);
q3=sum((y-y3).^2);
q4=sum((y-y4).^2);
fprintf('-----------------------------------�в�ƽ����-----------------------------------\n');
fprintf('%8s%18s%15s%15s%12s\n','��Ŀ','y1','y2','y3','y4');
fmt = '%9s%20.4f%15.4f%15.4f%13.4f\n';
fprintf(fmt,'RSS',q1,q2,q3,q4);
%%���ع�Ч��ͼ%%
[xsort,id]=sort(x);%��x����
ysort=y(id);%��y����Ӧ����
xx=0:0.1:20;
yy1=stats1.beta(1)+stats1.beta(2)*xx;%��ԭ�ĸ����̵�Ԥ��ֵ
yy2=stats2.beta(1)+stats2.beta(2)./xx;
yy3=exp(stats3.beta(1)+stats3.beta(2)*log(xx));
yy4=exp(stats4.beta(1)+stats4.beta(2)*xx);
subplot(2,2,1)
plot(xsort,ysort,'k.','Markersize',15)%��ԭ���ݵ�ɢ��ͼ
hold on
plot(xx,yy1,'linewidth',1)%���ع�ֱ��
legend('ԭʼֵ','�ع�ֱ��');
title('y=a+bx');
hold off
subplot(2,2,2)
plot(xsort,ysort,'k.','Markersize',15)%��ԭ���ݵ�ɢ��ͼ
hold on
plot(xx,yy2,'linewidth',1)%���ع�ֱ��
legend('ԭʼֵ','�ع�����');
title('y=a+b/x');
hold off
subplot(2,2,3)
plot(xsort,ysort,'k.','Markersize',15)%��ԭ���ݵ�ɢ��ͼ
hold on
plot(xx,yy3,'linewidth',1)%���ع�ֱ��
legend('ԭʼֵ','�ع�����');
title('y=ax^b');
hold off
subplot(2,2,4)
plot(xsort,ysort,'k.','Markersize',15)%��ԭ���ݵ�ɢ��ͼ
hold on
plot(xx,yy4,'linewidth',1)%���ع�ֱ��
legend('ԭʼֵ','�ع�����');
title('y=ae^b^x');
hold off


