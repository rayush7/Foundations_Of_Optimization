% Binary Knapsack Problem
clc
close all
clear all

utility = [40,35,18,4,10,2]';
weights = [25,12.5,11.25,5,2.5,1.25];
b=26;

intcon = [1,2,3,4,5,6];
lb = zeros(1,6);
ub = ones(1,6);
Aeq = [];
beq = [];
options = optimoptions('intlinprog', 'Display', 'iter');
[x, fval, exitflag, output] = intlinprog(-1*utility, intcon, weights, b,Aeq,beq, lb, ub, options);

fval

x


