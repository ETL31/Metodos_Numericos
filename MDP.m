A=input('Matriz: ');
[n m]=size(A);
A
Al=A(1,1);
p=1;
for i=2:n
  b=det(A(1:i,1:i));
  if b<0
      p=-1;
  end
end
if Al>0
    if p>0
        disp('MATRIZ DEFINIDA POSITIVA');
    else
        disp('LA MATRIZ NO ES DEF. POSITIVA');
    end
end
   
