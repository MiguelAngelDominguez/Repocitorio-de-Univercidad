%CONO
syms h r
 
v=h*pi*r*2/3;
disp('derivada con respecto a h')
dh=diff(v,h,1)
disp('derivada con respecto a r')
dr=diff(v,r,1)
 
dhr=dh+dr;
ezsurf(v,h,dhr)
 
hold on;
