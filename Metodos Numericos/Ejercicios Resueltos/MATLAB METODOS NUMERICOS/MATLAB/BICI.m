x01=[-1 -1 1 1];
y01=[0 1 1 0];
x02=[0 0.5 0 0.5 0 0 0 0.5 1 1];
y02=[1 0.5 0 0.5 1 2.25 1.5 1.25 1.25 1];
h=pi/10;
t=0:h:2*pi;
t01=0.5*sin(t)+1;
t02=0.5*cos(t);
t03=0.5*sin(t)-1;
t04=0.5*cos(t);
t05=0.25*sin(t);
t06=0.25*cos(t)+2.5;
plot(x01,y01,'color','k','linewidth',3)
axis([-2 2 -1 4])
grid on
hold on
plot(x02,y02,'linewidth',4)
plot(t01,t02,'color','k','linewidth',3)
plot(t03,t04,'color','k','linewidth',3)
plot(t05,t06,'color','k','linewidth',3)
colormap ('spring')
title('Metodos Numericos- Ejercicio N°1 JARA VENTURA ORIOL','color','b')