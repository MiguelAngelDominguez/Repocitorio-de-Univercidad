def esPrimo(numero,n):
    if (n==0):return False
    elif(n<2):  
        return True
    if(numero%n==0):
        # print(f"Fallo en {n}")
        return False
    else:
        return esPrimo(numero,n-1)

# sumatoria de los numeros en el rago de [1-cant]        
suma_p=0
cant=int(input("ingrese el valor de cant : "))
for i in range(cant):
    if(esPrimo(i,i-1)):
        print(i)
        suma_p=suma_p+i

print(f"la suma de los numeros primos hasta el {cant}* es -> {suma_p}")

# Ingreasa un numero y te dice si es primo con el valor donde falla 
# numero=int(input("ingrese un numero : "))
# resultado=esPrimo(numero,numero-1)
# if (resultado==True):print(f" el numero {numero} es Primo")
# else: print(f"el numero {numero} NO es primo")
