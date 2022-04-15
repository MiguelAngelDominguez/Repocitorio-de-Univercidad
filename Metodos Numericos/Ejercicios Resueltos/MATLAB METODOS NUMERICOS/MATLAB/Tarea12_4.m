%Capitulo 12 _Tarea 12_4.Analisis en estado estacionario de un sistema de reactores
clear
clc
A=[8 0 -3 0 0;-4 4 0 0 0;0 -2 10 0 0;0 0 -7 10 -3;-4 -2 0 0 6];
B=[50;0;160;0;0];
disp('Concentracion de los reactores');
C=A\B
disp('Matriz inversa');
inv(A)