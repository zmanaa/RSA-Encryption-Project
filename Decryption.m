function [z] = Decryption (cypertext,d,n,y)
    cypherID = fopen('cypertext.txt','r');
    cypertext = fscanf(cypherID,'%c');
    decyperID = fopen('decypertext.txt','w');
    z=[];
    for i = 1:length(cypertext)
        decypertext = mod_exp(y(i),d,n);
        fprintf(decyperID,'%s',char(decypertext));
        z(i)=decypertext;
    end
    disp ('the decipher text ASCII code is: ')
    disp (z)
    disp ('the decipher text is: ')
    disp (char(z))
end