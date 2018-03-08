function Example8_8
A=[1 0.4 0.8 0.5 0.5;
0.4 1 0.4 0.4 0.4;
0.8 0.4 1 0.5 0.5;
0.5 0.4 0.5 1 0.6;
0.5 0.4 0.5 0.6 1];
    fuzzy_lamdjjz(A)
end
%%
function[Alamd]=fuzzy_lamdjjz(A)          %������lamd�ؾ������������
[m,n]=size(A);
p=m*n;%����A���ܵ�Ԫ�ظ���
C=A(1:p);%�Ѿ�����һ��������
D=sort(C);%������C�е�Ԫ�ش�С��������
for(i=1:p)
    for(j=i+1:p)
        if(D(i)==D(j))
            D(j)=0;%������C����ͬԪ��ֻ����һ�������ı�Ϊ��
        end
    end
end
E=sort(D);%��D����С�����������
x=0;
for(i=1:p)
    if(E(i)==0)
        x=x+1;%ͳ��E����ĸ���
    end
end
F=E(p:(-1):(x+1));%��E����������Ԫ�ز����Ӵ�С��˳������
s=length(F);
for(i=1:s)
    disp('-------------------');
    lamd=F(i)%˳�δ�F�дӴ�Сȡlamd
    disp('����Ӧ�Ľؾ�����');
    Alamd=A>=F(i)%�õ�lamd�ؾ���
    [C]=fuzzy_jl(Alamd)%�õ�������
end
end
%%
function [C]=fuzzy_jl(A)%������
B=[];
[m1,n1]=size(A);
for(i=1:m1)
     x=0;
    for(j=1:n1)
        if(A(i,j)==1)%�ҵ�ÿһ�е�Ԫ��1
            x=x+1;
            B(i,x)=j;%��ÿһ���ҵ���Ԫ��1�����±�˳�δ����ھ����ÿһ����
        end
    end
end
B;
[m2,n2]=size(B);
for(i=1:m2)
    for(j=2:n2)
        if(B(i,j)~=0)
            B(B(i,j),:)=0;%����ͬ��ֻ����һ��������Ϊ����
        end
    end
end
B;
C=[];
y=0;
for(i=1:m2)
    if(sum(B(i,:))~=0)%�ҵ�������
        y=y+1;
        C(y,:)=B(i,:);%�÷����й��ɾ���C,�õ�������
    end
end
end
%%