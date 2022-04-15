input('ax^2+bx+c=0');
a=input('ingrese el valor de "a" para la funcion: ');
b=input('ingrese el valor de "b" para la funcion: ');
c=input('ingrese el valor de "c" para la funcion: ');
if a~=0
 r1 =-c / b;
 %fprintf('\nr1 de la función ax^2+bx+c=0 es:%d',r1);
disp('r1');disp(r1);
elseif a<0
    b=sqrt(abs(a));
    else
        b=sqrt(a);
end 
        
        