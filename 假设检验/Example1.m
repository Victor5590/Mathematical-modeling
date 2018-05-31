 clear
 clc
 x=[3.5 1.8 2.4 3.0 3.5 3.9 4.4 4.8 5.0];
 y=[8.5 2.57 3.0 5.3 8.9 11.69 13.1 13.6 13.3];
 stats=reglm(y,x,'linear'); %����regstats������һԪ���Իع�
 [xsort,id]=sort(x);%��x����
 ysort=y(id);%��y����Ӧ����
 plot(xsort,ysort,'k.','Markersize',15)%��ԭ���ݵ�ɢ��ͼ
 hold on 
 plot(x,stats.yhat,'linewidth',3)%���ع�ֱ��
 xlabel('�¶�')
 ylabel('����')
 legend('ԭʼֵ','�ع�ֱ��'); 
%%
x0=2;
y0=stats.tstat.beta(1)+x0*stats.tstat.beta(2);
alpha=0.05;
[m,n]=size(x);
sxx=sum(x.^2)-1/n*sum(x)^2;
t=-tinv(alpha/2,n-2);
delta=t*sqrt(stats.fstat.sse/(n-2))*sqrt(1+1/n+(x0-mean(x))^2/sxx);
fprintf('%6s\n','Ԥ��ֵ:  ',y0);
fprintf('%6s\n','delta:  ',delta);