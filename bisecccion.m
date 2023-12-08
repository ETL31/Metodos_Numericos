clear all;
close all;
clc;
a=input('Ingrese el primer punto de su intervalo ');
b=input('Ingrese el segundo punto de su intervalo ');
tol=input('Ingrese la tolerancia ');
n=input('Ingrese el numero de iteraciones ');
fun=input('ingrese la funcion ','s');
f=inline(fun);
%para poder ver como cambia la raiz, como la función mientras iteramos
fprintf('Iteracion\t\t\tRaiz\t\tFuncion\n'); 
for i=1:n
    %aplicando el metodo de biseccion
 x=(a+b)/2;
 if((abs(f(x)))<tol)
   break;
 else
   if(f(a)*f(x)<0)
     b=x;
   else
     a=x;
   end
   %para poder cada iteracion de i,x,f(x)
   fprintf('\t%d\t\t\t  %f\t\t%f\n',i,x,f(x));
end
end
%iteracion final de mi raiz
fprintf('La raiz es: %1.15f\n',x);