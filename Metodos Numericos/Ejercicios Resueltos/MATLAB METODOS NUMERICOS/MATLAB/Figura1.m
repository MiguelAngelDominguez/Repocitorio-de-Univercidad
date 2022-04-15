clc;
%graficar una funcion
nombre='3*x.^2-5';
x=[1 2 4];
eval (nombre);
fplot(nombre,[-3,3]);