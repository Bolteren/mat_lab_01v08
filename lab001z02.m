clc;
clear; 
 
teta = 3.1e-3; % длительность импульса
eps = 0.001e-3; % погрешность
etl = 10e-3;% конечное время
Fs = 4.3e-3; % частота повторения импульса
Amp = 3.3;   % амплитуда
t0 = 2.5e-3;
t = (0:eps:etl);
d = (0:Fs:etl) + teta/2 + t0;
% "+ tao/4" - это сдвиг импульса
x = Amp*pulstran(t, d, 'rectpuls', teta);
plot (t,x,'b  -','LineWidth', 2.5) %Цвет, тип и толщина линии 
xlabel('t, c','position',[0.01, -0.2, 0]);
ylabel('A, B','position',[-0.001, 3.5 ,0],'rotation',0);
title('Прямоугольные импульсы');
grid on
figure (1)