function [f] = obj_funct3(x)

f(1) = x(2) - cos(2*x(1)) - (x(1)^2)/2;

f(2) = exp((x(1)^2+x(2)^2)/200.0);

end