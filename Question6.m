% Question 6

clear all
close all

f = @(x)(x(2) - cos(2*x(1)) - (x(1)^2)/10.0)^2 + exp((x(1)^2+x(2)^2)/100.0);

%Initial Solution

x0 = [0.5,0.5];
A = [-1,-1];
b = -4;
Aeq = [];
beq = [];
lb=[];
ub=[];

options = optimoptions('fmincon');
nonlcon = @inequality_constraint;

% Calling the optimizer function
[x,fval,exitflag,output,lambda,grad,hessian] = fmincon(f,x0,A,b,Aeq,beq,lb,ub,nonlcon);

x

lambda