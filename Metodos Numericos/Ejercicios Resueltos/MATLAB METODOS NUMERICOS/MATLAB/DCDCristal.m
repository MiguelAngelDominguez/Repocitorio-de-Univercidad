clc; clear;
x = 0:2*pi/10:6;
y = 1.3 + cos(x + pi/3);
cylinder(y);
cylinder(y,100);
diff(y)



