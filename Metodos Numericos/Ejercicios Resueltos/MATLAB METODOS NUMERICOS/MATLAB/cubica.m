clear;
clc;
y='2*x.^3-3*x.^2-12*x+6';
x=-1:0.05:4;
eval(y);
fplot(y,[-3,3]);