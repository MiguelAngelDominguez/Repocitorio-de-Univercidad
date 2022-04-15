%Capitulo 12 _Tarea 12_1.Analisis en estado estacionario de un sistema de reactores
clear
clc
A=[7 0 -1 0 0;-4 4 0 0 0;0 -1 9 0 0;0 -2 -8 12 -2;-3 -1 0 0 4];
B=[240;0;80;0;0];
disp('Concentracion de los reactores');
C=A\B
disp('Matriz inversa');
inv(A)