%Capitulo 12 _Ejercicio 12_3.Corrientes y voltajes en circuitos con resistencia
clear
clc
A=[1 1 1 0 0 0;0 -1 0 1 -1 0;0 0 -1 0 0 1;0 0 0 0 1 -1;0 10 -10 0 -15 -5;5 -10 0 -20 0 0 ];
B=[0;0;0;0;0;200];
disp('Concentracion de los reactores');
C=A\B
disp('Matriz inversa');
inv(A)