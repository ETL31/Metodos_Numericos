clear , clc
syms x
cf=input('Ingrese la función ');
f=inline(cf);
a=input('ingrese el primer valor ');
b=input('ingrese el segundo valor ');
tol=input('Ingrese la tolerancia ');
error = 100;
n=0;
fprintf(' \tn    \ta     \t\tb  \t\t   c    \t\terror\n');
fprintf('\t%d\t%f\t%f\t----\t\t\t----\n',n,a,b);
while(error>tol)
    n=n+1;
    %c será la raiz de la funcion
    c=b-(b-a)*f(b)/(f(b)-f(a));
    error=abs(f(c));
    fprintf('\t%d\t%f\t%f\t%f\t%f\n',n,a,b,c,error);
    a=b;
    b=c;
end