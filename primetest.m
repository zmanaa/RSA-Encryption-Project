
%%PRIME NUMBER CHECKER
function [result] = primetest(n)
result = 1;  
 if (n == 2)
     result = 1; 
 elseif (n == 1)
     result = 0; 
 else 
    for i=2:n-1
        if (modulo(n,i)==0)
           result = 0; 
        end
    end
 end
 