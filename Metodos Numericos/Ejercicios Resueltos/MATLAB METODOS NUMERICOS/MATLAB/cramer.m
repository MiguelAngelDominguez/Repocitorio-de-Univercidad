clear
clc
%ESTA FUNCION PERMITE RESOLVER SISTEMA DE ECUACIONES 
%MEDIANTE LA REGLA DE CRAMER
%0.3X + 0.52Y + Z    = -0.01
%0.5X +  Y    + 1.9Z = 0.67
%0.1X + 0.3Y  + 0.5Z = -0.44
A=[0.3 0.52 1;0.5 1 1.9;0.1 0.3 0.5];
B=[-0.01;0.67;-0.44];
M=A; N=A; P=A;
M(:,1)=B; N(:,2)=B; P(:,3)=B;
DA=det(A);DM=det(M);DN=det(N);DP=det(P);
X=DM/DA; Y=DN/DA; Z=DP/DA;
disp('La matriz A es:');disp(A);
disp('La matriz B es:');disp(B);
disp('La matriz M es:');disp(M);
disp('La matriz N es:');disp(N);
disp('La matriz P es:');disp(P);
disp('El valor de "X" es:');disp(X);
disp('El valor de "Y" es:');disp(Y);
disp('El valor de "Z" es:');disp(Z);