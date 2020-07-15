classdef RightTriangle
% class of right triangle
properties
a = 0 % length of a leg, default = 0
b = 0 % length of the other leg, default = 0
end
methods
function m = area(obj)
% returns the area of a RightTriangle obj
m = obj.a * obj.b / 2;
end
function c = hypotenuse(obj)
% returns the hypotenutes of a RightTriangle obj
c = sqrt( obj.a ^ 2 + obj.b ^ 2 );
end
end
end