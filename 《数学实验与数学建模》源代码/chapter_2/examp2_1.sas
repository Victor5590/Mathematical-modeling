goptions vsize=25cm hsize=25cm;/*g��ʾͼ��options��ʾѡ��vsize=25cm����߶�Ϊ25*/
data a;                             /*aΪ������*/
input  sha@@;                      /*@@Ϊ�Զ�����*/
year=intnx('year','1jan1964'd,_n_-1);/*intnx���ȡʱ�����*/
format year year4.;                /*�갴��λ����ʾ*/
cards;
97 130 156.5 135.2 137.7 180.5 205.2 190 188.6 196.7
180.3 210.8 196 223 238.2 263.5 292.6 317 335.4 327
321.9 353.5 397.8 436.8 465.7 476.7 462.6 460.8
501.8 501.5 489.5 542.3 512.2 559.8 542 567
;
run;
proc gplot;                            /*��ͼ*/
plot sha*year;                        /*������Ժ���*/
symbol v=circle i=join c=blue;     /* v=circle��ʾ��СԲȦ����ʾ, i=join�ѵ�����������c=blue ��ʾ��ɫΪ��ɫ*/
proc arima data=a;
identify var=sha nlag=22;           /*�ӳٽ���Ϊ22��*/
run;