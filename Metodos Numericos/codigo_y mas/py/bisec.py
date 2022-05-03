import matplotlib.pyplot as plt
import numpy as np

def Bisec(xl,xu,es, imax, xr, ea,iter=0):
    while ( ea< es or iter >= imax ):
        xr_old=xr
        xr = (xl+xu)/2
        iter = +1
        if xr != 0:
            ae = abs((xr-xr_old)/xr)*100
            test= xl*xr
            if test <0:
                xu = xr
            elif test >0 :
                xl = xr
            else :
                ae =0
    return xr

re,fx,fy=Bisec(0.975,1.3,14.3,5,1.1375,13.8)

print(re)