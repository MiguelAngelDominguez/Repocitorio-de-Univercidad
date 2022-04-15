clear;clc;
%Uso de MATLAB para manipular ecuaciones algebraicas lineales
%Primero, introducimos la matriz [A] y el vector {B},
A=[1 1/2 1/3; 1 2/3 2/4; 1 3/4 3/5];
%B=[1.8333;2.1667;2.35];
B=[1+1/2+1/3;1+2/3+2/4;1+3/4+3/5];
disp('A=');disp(A);
disp('B=');disp(B);
% se determina el número de condición para [A]
C=cond(A);
disp('Número de condición para [A]');disp(C);
%PRIMERA FORMA
%CON EL SIMBOLO DE DIVISION HACIA IZQUIERDA
X=A\B;
disp('PRIMERA FORMA PARA HALLAR LOS VALORES DE X UTILIZANDO "\"');disp(X);
%FORMA DIRECTA
X2=inv(A)*B;
disp('PRIMERA FORMA PARA HALLAR LOS VALORES DE X UTILIZANDO "inv"');disp(X2);
