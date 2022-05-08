from ast import Lambda
import numpy as np
import matplotlib.pyplot as plt
import math

def Bisec(fun, x_a, x_b, eps=None, steps=10):    
    for n in range(steps + 1):
        xr=(x_a+x_b)/2
        ea=abs((x_b-x_a)/(x_b+x_a))
        if (ea<eps):
            return xr
        if f(xr) == 0:
            return xr
        
        test=f(x_a)*f(xr)
        if test < 0:
            x_b = xr
        elif test>0 :
            x_a = xr
        else:
            ea=0
        
    return xr

def PosicionFalsa(fun,x_a,x_b,eps=None):
    tabla = []
    tramo = abs(x_b-x_a)
    fa = fun(x_a)
    fb = fun(x_b)
    while not(tramo<=eps):
        c = x_b - (fb*(x_a-x_b)/(fa-fb))
        fc = fun(c)
        tabla.append([x_a,c,x_b,fa,fc,fb,tramo])
        cambio =(fa)*(fc)
        if cambio>0:
            tramo = abs(c-x_a)
            x_a = c
            fa = fc
        else:
            tramo = abs(b-c)
            x_b = c
            fb = fc
            
    tabla = np.array(tabla)
    ntabla = len(tabla) 
    return tabla,ntabla,tramo

def Graficar_funcion(fx,inicio, parada,semilla=1000):
    xi=np.linspace(inicio,parada,semilla)
    fi=fx(xi)
    plt.plot(xi,fi, label='f(x)')
    plt.axhline(0, color='k')
    plt.title('Grafica de Funcion')
    plt.legend()
    plt.show()


print("la ecuacion cuadratica tiene esta forma : ")
print("f(x) = ax^5 + bx^4 + cx^3 + dx^2 + ex + f")
a = 0.7
b = -8
c = 44
d = -90
e = -25182 
f_ = 0
print("________________________________")
print(f"teniendo una forma de :  {a}x^5 + {b}x^4 + {c}x^3 + {d}x^2 + {e}x + {f_} \n\n")

f = lambda x: (a*x**5)+(b*x**4)+(c*x**3)+(d*x**2)+(e*x)+f_
Graficar_funcion(f,-30,30)
print("________________________________")
print(" -  por metodo de biseccion :")
x=Bisec(f,0.5,1,0.1)
# print(f" - para en la iteracion : {n}")
print(f" - x : {x}")

print("________________________________")
print(" - por metodo de la falsa posicion : ")
tabla,ntabla,tramo=PosicionFalsa(f,0.5,1,0.02)
np.set_printoptions(precision=4)
for i in range(0,ntabla,1):
    print('iteración:  ',i)
    print('[a,c,b]:    ', tabla[i,0:3])
    print('[fa,fc,fb]: ', tabla[i,3:6])
    print('[tramo]:    ', tabla[i,6])

print('raiz:  ',c)
print('error: ',tramo)