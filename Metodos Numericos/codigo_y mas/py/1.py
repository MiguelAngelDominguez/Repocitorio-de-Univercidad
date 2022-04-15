from math import factorial

x=float(input("ingrese un el valor de x : "))
n=int(input(" ingrese el valor de n : "))
res=1
for i in range(n):
    operacion=(x**n)/factorial(n)
    n=n-1
    res=res+operacion

print("el resultado es : ")
print(res)