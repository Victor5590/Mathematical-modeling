load sj.txt
fen=sj(:,1:2:20);
gai=sj(:,2:2:20);
for i=1:4
    for j=1:10
        low(i,j)=min(fen(4*i-3:4*i,j));
    end
end
dlmwrite('data2_1.txt',low)  %����ͷֵľ���д�����ı��ļ�data2_1.txt����Lingoʹ��
