%"Encontrar el valor de T de la siguiente formula"
% g =(480000-1200*T-3750*log1p(150./(T-250)))
%% Definir la función de crecimiento 
g = @(T)(480000-1200*T-3750*log1p(150./(T-250)));
%% Trazar la función
T = 251:1:399; 
plot(T, g(T));
xlabel('T'); 
ylabel('g(T)');
%% Encontrar el máximo usando fminsearch 
co = 251; % suposición inicial
f = @(T) -g(T); % 
[xval, fval] = fminsearch(f, co); % 
fprintf('La utilidad es máxima cuando la temperatura de operación es igual a T = %g, y la tasa de utilidad máxima es igual a %g. \n', xval, -fval);
% ccvcc
% ccvcc