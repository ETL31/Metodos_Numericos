a=[2 3 ;1 4];
b=[5 1 ;3 4];
[m r]=size(a);
[s n]=size(b);
ab=zeros(m,n)
for j=1:m
for k=1:n
    producto=0;
    for i=1:r
    producto=producto+a(j,i)*b(i,k);
    end
    ab(j,k)=producto;
end
end
    ab(j,k)=producto

