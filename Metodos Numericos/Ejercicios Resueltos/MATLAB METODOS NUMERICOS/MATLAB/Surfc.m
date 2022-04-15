%Surfc: aparte de dibujar la superficie dibuja las curvas de nivel
[X,Y,Z] = peaks(30);
surfc(X,Y,Z)
colormap hsv
axis([-3 3 -3 3 -10 5])
