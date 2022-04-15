clear
clc
syms x y
f=input('Ingrese la función:')
n=input('Ingrese la cantidad de veces a derivar: ')
dev1=diff(f,x,n);
dev2=diff(f,y,n);
disp ('Derivada con respecto a x:');
disp(dev1);
disp ('Derivada con respecto a y:');
disp(dev2);
%explot(dev1);
%explot(dev2);
subplot(2,2,1);
ezsurf(f);
hold on;

%2*x^2-3*x/5
%x^3+5*x-10
%2*x^4+3*x^2-x+4