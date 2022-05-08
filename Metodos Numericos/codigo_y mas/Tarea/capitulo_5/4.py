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

def falsap(funcion, x_a, x_b, iteraciones=100, error_r=0.001):
    # Se inicializan las variables 
    solucion= None
    contador = 0
    error_calculado = 101
    #Se evalua si la raiz esta dentro del intervalo
    if funcion(x_a) * funcion(x_b) <= 0:
        #Se procede a calcular la funcion 
        while contador <= iteraciones and error_calculado>error_r:
            contador+=1
            solucion = x_b-((funcion(x_b)*(x_b - x_a))/(funcion(x_b) - funcion(x_a)))
            error_calculado = abs((solucion - x_a)/solucion)*100
            #Se redefine el nuevo intervalo con los signos 
            if funcion(x_a) * funcion(solucion)>=0: 
                x_a = solucion
            else: 
                x_b = solucion 
                
        print('la solucion aproximada es: {:.3f}'.format(solucion))
        print('encontrada en: {:.0f}'.format(contador) + 'iteraciones')
        print('con un error de:{:.3f}'.format(error_calculado) + '%' )
    else:
        print('no existe solucion en ese intervalo')


def Graficar_funcion(fx,inicio, parada,semilla=1000):
    xi=np.linspace(inicio,parada,semilla)
    fi=fx(xi)
    plt.plot(xi,fi, label='f(x)')
    plt.axhline(0, color='k')
    plt.title('Grafica de Funcion')
    plt.legend()
    plt.show()


print("la ecuacion cuadratica tiene esta forma : ")
print("f(x) =cx^3 + dx^2 + ex + f")
a = -2.75
b = 18
c = -21
d = -12
print("________________________________")
print(f"teniendo una forma de :  {a}x^3 + {b}x^2 + {c}x + {d}  \n\n")

f = lambda x: (a*x**3)+(b*x**2)+(c*x)+(d)
Graficar_funcion(f,-100,100)

print("________________________________")
print(" - por metodo de la falsa posicion : ")
falsap(f,-1,1)
# tabla,ntabla,tramo=PosicionFalsa(f,0.5,1,0.02)
# np.set_printoptions(precision=4)
# for i in range(0,ntabla,1):
#     print('iteración:  ',i)
#     print('[a,c,b]:    ', tabla[i,0:3])
#     print('[fa,fc,fb]: ', tabla[i,3:6])
#     print('[tramo]:    ', tabla[i,6])

# print('raiz:  ',c)
# print('error: ',tramo)