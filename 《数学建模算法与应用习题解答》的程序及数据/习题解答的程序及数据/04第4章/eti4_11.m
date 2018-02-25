clc, clear
a=rand(10); a=tril(a); %��ȡ������Ԫ��
a(1:11:end)=0; %�Խ���Ԫ����0��
randnum=randint(10,10,[1,10])
wx=(a>=0.4).*randnum; %���ɸ�Ȩͼ���ڽӾ���
wx=sparse(wx); %�����ڽӾ���������Ԫ�ص�ϡ�����
h=view(biograph(wx,[],'ShowArrows','off','ShowWeights','on')) %������ͼ
[st,pred]=graphminspantree(wx,'Method','Kruskal') %����С������
view(biograph(st,[],'ShowArrows','off','ShowWeights','on')) %������С������
[d,path,pred]=graphshortestpath(wx,1,10,'directed',false) %�󶥵�1��10�����·
set(h.Nodes(path),'Color',[1 0.4 0.4])  
fowEdges = getedgesbynodeid(h,get(h.Nodes(path),'ID'));
revEdges = getedgesbynodeid(h,get(h.Nodes(fliplr(path)),'ID'));
edges = [fowEdges;revEdges];
set(edges,'LineColor',[1 0 0])
set(edges,'LineWidth',1.5)
d2=graphallshortestpaths(wx,'directed',false)
