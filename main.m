%%                 = MATLAB Script for RSA Encryption =
%                           Zeyad Manaa - 2020
%     ====================================================================
%                          == Documentation ==
%     ====================================================================
%    1 - The file "main.m" is where the encryption can be done.
%    2 - The "main.m" file is calling scripts for each part written in
%        different scripts.
%    3 - Most of the functions are self-implemented, and no built-in
%        function are used. 
%    4 - The text needed to be encrypted is entered in "message.txt" file,
%        and the encrypted message is saved into "cypertext.txt" file. 
%    5 - For the file named "decypertext.txt", it contains the text after
%        the decryption process.
%     ====================================================================
%%
clc; clear all; 
%%
[e, n, d]= publicprivate(); %public and private key generation

[y]=Encryption('message.txt',e,n);  % ENCRYPTION
[z]=Decryption('cypertext.txt',d,n,y); %DECRYPTION

