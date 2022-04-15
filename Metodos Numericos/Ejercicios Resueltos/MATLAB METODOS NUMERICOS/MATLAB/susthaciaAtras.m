function[x]=susthaciaAtras(tri_sup,b_gauss)
[n,q]=size(tri_sup); %n=q
%type();
T=tri_sup;
b=b_gauss;
x=b*0; %vector de ceros para guardar la soluci�n
if T(n,n)==0
    fprintf('No hay soluci�n unica');
else % Hacemos la sustituci�n hacia atr�s
    x(n)=b(n)/T(n,n);
    for i=(n-1):-1:1 %sustituyendo de atr�s hacia adelnate
        s=0;
        for j=(i+1):n
            s=s+T(i,j)*x(j);
        end
        x(i)=(b(i)-s)/T(i,i);
    end
end
end
