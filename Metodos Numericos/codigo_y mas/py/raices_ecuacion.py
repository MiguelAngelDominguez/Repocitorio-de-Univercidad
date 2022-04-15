import os

while(True):
    a= int(input("ingrese el valor de a : "))
    b= int(input("ingrese el valor de b : "))
    c= int(input("ingrese el valor de c : "))

    r1= (-b + ((b**2) - 4*a*c)**(1/2))/(2*a)
    r2= (-b - ((b**2) - 4*a*c)**(1/2))/(2*a)

    print (f" valor de  primera raiz 1 es {r1}")
    print (f" valor de  primera raiz 2 es {r2}")
    _=input(" volver a ingresar datos SI(s) : ")
    if(_=="s" or _=="S"):
        os.system("cls")
    else:
        break