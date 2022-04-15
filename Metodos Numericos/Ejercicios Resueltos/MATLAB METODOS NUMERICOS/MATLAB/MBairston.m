function bairstowv1 (a,r0,s0,EE )
% f n ( x ) = a {n}?x ˆ{n}+a {n?1}?x ˆ{n?1}+...+ a {2}?x ˆ{2}+ a {1}?x ˆ{1}+ a {0}
% a = [ a {n} a {n?1} . . . a {2} a {1} a {0}]
% r0??? Valor inicial de r
% s0??? Valor inicial de s
% EE???Error estimado
n=length(a); % Grado del polinomio ( n?1)
a=a( n:-1:1);
if (mod ( n-1,2~= 0 ) % mod: Modulo despues de la division : mod (X,Y ) =X?Y?f l o o r (X/Y)
m= (n-2) / 2 ; % Grado del polinomio ( n?1) es impar
else
m= (n-3) / 2 ; % Grado del polinomio ( n?1) es par
end
for jj =1:m
r = r0 ; s = s0 ;
Ear = 1000; Eas = 1000;
while Ear>EE||Eas>EE
b ( n ) = a ( n ) ; % Calculo de los b
b ( n*1) = a ( n*1)+ r*b ( n ) ;
fo r j = n?2:?1:1
b ( j ) = a ( j ) + r*b( j +1)+s*b ( j +2) ;
end
c ( n ) = b ( n ) ; % Calculo de los c
c ( n*1) = b ( n*1)+ r*c ( n ) ;
fo r j = n?2:?1:2
c( j ) = b ( j ) + r*c ( j +1)+s ( 1 )*c ( j +2) ;
end
d r = ?(?c ( 3 )?b ( 2 ) +b ( 1 )?c ( 4 ) ) / ( c ( 2 )?c ( 4 )?c ( 3 ) ˆ 2 ) ; % Solu cion d e l sistema
ds = (?c( 2 )?b ( 2 ) +c ( 3 )?b ( 1 ) ) / ( c ( 2 )?c ( 4 )?c ( 3 )^2 ) ;
r = r + dr ; s = s+ds ;
Ear = abs ( dr / r )*100; Eas = abs ( ds / s )*100;
end
x(2? j j ?1) = ( r +sq r t ( r^2+4?s ) ) / 2 ;
x (2? j j ) = ( r?sq r t ( r^2+4?s ) ) / 2 ;
a = b ( 3 : n ) ;
n = leng th ( a ) ;
r0 = r ; s0 = s ;
end
r = ? a ( 2 ) ; s = ?a ( 1 ) ;
i f n==2
x (2? j j +1) = ?s / r ;
e l s e i f n==3
x (2? j j +1) = ( r +sq r t ( r^2+4?s ) ) / 2 ;
x (2? j j +2) = ( r?sq r t ( r^2+4?s ) ) / 2 ;
else
disp ('e r r o r')
end
s a l i d a =[ x ’ ] ;
disp ( s a l i d a )