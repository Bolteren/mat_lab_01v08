clc;
clear; 
 
teta = 3.1e-3; % ������������ ��������
eps = 0.001e-3; % �����������
etl = 10e-3;% �������� �����
Fs = 4.3e-3; % ������� ���������� ��������
Amp = 3.3;   % ���������
t0 = 2.5e-3;
t = (0:eps:etl);
d = (0:Fs:etl) + teta/2 + t0;
% "+ tao/4" - ��� ����� ��������
x = Amp*pulstran(t, d, 'rectpuls', teta);
plot (t,x,'b  -','LineWidth', 2.5) %����, ��� � ������� ����� 
xlabel('t, c','position',[0.01, -0.2, 0]);
ylabel('A, B','position',[-0.001, 3.5 ,0],'rotation',0);
title('������������� ��������');
grid on
figure (1)