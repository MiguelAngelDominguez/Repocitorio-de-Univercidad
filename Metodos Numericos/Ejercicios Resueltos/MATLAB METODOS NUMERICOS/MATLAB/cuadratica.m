clc;
%GRAFICAR UNA FUNCION
nombre='3*x.^2-5';
x=[1 2 3];
eval(nombre);
fplot(nombre,[-3,3]);