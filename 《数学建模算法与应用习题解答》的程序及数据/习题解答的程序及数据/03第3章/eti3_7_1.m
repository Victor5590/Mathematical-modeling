clc, clear
a=-ones(1,4); b=2*ones(1,3);
Q=diag(a)+diag(b,1)+diag(b,-1) %�������Խ��߾���Q
dlmwrite('ex37.txt',Q) %�����ݾ���Q���浽���ı��ļ�����Lingo�������
