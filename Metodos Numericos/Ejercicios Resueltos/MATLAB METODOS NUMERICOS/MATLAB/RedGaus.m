function[U,bg]=RedGaus(A,b)
%SOLO PARA MATRIZES CUADRADAS
[n,q]=size(A); %n=q
for i=1:n-1
    if A(i:n,i)==zeros(n+1-i,1)
        fprintf('No hay solución unica');
    else %Hacemos el algoritmo de gauss, verificar que el pivote sea diferente
        if A(i,i)==0
            for p=i:n
                if A(p.i)~=0
                    A([i,p],:)=A([p,i],:);
                    b([i,p])=A([p,i],:);
                end
            end
        end
        for k=i+1:n %Algoritmo central, recorremos toda las filas
            m=A(k,i)/A(i,i); %hacer cero debajo del pivote
            for j=i:n
                A(k,j)=A(k,j)-m*A(i,j);
            end
            b(k)=b(k)-m*b(i);
        end
    end
end
U=A;
bg=b;
end
