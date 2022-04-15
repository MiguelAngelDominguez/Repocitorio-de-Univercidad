y='(sin(3*pi*x))/exp(x)';
x=0:3*pi;
fplot(y,[0,3*pi]);
hold on;
z='(cos(3*pi*x))/exp(x)';
fplot(z,[0,3*pi],'r-');
hold on;
