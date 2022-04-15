%Capitulo 12 _Tarea 12_1.Analisis en estado estacionario de un sistema de reactores
clear
clc
A=[6 0 -1 0 0; -3 3 0 0 0;0 -1 9 0 0;0 -1 -8 11 -2;-3 -2 0 0 4];
B=[50;0;160;0;0];
disp('Concentracion de los reactores');
C=A\B
disp('Matriz inversa');
inv(A)