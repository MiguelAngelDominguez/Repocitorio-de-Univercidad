clear
clc
%CILINDRO
r=4;
[x,y,z]=cylinder();
x=5+r*x;
y=5+r*y;
z=5+r*z;
surf(x,y,z);
axis square
%hallamos las derivadas parciales
syms r h
f=pi*r^2*h;
disp('derivada con respecto a r')
fr=diff(f,r,1)
disp('derivada con respecto a h')
fh=diff(f,h,1)
frh=diff(fr,r,1)
fhr=diff(fh,r,1)
 
t=fr+fh;
t
[ r h ]=meshgrid(-pi:0.1:pi);
t= pi*r.^2 + 2*pi*h.*r;
pause (3);
surf(h, r, t)
