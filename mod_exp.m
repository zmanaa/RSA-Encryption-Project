 function [mod_exp]= mod_exp(base, exp, m0d)
     if m0d==1
         mod_exp=0;
     else
         mod_exp=1;
         base= modulo(base,m0d);
         while exp>0
             if mod(exp,2)==1
                 mod_exp= modulo((mod_exp*base),m0d);
             end
             exp= ground(exp/2);
             base= modulo(base^2,m0d);
         end
     end
 end