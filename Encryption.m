function [y] =Encryption(decypertext,e,n)
    decyperID = fopen(decypertext,'r');
    decypertext = fscanf(decyperID, '%c');
    cypherID = fopen('cypertext.txt','w+');
    y=[];
    for i = 1:length(decypertext)
        cypertext = mod_exp(double(decypertext(i)),e,n);
        fprintf(cypherID,'%c',char(cypertext));
        y(i)=cypertext;
    end
    disp ('the cipher text ASCII code is: ')
    disp (y)
    disp ('the cipher text is: ')
    disp (char(y))
end