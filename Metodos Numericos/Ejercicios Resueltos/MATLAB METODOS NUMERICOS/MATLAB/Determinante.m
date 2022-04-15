%calculo de variables de un sistema de ecuaciones
%x+4y=5;
%3x-6y=10;
M1=[1 4; 3 -6];
M2=[5 4; 10 -6];
M3=[1 5; 3 10];
D1=det(M1);D2=det(M2);D3=det(M3);
disp ('La matriz es: '); disp(M1); 
disp ('La determinate es: '), disp(D1);
x=D2/D1;
y=D3/D1;
disp ('El valor de x es: '); disp(x);
disp ('El valor de y es: '); disp(y);