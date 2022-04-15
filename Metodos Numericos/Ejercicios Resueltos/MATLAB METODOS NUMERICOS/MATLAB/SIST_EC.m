A=input('ingrese los coeficientes de las variables en forma de matriz:  ');
B=input('ingrese las los números después del igual');
d=det(A);
disp(d);
ab=[A B];
c=rref(ab);
disp(c);
