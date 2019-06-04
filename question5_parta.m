clear all
close all

x = -10:0.1:10;
y = -10:0.1:10;

[xx,yy] = meshgrid(x,y);

% Caculating the Function
zz = obj_func1(xx,yy);

%Initial Solution
x0 = [1,-1];

% Visualise the 3D Surface
figure(1),
surf(x,y,zz)
shading interp
lighting gouraud
colorbar

% Visualise the Level Sets
figure(2),
contour3(x,y,zz,[0:1:10])

% Runing Optimizer for Quasi Newton Fminunc 
options = optimoptions(@fminunc,'Algorithm','quasi-newton');
options = optimoptions(options,'Display','iter','MaxFunctionEvaluations',1000,'StepTolerance',1e-10);

% Without gradient Quasi Newton
[x,fval,exitflag,output] = fminunc(@obj_funct2,x0,options);

x

%with gradient Quasi Newton
%options1 = optimoptions(options,'Display','iter','MaxFunctionEvaluations',1000,'StepTolerance',1e-1,'SpecifyObjectiveGradient',true,'CheckGradients',true);
%[x,fval,exitflag,output] = fminunc(@obj_funct4,x0,options1);

%x

% Using Non Linear Least Square Optimization
%options = optimoptions(options,'Display','iter','MaxFunctionEvaluations',1000,'StepTolerance',1e-10,'SpecifyObjectiveGradient',true,'CheckGradients',true);
x = lsqnonlin(@obj_funct3,x0);

x

%Using Non Linear Least Square Optimisation with Jacobian
opt = optimoptions('lsqnonlin');
opt = optimoptions(opt,'Display','iter');
opt = optimoptions(opt,'SpecifyObjectiveGradient',true);

x = lsqnonlin(@(x)obj_funct5(x),x0,[],[],opt);

disp('Solution:'); fprintf('%.2f ',x'); disp(' ');

x