function [ dist,p ] = floyd( a,sb,db ) %aΪ�ڽӾ���sbΪ�����ţ�dbΪ�ص���š��������dist��·��l
n=size(a,1);
ay=a;
path=zeros(n);
for k=1:n
    for i=1:n
        for j=1:n
            if a(i,j)>a(i,k)+a(k,j)
                a(i,j)=a(i,k)+a(k,j);
                path(i,j)=k;
            end
        end
    end
end
    dist=a(sb,db);
    p=db;
    k=db;
    while k~=sb
        for n=sb+1:(k-1)
            if ay(n,k)==a(sb,k)-a(sb,n)
                p=[n,p]
                k=n;
            end
        end
    end
    p=[sb,p];
    
%   ����floyd�㷨�����̾���,���������·�̡�




