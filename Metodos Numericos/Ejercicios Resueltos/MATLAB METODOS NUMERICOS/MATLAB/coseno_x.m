clear;
clc;
%x=[0:+pi/12:pi];
%m=pi;
x=[0:+0.2618:3.1416];
y=cos(x);
a= diff(y);
disp('valores de "x"');disp(x); 
disp('valores de "x"');disp(y);
disp('valores de "a"');disp(a);
fplot(y,[0,3.1416]);

