function [ m ] = prime_judgement( x )
%����һ�������жϸ����Ƿ�Ϊ�������Ƿ���1������Ϊ0.
%   eg.����x=5������m=1������x=6������m=0
k=2;
    if x==1
        m=0;
    else
        while rem(x,k)~=0
            k=k+1;
        end
            if k==x
                m=1;
            else
                m=0;
        end
    end
end

