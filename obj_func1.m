function [f] = obj_func1(xx,yy)

f = (yy - cos(2.*xx) - (xx.^2)/10).^2 + exp((xx.^2+yy.^2)/100.0);

end

