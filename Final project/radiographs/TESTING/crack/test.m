close all;
clear all;
clc;
for kk=1:52
filename=strcat('C:\Users\PAVAN KUMAR REDDY\OneDrive\Documents\MATLAB\New folder\training\crack\',num2str(kk),'.png');
a=imread(filename);
[m n]=size(a);
for i=1:m
    for j=1:n
        a1(i,j,1)=a(i,j);
        a1(i,j,2)=a(i,j);
        a1(i,j,3)=a(i,j);
    end
end
ff=strcat('C:\Users\PAVAN KUMAR REDDY\OneDrive\Documents\MATLAB\New folder\training\crack\',num2str(kk),'.png')
imwrite(a1,ff,'png');
end