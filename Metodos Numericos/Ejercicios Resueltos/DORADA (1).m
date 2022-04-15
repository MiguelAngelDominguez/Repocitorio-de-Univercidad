clc,clear
%SECCIÓN DORADA
%
%'2'sin(x) - (x.^2/10)'
m=input('INGRESE LA FUNCION: ');
f=Inline(m);
x=-5:5;
y=f(x);
plot(x,y);
grid on;

a=[-10 10];
b=a-a;
hold on
plot (a,b);
hold off;