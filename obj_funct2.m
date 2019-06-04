function [f] = obj_funct2(x)

f = (x(2) - cos(2*x(1)) - (x(1)^2)/10.0)^2 + exp((x(1)^2+x(2)^2)/100.0);

end

