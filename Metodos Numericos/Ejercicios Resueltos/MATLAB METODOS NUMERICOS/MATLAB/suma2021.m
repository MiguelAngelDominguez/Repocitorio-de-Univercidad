numero = input('Favor ingresar un numero: '); 
function [band] = esPrimo (numero)
m=2;
band = true
while( band & (m< numero) ) if( mod (numero, m ) == )
band = false else
m = m + 1 end end end
acumulador = 0
while (true)
numero - input("Favor ingresar un numero ó
/ salir: ")
if (numero == 0)
break; end
if(esPrimo (numero))
acumulador += numero; end
end
fprintf("\nLa suma de los numeros primos leidos es igual a: %d', acumulador);
