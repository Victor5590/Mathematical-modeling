function Example8_10
%����ԭʼ���ݣ����ú���
R=[1 0.1 0.2;0.1 1 0.3;0.2 0.3 1];
[A]=fuzzy_cdbb(R)
end
%%
function [A]=fuzzy_cdbb(R)  %��ģ�����ƾ����󴫵ݱհ�
js0=0;
while(1)
A=Max_Min(R,R);
js0=js0+1;
if(A==R)
    break;
else
    R=A;
end
end
end
%%
function[C]=Max_Min(A,B) %ģ������ĺϳ�,��ȡС��ȡ��
C=[];
[m,s1]=size(A);
[s2,n]=size(B);
if(s1~=s2)
     disp('A���в�����B����');
else
for(i=1:m)
    for(j=1:n)
        C(i,j)=0;
        for(k=1:s1)
            x=0;
            if(A(i,k)<B(k,j))
                x=A(i,k);
            else
                x=B(k,j);
            end
            if(C(i,j)<x)
                C(i,j)=x;
            end
        end
    end
end
end
end
%%
