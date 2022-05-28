from ast import Lambda
import numpy as np
import matplotlib.pyplot as plt

def Graficar_funcion(fx,inicio, parada,semilla=10000):
    xi=np.linspace(inicio,parada,semilla)
    fi=fx(xi)
    plt.plot(xi,fi, label='f(x)')
    plt.axhline(0, color='k')
    plt.title('Grafica de Funcion')
    plt.legend()
    plt.show()

fx  = lambda x: -1 + 5.5*x - 4*x**2 + 0.5*x**3
dfx = lambda x: 1.5*x**2 - 8*x + 5.5
Graficar_funcion(fx,-30,30)

x0 = 20
tolera = 0.001

tabla = []
tramo = abs(2*tolera)
xi = x0
while (tramo>=tolera):
    xnuevo = xi - fx(xi)/dfx(xi)
    tramo  = abs(xnuevo-xi)
    tabla.append([xi,xnuevo,tramo])
    xi = xnuevo

tabla = np.array(tabla)
n = len(tabla)

print(['xi', 'xnuevo', 'tramo'])
np.set_printoptions(precision = 4)
print(tabla)
print('raiz en: ', xi)
print('con error de: ',tramo)