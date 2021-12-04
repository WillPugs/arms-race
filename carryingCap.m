function dx = carryingCap(x1, x2, a, b, c, d)
%CARRYINGCAP
%   Richardson model with a carrying capacity 
%   a : x_max
%   b : k
%   c : a
%   d : g
dx = (1-x1/a).*(b*x2-c*x1+d);
end

