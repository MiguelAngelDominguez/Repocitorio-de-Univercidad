%SUMA DE LOS NUMEROS NATURALES
function y=suma;
input('SUMA DE LOS "N" PRIMEROS NUMEROS NATURALES');
n = input('Por Favor ingresar un numero: '); 
suma=n*(n+1)/2;
%n=[1:100];
%suma=n(100)*(n(100)+1)/2;
fprintf('\nLa suma de los %d primeros numeros naturales es: %d\n',n,suma);
