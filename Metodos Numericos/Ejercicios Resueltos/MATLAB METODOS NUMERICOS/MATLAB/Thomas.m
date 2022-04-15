function x=Thomas(e,f,g,r)
n=length(f);
for k=2:n
    factor=e(k)/f(k-1);
    f(k)=f(k)-factor*g(k-1);
    r(k)=r(k)-factor*r(k-1);
end
x(n)=r(n)/f(n);
for k=n-1:-1:1
    x(k)=(r(k)-g(k)*x(k+1))/f(k);
end
for i=1:length(x)
    fprintf('\nx%d=%f\n',i,x(i));
end

%e=[0;-1;-1;-1];
%f=[2.04;2.04;2.04;2.04];
%g=[-1;-1;-1];
%r=[40.8;0.8;0.8;200.8];
