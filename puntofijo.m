clc;
clear all;
syms x
cf=input('Digite la funcion ');
cg=input('Digite la funcion x=g(x) ');
f=inline(cf);
g=inline(cg);
dg= diff(cg,x);
x=input('digite el punto ');
if(abs(eval(dg))<1)
    tol=input('Digite la toleracia ');
    disp('     i     x0        error')
    fprintf('\t0\t%f\t----\n',x);
    i=0; error=100;
    while(error > tol)
        i=i+1;
        anterior=x;
        x=g(x);
        error=abs(x-anterior);
        fprintf('\t%d\t%f\t%f\n',i,x,g(x));
    end
else
    fprintf('Ingrese otra funcion ya que diverge');
end
