import numpy as np
import matplotlib.pyplot as plt

tramo=0
i=0

def puntofijo(gx,a,tolera, iteramax = 15):
    i = 1 # iteración
    b = gx(a)
    tramo = abs(b-a)
    while(tramo>=tolera and i<=iteramax ):
        a = b
        b = gx(a)
        tramo = abs(b-a)
        i = i + 1
    respuesta = b
    
    if (i>=iteramax ):
        respuesta = np.nan
    print(tramo)
    print(i)
    return(respuesta)

#FUNCION : F(X) = 2SEN(X^1/2)-X    G(X)=2SEN(X^1/2)

fx = lambda x: 2*np.sin(np.sqrt(x))-x
gx = lambda x: 2*np.sin(np.sqrt(x))

a = 0.5 # intervalo
b = 100
tolera = 0.001
iteramax = 100  # itera máximo
muestras = 51  # gráfico
tramos = 50

respuesta = puntofijo(gx,a,tolera)
print(respuesta)



# GRAFICAMOS
xi = np.linspace(a,b,muestras)
fi = fx(xi)
gi = gx(xi) 
yi = xi

plt.plot(xi,fi, label='f(x)')
plt.plot(xi,gi, label='g(x)')
plt.plot(xi,yi, label='y=x')

if (respuesta!= np.nan):
    plt.axvline(respuesta)
plt.axhline(0, color='k')
plt.title('Punto Fijo')
plt.legend()
plt.show()