%TOROIDE
syms h r
 
f=pi*2*(r+r*h-h);
disp('derivada con respecto a h')
dh=diff(f,h,1)
disp('derivada con respecto a r')
dr=diff(f,r,1)
 
dhr=dh+dr;
 
ezsurf(r,h,dhr)
 
hold on;
