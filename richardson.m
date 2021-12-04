function dx = richardson(x1, x2, a, b, c)
%RICHARDSON
%   Richardson model of an arms race
%   a : k
%   b : a
%   c : g
dx = a*x2 - b*x1 + c;
end

