%Capitulo 11 _Descomposicion de Cholesky_Ejemplo 11.2
function x=cholesky(A)
%input:
%A=coeficiente de la matriz
A=[6 15 55; 15 55 225; 55 225 979];
[m,n]=size(A);
if m~=n, error ('Matriz error');end
b=[sum(A(1,:));sum(A(2,:));sum(A(3,:))];
U=chol(A);
disp('U=');disp(U)
d=U'\b;
disp('Forma directa de resolver el sistema de ecuaciones');
x=U\d;
disp('x=');disp(x);
transpose(U)