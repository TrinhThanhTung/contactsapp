tic
clc; clear; close all;
cd 'C:\Users\NESS-PC\Desktop\ML- Homework\Self-study\Function';
data = load('C:\Users\NESS-PC\Desktop\DT7.mat');
dt=data.dw;
%[CR7]=svmLoo(dt,24,25,1,0.1);

C=linspace(1,100,100);
sigma=linspace(0.1,10,100);

for i=1:100
    for j=1:100
        cr(i,j)=svmLoo(dt,24,25,C(1,i),sigma(1,j));
    end
end
CR=max(cr);
CRR=max(CR);   
mesh(C,sigma,cr); 
toc
