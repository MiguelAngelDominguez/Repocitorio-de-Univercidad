%"Encontrar el valor de T de la siguiente formula"
% g =(480000-1200*T-3750*log1p(150./(T-250)))
%% Definir la funci�n de crecimiento 
g = @(T)(480000-1200*T-3750*log1p(150./(T-250)));
%% Trazar la funci�n
T = 251:1:399; 
plot(T, g(T));
xlabel('T'); 
ylabel('g(T)');
%% Encontrar el m�ximo usando fminsearch 
co = 251; % suposici�n inicial
f = @(T) -g(T); % 
[xval, fval] = fminsearch(f, co); % 
fprintf('La utilidad es m�xima cuando la temperatura de operaci�n es igual a T = %g, y la tasa de utilidad m�xima es igual a %g. \n', xval, -fval);
% ccvcc
% ccvcc