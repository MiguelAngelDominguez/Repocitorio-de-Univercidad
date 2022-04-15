clear
clc
%ESFERA
close all;
[x,y,z]=sphere();
k=3;
%hallamos la derivadas parciales
syms r h
f=(4*pi*r^3)/3;
 
disp('derivada con respecto a r')
fr=diff(f,r,1)
 
frh=diff(fr,r,1)
 
t=fr;
t
[ r h ]=meshgrid(-pi:0.1:pi);
t= 4*pi.*r.^2;
surf (k*x,k*y,k*z)
pause (3);
surf(h, r, t)
