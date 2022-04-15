%Capitulo 12 _Tarea 12_8.Analisis en estado estacionario de un sistema de reactores
%Inciso A
clear
clc
A=[13.422 0 0 0 ;-13.422 12.252 0 0 ;0 -12.252 12.377 0 ;0 0 -12.377 11.979 ];
B=[750.5;300;102;30];
disp('Concentracion de los reactores');
C=A\B
disp('Matriz inversa');
inv(A)