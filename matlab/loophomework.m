%��һ�����������ĸ���������֮�ͣ� ��Ƹ���Ϊ������ ��6=1+2+3�� ����6�������� �� [1,500] ֮���ȫ������
clear;
val(1)=0;
as=[];
for n=2:500
    val=[];
    val(1)=0;
    for i=1:n-1
        if(rem(n,i)==0)
            val(end+1)=i;
        end
    end
    k=sum(val);
    if (k==n)
        as=[as,k];
    end
end

as