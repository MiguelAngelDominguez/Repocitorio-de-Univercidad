G=9.8
vi=float(input(" - ingrese el valor de de la velocidad inicial : "))
c=float(input(" - ingrese el valor del coeficiente de resistencia : "))
m=float(input(" - ingrese el valor de la masa : "))
ti=float(input(" - ingrese el valor del tiempo inicial : "))
tf=float(input(" - ingrese el valor del tiempo final : "))
dt=0.1

t,v,h=ti,vi,dt
while(True):
    if (t+dt)>tf:
        h=tf-t
    dvdt=G-(c/m)*v
    v=v+(dvdt*h)
    t=t+h
    if t>= tf : break

print(f"la velocidad final es {v}")