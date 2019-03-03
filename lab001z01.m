clc;
clear;
teta = 2.3*10^-3;
Amp = 3.3;
t0 = 1.3*10^-3;
t_end = t0 + teta;
t = [0:0.01*10^-3:5*10^-3];
for i=1:length(t)
    if (t(i)>=t0 && t(i)<=t_end); 
        y(i)= Amp; 
    else 
        y(i)=0; 
    end 
end
figure(1);
plot(t, y, 'k-', 'LineWidth', 2.5)
xlabel('t, c', 'position', [5.3*10^-3, 0.2, 0]);
ylabel('A, B', 'position', [-0.5*10^-3, 3.5, 0], 'rotation', 0);% X y
title('Еденичный прямоугольный импульс вариант8');
grid on;