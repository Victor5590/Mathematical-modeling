function Example8_1
A=[0.7 0.5 0.2 0.4;0.8 0.3 0.4 0.2];   %ģʽA��B
B=[0.6 0.4 0.5 0.3];                   %ģʽC
fuzzy_mssb(1,A,B)  %���ú���
end
%%
function[C]=fuzzy_mssb(model,A,B)         %ģ��ģʽʶ��
C=[];
[m,n]=size(A);%A�а������ɴ�ʶ��ģʽ
s=length(B);%B�Ǳ�׼ģʽ
if(n~=s)
     disp('����������ά����һ��');
else
     if(model==1)                        %��������
         for(i=1:m)
             x=max(min(A(i,:),B));
             y=min(max(A(i,:),B));
             C(1,i)=(x+(1-y))/2;
         end     
     elseif(model==2)                    %��С���������
            for(i=1:m)
               x=sum(min(A(i,:),B));
               y=sum(max(A(i,:),B));
               C(1,i)=x/y;
            end
      elseif(model==3)                   %��Сƽ��������
            for(i=1:m)
               x=2*sum(min(A(i,:),B));
               y=sum(A(i,:)+B);
               C(1,i)=x/y; 
            end
      elseif(model==4)                   %����������
            for(i=1:m)
                C(1,i)=1-sum(abs(A(i,:)-B))/n;
            end
      elseif(model==5)                   %ŷ�����������
            for(i=1:m)
                C(1,i)=1-sqrt((A(i,:)-B)*(A(i,:)-B)')/sqrt(n);
            end
      else
            disp('ģ�͸�ֵ����');
      end
 end
end
%%
