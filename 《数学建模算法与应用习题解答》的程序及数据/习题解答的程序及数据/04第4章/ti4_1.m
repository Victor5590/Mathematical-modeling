clc, clear
a=zeros(6); %�ڽӾ����ʼ��
a(1,[2:6])=[56	35	21	51	60]; %�����ڽӾ����������Ԫ��
a(2,[3:6])=[21	57	78	70];
a(3,[4:6])=[36	68	68];
a(4,[5 6])=[51	61]; a(5,6)=13;
a=a'; a=sparse(a); %�任�������Ǿ��󣬲�ת���ɹ���������Ҫ��ϡ�����
[ST,pred] = graphminspantree(a,'method','Kruskal') %���ù���������С������
view(biograph(ST,[],'ShowArrows','off','ShowWeights','on'))
