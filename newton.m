clear all, clc
syms x
cf=input('ingrese la funcion a evaluar ');
f=inline(cf);
derivada= diff(cf,x);
df=inline(derivada);
tol=input('ingrese la tolerancia ');
error=50;
x=input('Ingrese el valor inicial');
disp('     i     x        error')
i=0;
    while(error > tol)
        fprintf('\t%d\t%f\t%f\n',i,x,error);
        i=i+1;   
        x=x-f(x)/df(x);
        error=abs(f(x));
        
    end

