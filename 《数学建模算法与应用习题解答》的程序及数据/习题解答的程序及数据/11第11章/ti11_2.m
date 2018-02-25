clc,clear
ab0=load('data112.txt');   %ԭʼ���ݴ���ڴ��ı��ļ�data112.txt��
mu=mean(ab0);sig=std(ab0); %���ֵ�ͱ�׼��
ab=zscore(ab0); %���ݱ�׼��
a=ab(:,[1:7]);b=ab(:,[8:12]);  %�����׼������Ա��������������
[XL,YL,XS,YS,BETA,PCTVAR,MSE,stats] =plsregress(a,b)
%XL��ÿһ���Ǳ�׼���Ա�������Ӧ���ɷֵĻع�ϵ��
%BETA�����Ǳ�׼��������Ա�׼���Ա����Ļع�ϵ��
%PCTVAR�ĵ�һ�����Ա��������ɷֵĹ�����
xw=a\XS  %���Ա��������ɷ�ϵ����ÿ�ж�Ӧһ���ɷ֣�����xw����stats.W
yw=b\YS  %������������ɷ�ϵ��
ncomp=input('�����PCTVAR��ֵȷ������ɷֶԵĸ���ncomp=');
[XL2,YL2,XS2,YS2,BETA2,PCTVAR2,MSE2,stats2] =plsregress(a,b,ncomp)
n=size(a,2); m=size(b,2);%n���Ա����ĸ���,m��������ĸ���
beta3(1,:)=mu(n+1:end)-mu(1:n)./sig(1:n)*BETA2([2:end],:).*sig(n+1:end); %ԭʼ���ݻع鷽�̵ĳ�����
beta3([2:n+1],:)=(1./sig(1:n))'*sig(n+1:end).*BETA2([2:end],:) %����ԭʼ����x1,...,xn��ϵ����ÿһ����һ���ع鷽��
bar(BETA2','k')   %��ֱ��ͼ
yhat=repmat(beta3(1,:),[size(a,1),1])+ab0(:,[1:n])*beta3([2:end],:)  %��y1,..,y5��Ԥ��ֵ
ymax=max([yhat;ab0(:,[n+1:end])]); %��Ԥ��ֵ�͹۲�ֵ�����ֵ
%���滭y1,y2,y3,y4,y5��Ԥ��ͼ������ֱ��y=x
figure, subplot(2,3,1), 
plot(yhat(:,1),ab0(:,n+1),'*',[0:ymax(1)],[0:ymax(1)],'Color','k')
legend('y1',2)
subplot(2,3,2)
plot(yhat(:,2),ab0(:,n+2),'O',[0:ymax(2)],[0:ymax(2)],'Color','k')
legend('y2',2)
subplot(2,3,3)
plot(yhat(:,3),ab0(:,n+3),'H',[0:ymax(3)],[0:ymax(3)],'Color','k')
legend('y3',2)
subplot(2,3,4)
plot(yhat(:,4),ab0(:,n+4),'H',[0:ymax(4)],[0:ymax(4)],'Color','k')
legend('y4',2)
subplot(2,3,5)
plot(yhat(:,5),ab0(:,end),'H',[0:ymax(5)],[0:ymax(5)],'Color','k')
legend('y5',2)
