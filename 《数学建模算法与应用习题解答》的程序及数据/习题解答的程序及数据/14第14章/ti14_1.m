clc, clear
a=load('data141.txt');
a=a';
[m,n]=size(a);
for j=[1 5 7 9]
    b(:,j)=(max(a(:,j))-a(:,j))/(max(a(:,j))-min(a(:,j))); 
end
for j=[2:4,6,8]
    b(:,j)=(a(:,j)-min(a(:,j)))/(max(a(:,j))-min(a(:,j)));
end
cstar=max(b); c0=min(b);
for i=1:m
    dstar(i)=norm(b(i,:)-cstar); %q���������ľ���
    d0(i)=norm(b(i,:)-c0);       %�󵽸�����ľ���
end
f=d0./(dstar+d0);
[sf,ind]=sort(f,'descend')       %��������
xlswrite('book.xls',[dstar;d0;f])  %�Ѽ�����д��Excel�ļ�����word�ļ���ʹ��
