clear;
clc;
D=[1 2 -24];
d=[1 -4];
conv(D,d);
D
d
[q,r]=deconv(D,d);
q
r