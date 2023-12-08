function y=eliminacion(A,B)% matrices A  y B 
format short
[n,n]=size(A); % dimension o tmaño de la matriz 
C=[A;B]';%modifico un poco el codigo original porque no corria el programa con [A';B']'
A=C; %cambio de variable 
x=zeros(n,1);% generar una matriz para almecenadar todas las soluciones de un tamaño especial en forma de columna
for p=1:n     % tiene que ver con el pivote varia adesde sabemos qeu se elimina todas menos la fila pivote
   for  k=[1:p-1,p+1:n]; % va aser todas las filas menos la fila pivote
    m=-A(k,p)/A(p,p);
    A(k,:)=A(k,:)+m*A(p,:);% con esta notacion llamamos a toda la fila k
   end
end 
x=A(:,n+1)./diag(A ); %calculando la matriz x 
for i=n-1:-1:1     
    suma=0;
    for j=i+1:n
        suma=suma+A(i,j)*x(j);
    end
    x(i)=(A(i,n+1)-suma)/A(i,i);
end
fprintf('\n  Nuestra Solucion: \n\n');
for i=1:n
    fprintf('\t\t x(%i) = %d \n' ,i,x(i));
end
end
