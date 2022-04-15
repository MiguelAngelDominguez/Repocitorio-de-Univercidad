%INTEGRAL DEFINIDA 
%%%(2*sqrt(x))^2      limite 0 a 4
%sin(x) + 1         limite de 0 a 1
% sin(x) + 3*x + 1
syms x ;
f=input('ingrese la funcion    :');
F=inline(char(f));
a=input('limite inferior:   ');
b=input('limite superior:   ');
integra=int(f)
 F=int(f,a,b)
g=char(integra);
ezsurf(g);
%(x+1)/((x^2 +1)*(x^2 + 4))
%sin(x)*cos(x)