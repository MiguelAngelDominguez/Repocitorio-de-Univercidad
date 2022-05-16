%CALCULO DE VARIABLES DE UN SISTEMA DE ECUACIONES
% x+3y-56z=45 ... 3x-4y+6z=88 ... -36y+45=12
A=[1 3 -56; 3 -4 6; 0 -36 45]
D=det(A)
V=[45 88 12]'
h_x = horzcat(V,A(:,2:3))
h_y = horzcat(A(:,1),V,A(:,3))
h_z = horzcat(A(:,1:2),V)

x= det(h_x)/det(A)
y= det(h_y)/det(A)
z= det(h_z)/det(A)
disp([x y z])