function dx = ecoConstraint(x1, x2, a, b, c, d)
%ECOCONSTRAINT
%   Richardson model with stronger economic constraints
%   a : lambda
%   b : a
%   c : k
%   d : g
dx = a*(1-exp(b*x1/a))+c*x2+d;
end

