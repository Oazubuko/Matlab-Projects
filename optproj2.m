function optproj2
clearvars; close all; clc;
%source used: https://www.youtube.com/watch?v=k_IkbxwSK7g&ab_channel=JonathanSprinkle
syms x1 x2 dx1(x1,x2) dx2(x1,x2);
dx1 =(x1+x2)*(1-(x1).^2-(x2).^2)%==0 %uncommment to solve for x1,x2
dx2 =(x1-x2)*(1-(x1).^2-(x2).^2)%==0
sol = solve([dx1, dx2], [x1, x2]);
% x1,x2 = 0,0 -1,0 1,0

%a)
x1Sol = sol.x1
x2Sol = sol.x2
%b)
d1x1 = diff(dx1,x1)
d1x2 = diff(dx1,x2)
d2x1 = diff(dx1,x1)
d2x2 = diff(dx1,x2)
A1 = [subs(d1x1, [x1, x2], [0, 0]), subs(d1x2, [x1, x2], [0, 0]);
    subs(d2x1, [x1, x2], [0, 0]), subs(d1x1, [x1, x2], [0, 0])]
A2 = [subs(d1x1, [x1, x2], [-1, 0]), subs(d1x2, [x1, x2], [-1, 0]);
    subs(d2x1, [x1, x2], [-1, 0]), subs(d1x1, [x1, x2], [-1, 0])]
A3 = [subs(d1x1, [x1, x2], [1, 0]), subs(d1x2, [x1, x2], [1, 0]);
    subs(d2x1, [x1, x2], [1, 0]), subs(d1x1, [x1, x2], [1, 0])]
X1 = [x1; x2]
X2 = [x1+1; x2]
X3 = [x1-1;x2]
L1 = A1*X1
L2 = A2*X2
L3 = A3*X3
%c)
[x1, x2] = meshgrid(-1:0.05:1, -1:.05:1);
dx1 =(x1+x2)*(1-(x1).^2-(x2).^2);%
dx2 =(x1-x2)*(1-(x1).^2-(x2).^2);%
quiver(x1,x2,dx1, dx2)



end
