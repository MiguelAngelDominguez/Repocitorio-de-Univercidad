clear;
clc;
%CALCULO DE VARIABLES DE UN SISTEMA DE ECUACIONES
%X+Y-3Z=-9
%2X+5Y+Z=9
%3X-2Y+3Z=-1
A=[1 1 -3;2 5 1; 3 -2 3]; D=det(A);
B=[-9 1 -3; 9 5 1; -1 -2 3]; Dx=det(B); 
C=[-9 1 -3; 9 2 1; -1 3 3]; Dy=det(C);
F=[-9 1 1; 9 2 5; -1 3 -2]; Dz=det(F);
X=Dx/D; Y=Dy/D; Z=Dz/D;
disp('EL VALOR DE X ES IGUAL A:'); disp(X);
disp('EL VALOR DE Y ES IGUAL A:'); disp(Y);
disp('EL VALOR DE Z ES IGUAL A:'); disp(Z);
%x=rand(m,n)
%Y=inv(x)
