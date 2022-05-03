import numpy as np
import matplotlib.pyplot as plt

def raicesEcuacion_2(a,b,c):
    determinate=caso=((b**2)-(4*c*a))**(1/2)
    if(caso>=0):caso="Reales"
    else:caso="Imagianrios"
    x1= (-b+determinate)/(2*a)
    x2= (-b-determinate)/(2*a)
    return x1,x2,determinate,caso

def Graficar_funcion(fx,inicio, parada,semilla=500):
    xi=np.linspace(inicio,parada,semilla)
    fi=fx(xi)
    plt.plot(xi,fi, label='f(x)')
    plt.axhline(0, color='k')
    plt.title('Grafica de Funcion')
    plt.legend()
    plt.show()


print("la ecuacion cuadratica tiene esta forma : ")
print("f(x) = ax^2 + bx + c")
a = -0.5
b = 2.50
c = 4.5
print("________________________________")
print(f"teniendo una forma de : {a}x^2 + {b}x +{c} \n\n")
x1,x2,determinate,caso=raicesEcuacion_2(a,b,c)
print(" - las raices de la ecuacion son ",caso, " , teniendo una determinate de : ",determinate)
print(f" - las raices son : x1 -> {x1}  x2 -> {x2}")

fx = lambda x: (a*x**2)+(b*x)+c
Graficar_funcion(fx,-50,50)
