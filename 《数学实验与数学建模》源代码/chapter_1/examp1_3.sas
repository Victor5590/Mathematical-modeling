	data ex;input x1 x2 factory$@@;/*����$����ʾ�����ַ��ͱ���*/
	cards;
	0	6   f1  0	5   f2  2	5   f3  2	3   f4    4	4   f5  4	3   f6
	5	1   f7  6	2   f8  6	1   f9  7   0   f10  -4	3   f11 -2	2   f12
	-3	2   f13 -3	0   f14 -5	2   f15 1	1   f16   0	-1  f17  0	-2  f18
	-1	-1  f19 -1	-3  f20  -3	-5  f21
	;
	proc cluster /*ϵͳ����*/
	data=ex method=ward ccc pseudo outtree=tree;/*ward����Ҫʹ�ò�ͬ�ľ��෽���ɻ���Ӧ�����Ĺؼ��ʣ�CCC��ʾҪ�����R2����ƫR2 ��CCCͳ������PSEUDOѡ��Ҫ�����αF (PSF)��αT2 (PST2)ͳ���� */
	id factory;
	run;
	proc tree data=tree horizontal; /*ˮƽ��*/
	id factory;;/*����Ϊ����*/
	run;