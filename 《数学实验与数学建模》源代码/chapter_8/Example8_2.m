function Example8_2
A=[164.51	86.43	25.49	51.24
160.53	81.47	23.84	48.62
158.17	81.16	21.44	46.72
];%6����׼ģʽ
B=[162.23,84.34,22.11,47.56];         %���б����
MAX = max(A)+1;
MIN = min(A)-1;
for i = 1:4
    A(:,i) = (A(:,i) -MIN(i)) / (MAX(i) - MIN(i));
    B(:,i) = (B(:,i) -MIN(i)) / (MAX(i) - MIN(i));
end
A,B                             %�����ݱ�׼��
fuzzy_mssb(2,A,B)               %���ú���ʹ�������С�������б�
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
