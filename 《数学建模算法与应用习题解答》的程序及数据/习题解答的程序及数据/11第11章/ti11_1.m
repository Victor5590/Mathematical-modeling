clc,clear
ab0=load('data111.txt');   %ԭʼ���ݴ���ڴ��ı��ļ���data111.txt��
mu=mean(ab0);sig=std(ab0); %���ֵ�ͱ�׼��
ab=zscore(ab0); %���ݱ�׼��
a=ab(:,[1:end-1]);b=ab(:,end);  %�����׼������Ա��������������
[XL,YL,XS,YS,BETA,PCTVAR,MSE,stats] =plsregress(a,b)
xw=a\XS  %���Ա��������ɷ�ϵ����ÿ�ж�Ӧһ���ɷ֣�����xw����stats.W
yw=b\YS  %������������ɷ�ϵ��
ncomp=input('�����PCTVAR��ֵȷ������ɷֶԵĸ���ncomp=');
[XL2,YL2,XS2,YS2,BETA2,PCTVAR2,MSE2,stats2] =plsregress(a,b,ncomp)
n=size(a,2); %n���Ա����ĸ���
beta3(1)=mu(end)-mu(1:n)./sig(1:n)*BETA2([2:end]).*sig(end); %ԭʼ���ݻع鷽�̵ĳ�����
beta3([2:n+1])=(1./sig(1:n))'*sig(n+1:end).*BETA2([2:end]) 
bar(BETA2','k')   %��ֱ��ͼ
yhat=repmat(beta3(1),[size(a,1),1])+ab0(:,[1:n])*beta3([2:end])'  %��y��Ԥ��ֵ
ymax=max([yhat;ab0(:,end)]); %��Ԥ��ֵ�͹۲�ֵ�����ֵ
figure
plot(yhat(:,1),ab0(:,n+1),'*',[0:ymax],[0:ymax],'Color','k')
legend('ԭ����ֵԤ��ͼ',2)
