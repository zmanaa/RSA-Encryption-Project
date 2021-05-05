function [remainder] = remainder(x, y)
    remainder = x - y.* fix(x./y);
end
% rem function imp.