% Least Squares Program

clear all
close all

randn('seed',3);

theta_1 = 5; % ground_truth
theta_2 = 1; % ground_truth

x = 0:0.3:19;
y = exp(-x/theta_1) - 0.8*exp(-x/theta_2);
N = length(x);

noise = 0.03; % noise level can be changed

z = y + noise*randn(1,N)

figure(1), clf, plot(x,z,'o','linewidth',2);
grid on;
save 'data0.mat'





