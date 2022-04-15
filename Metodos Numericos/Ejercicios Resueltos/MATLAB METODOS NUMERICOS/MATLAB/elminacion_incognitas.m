%MÉTODO DE ELIMINACION DE INCÓGNITAS PARA RESOLVER SISTEMA DE ECUACIONES
clear
clc
%3X + 2Y =18
%-X + 2Y =2
A=[3 2;-1 2];
B=[18;2];
X=(B(1,1)*A(2,2)-A(1,2)*B(2,1))/(A(1,1)*A(2,2)-A(1,2)*A(2,1));
Y=(A(1,1)*B(2,1)-B(1,1)*A(2,1))/(A(1,1)*A(2,2)-A(1,2)*A(2,1));
disp('MATRIZ "DE VARIBLES" ');disp(A);
disp('MATRIZ "DE RESPUESTA" ');disp(B);
fprintf('EL VALOR DE "X" ES %d y EL VALOR DE "Y" ES %d ', X,Y);