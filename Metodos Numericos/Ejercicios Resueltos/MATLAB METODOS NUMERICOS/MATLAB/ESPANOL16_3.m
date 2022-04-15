%"Encontrar el valor de C de la siguiente formula"
% g= 2c/(4+0.8c+c^2+0.2*c^3)
%% Definir la funci�n de crecimiento 
g = @(c) 2*c./(4+0.8*c+c.^2+0.2*c.^3);
%% Trazar la funci�n
c = 0:0.1:100; 
plot(c, g(c));
xlabel('c'); 
ylabel('g(c)');
%% Encontrar el m�ximo usando fminsearch 
co = 0; % suposici�n inicial
f = @(c) -g(c);
[xval, fval] = fminsearch(f, co);
fprintf('El crecimiento de la levadura es m�ximo cuando la concentraci�n de alimento es igual a c = %g, y la tasa de crecimiento m�xima es igual a %g. \n', xval, -fval);