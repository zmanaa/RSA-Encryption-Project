function [grcd] = GCD(x, y)
A(1)=y;
d=0;
m0=modulo(x,y);
if m0==0
    grcd=y;
    disp(grcd);
else
while(m0~=0)
    m0=modulo(A(d+1),m0);
    d=d+1;
    A(d+1)=m0;
end
grcd=A(d);
end