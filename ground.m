function [floor] = ground(x)
  floor = x - remainder(x,1);
end
% floor function implmentation 