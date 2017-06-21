clear all; 
%% 
fileID = fopen('fir_coef.fcf');
fileSpec = '%x \n'; 
sizeA = [1 Inf]; 
A = fscanf(fileID,fileSpec,sizeA); 
fclose(fileID); 
B = A'; 
%% Convert in Bin 
dec2char = char(B); 
binary = dec2bin(dec2char); 
%% Write File in Hex
fileBIN = fopen('coeff.txt','w'); 
%fprintf(fileBIN,'%s \n','coefficient_set_1'); 
fprintf(fileBIN,'%x \n',B(1:201)); 
fclose(fileBIN); 