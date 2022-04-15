n=input('ingrese la cantidad de los primeros numeros que desea sumar: ');
p=[1 2 3 4 5 6 7 8 9];
for x=1:1
    suma=0;
    for y=1:n
        suma=suma+p(x,y);
        
    end
    fprintf('\nLa suma de la fila es:', suma);
end
disp(suma);