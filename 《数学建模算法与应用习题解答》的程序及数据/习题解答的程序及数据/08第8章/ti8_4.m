clc, clear
a=textread('data83.txt');
xt=a(:,[2:2:end]); xt=nonzeros(xt); %��ԭʼ���ݰ���ʱ���Ⱥ����չ��������
yt=diff(xt); %��ԭʼ���ݽ��в�ֱ任
m=armax(yt,[2,1]) %���armaģ��
yd=yt;
for i=1:10
    tt1=predict(m,[yd;0]); %����һ��Ԥ��ֵ
    tt2=tt1{:}(end); %�������һ��Ԥ��ֵ
    ythat(i)=tt2; %�����i��Ԥ��ֵ
    yd=[yd;tt2]; %������һ��Ԥ�������
end
ythat %��ʾ������ݵ�Ԥ��ֵ
xthat=xt(end)+cumsum(ythat) %����ԭʼ���ݵ�Ԥ��ֵ
