clc, clear
w=zeros(5); %�ڽӾ����ʼ��
w(1,2)=120; w(1,[3:5])=[150 120 80]; %������������ڽӾ����ȡֵ
w(2,1)=100; w(2,[3:5])=[60 160 40];
w(3,[4 5])=[70,100];
w(4,[3 5])=[50 120];
w(5,[3 4])=[100,150];
w=sparse(w); %���ڽӾ���ת��Ϊϡ�����
d=graphallshortestpaths(w)
NodeIDs={'��','��','A','B','C'};%�ڵ��ǩ��Ҳ����h.Nodes(i).ID����ֵ
h=view(biograph(w,NodeIDs,'ShowWeights','on'))
set(h.Nodes,'shape','circle'); %���㻭��Բ��
h.EdgeType='segmented'; %�ߵ�����Ϊ�߶�
h.LayoutType='equilibrium';
dolayout(h) %ˢ��ͼ��
h2=view(biograph(d,NodeIDs,'ShowWeights','on'))
h2.EdgeType='segmented'; %�ߵ�����Ϊ�߶�
h2.LayoutType='equilibrium';
dolayout(h2)
