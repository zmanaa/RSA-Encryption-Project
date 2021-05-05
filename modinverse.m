function [x] = modinverse (e, k)
e = mod (e, k);
x=0;
for i = 1: k-1
    if (modulo ((i*e), k)==1)
        x=i;
    end
end