clear;
clc;
%CALCULO DE VARIABLES DE UN SISTEMA DE ECUACIONES
%X+Y=5;
%3X-5Y=15;
A=[1 1;3 -5]; D=det(A);
B=[5 1; 15 -5]; Dx=det(B); 
C=[1 5; 3 15]; Dy=det(C);
X=Dx/D; Y=Dy/D;
disp('EL VALOR DE X ES IGUAL A:'); disp(X);
disp('EL VALOR DE Y ES IGUAL A:'); disp(Y);
