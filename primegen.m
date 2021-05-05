%%large prime numbers generation function

function p= primegen()
min= 3000;
min2= 2000;
p=0;
z=rand*min2+min;
b = ground(z);
while (p==0)
x= primetest(b); 
 if (x == 1)
    p=b;
 else
     p=0;
     b=b+1;
 end
 
end
end

