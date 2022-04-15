clc; clear;
close all
x=-50:1:50; y=30-abs(x); f = diff(y);
fprintf('la derivada es: ');
disp (f);
cylinder(y);
