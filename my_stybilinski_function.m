function [zz] = my_stybilinski_function(xx,yy,n)

zz = zeros(size(xx));

zz = xx.^4 + 16.*(xx.^2) + 5.*xx + yy.^4 + 16.*(yy.^2) + 5.*yy;

zz = zz/2;

end

