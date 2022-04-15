clc;
%CUBO
patch([0 0 1 1],[0 1 1 0],[1 1 1 1],'r');
patch([0 1 1 0],[0 0 0 0],[0 0 1 1],'b');
patch([0 0 0 0],[0 1 1 0],[0 0 1 1],'y');
view(-37.5, 30)
syms r
a=r^3;
vol1=diff(a);
vol2=diff(a,2);
disp('Primera derivada: ');
disp(vol1);
disp('Segunda derivada: ');
disp(vol2);
axis square

