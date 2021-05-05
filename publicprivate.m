function [e, n, d] = publicprivate()
p = primegen();
q = primegen();
do = true;

while do
      if((p==q))
          do = true;
          p = primegen();
          q = primegen();
      
      else
          do = false;
      end
 end 
n = q*p;
k = (q-1)*(p-1);
e = rand*k;
e = ground(e);
a = gcd(e,k); 
while ((a~=1)&& (e~=1))
    e = e+1;
    a = gcd(e,k);
end
d = modinverse(e,k) ;
fprintf('\nPublic key is (%d,%d)',n,e);
fprintf('\nPrivate key is (%d,%d)',n,d);
fprintf('\n');
end

