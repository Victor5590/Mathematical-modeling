clear
t=zeros(1,21);    %ÿλ�˿͵���ʱ��
T=zeros(1,21);     %ÿλ�˿���ȥʱ��
w=zeros(1,21);      %�˿͵ȴ�ʱ���ۼ�
ww=zeros(1,21);      %�տ�̨����ʱ���ۼ�
r=exprnd(2,1,21);       %����ָ���ֲ�������� 
t2=normrnd(1,1/3,1,21);   %������̬�ֲ��������
for i=1:1:20
   t(i+1)=t(i)+r(i);
    if t(i+1)>=T(i);     %����Ҫ�Ŷӣ�����i+1������ʱ���i���Ѿ��������
        w(i+1)=w(i); T(i+1)=t(i+1)+t2(i+1);    
         ww(i+1)=t(i+1)-T(i)+ww(i);
    else w(i+1)=T(i)-t(i+1)+w(i); 
         T(i+1)=T(i)+t2(i+1); ww(i+1)=ww(i);
    end;
end;
b=[t',T',w',ww'];
[brow,bcol]=size(b);       %����鳤��brow��ʾ������bcol��ʾ����
b=[b,zeros(brow,1)];       %zero����brow�У�1�е������
for j=2:brow
    l=0;             %���г���
    if j-l-1>0
           while b(j,1)<=b(j-l-1,2)
                     l=l+1;
            end;
       b(j,bcol+1)=l;
   end;
end;   
b
g1=w(end)/20           %ƽ���ȴ�ʱ��
g2=sum(T-t)/20            %ƽ������ʱ��
g3=T(end)/20                %ƽ��ÿ���ӷ���Ĺ˿�����
