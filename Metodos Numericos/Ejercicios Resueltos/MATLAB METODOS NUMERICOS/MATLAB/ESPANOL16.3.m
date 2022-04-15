%% Definir la función de crecimiento 
g = @(c) 2*c./(4+0,8*c+c.^2+0,2*c.^3);
%% Trazar la función 
c = 0:0.1:100; 
plot(c, g(c));
xlabel('c'); 
ylabel('g(c)');
%% Encontrar el máximo usando fminsearch 
co = 2; % estimación inicial
f = @(c) -g(c);
[xval, fval] = fminsearch(f, co);
fprintf('El crecimiento de la levadura es máximo cuando la concentración de alimento es igual a c = %g, y la tasa de crecimiento máxima es igual a %g. \n', xval, -fval);
