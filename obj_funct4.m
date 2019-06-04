function [f,g] = obj_funct4(x)

f = (x(2) - cos(2*x(1)) - (x(1)^2)/2)^2 + exp((x(1)^2+x(2)^2)/100.0);

%g = zeros(2,1);

g(1) = 2*( x(2)-cos(2*x(1)) - ((x(1)^2)/10.0) )*(2*sin(2*x(1)) - x(1)/5) + exp((x(1)^2+x(2)^2)/100.0)*(x(1)/(50.0));
g(2) = 2*( x(2)-cos(2*x(1)) - ((x(1)^2)/10.0)) + exp((x(1)^2+x(2)^2)/100.0)*(x(2)/(50.0));

end