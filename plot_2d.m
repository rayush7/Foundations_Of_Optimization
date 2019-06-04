%Plot of 2D Function

clc
clear all
close all

% definition of x and y
x=-10:0.1:10;
y=-0.4:0.1:10;

% define a grid (x,y)
[xx,yy]=meshgrid(x,y);

%xx
%
% Evaluation of f(x,y) on this grid
%
zz = my_stybilinski_function(xx,yy,2);

%Also we can define a function too

% 3D surface
figure(1), surf(x,y,zz), colormap hsv
camlight;
shading interp
lighting gouraud
view(3)

% Visualize the level sets:
figure(2),
contour(x,y,zz,[0:1:10]);

figure(3),
contour3(x,y,zz,[0:1:10]);