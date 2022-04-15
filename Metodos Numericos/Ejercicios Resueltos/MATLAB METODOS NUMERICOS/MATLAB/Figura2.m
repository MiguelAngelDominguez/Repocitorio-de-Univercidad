clc;
nombref='2*x.^3+3*x.^2-12*x+6';
x=-4;0.05;4;
eval (nombref);
fplot(nombref,[-4,4]);