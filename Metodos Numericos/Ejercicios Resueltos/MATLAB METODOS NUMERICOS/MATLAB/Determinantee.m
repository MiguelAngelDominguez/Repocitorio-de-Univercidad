%calculo de variables de un sistema de ecuaciones
%x+4y-2z=10;
M1=[1 4 -2;2 -2 6;1 3 2];
M2=[5 1 0; 1 -6 2; 5 2 1];
M3=[1 0 5; 3 2 5; 4 1 6];
D1=det(M1);D2=det(M2);D3=det(M3);
disp ('La matriz es: '); disp(M1); 
disp ('La determinate es: '), disp(D1);
x=D2/D1;
y=D3/D1;
disp ('El valor de x es: '); disp(x);
disp ('El valor de y es: '); disp(y);

