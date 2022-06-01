def Bisec(fun, x_a, x_b, steps=10):
    n=0
    x_ant=0
    error_a=0
    valor_v=6.405124837953327
    error_rpv=0
    for n in range(steps+1):
        x_m = (x_a + x_b) / 2
        error_a=(x_m-x_ant)*100 / x_m
        error_v=valor_v-x_m
        error_rpv=(error_v/valor_v)

        if f(x_m) == 0:
            return x_m
        
        if f(x_a) * f(x_m) < 0:
            x_b = x_m
        else:
            x_a = x_m
        x_ant=x_m
    
    return (x_a + x_b) / 2,n,error_a,error_rpv

f = lambda x: (x**5)+3