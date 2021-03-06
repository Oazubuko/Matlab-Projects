function optproj1
%source used: https://www.youtube.com/watch?v=k_IkbxwSK7g&ab_channel=JonathanSprinkle
%c)
% 
% 
% clearvars; close all; clc;

syms x1 x2 dx1(x1,x2) dx2(x1,x2) u1 u2 u3;
dx1 = -(1+exp(-1/x2))*(x1) + u1 
dx2 =exp(-1/x2)*(x1) + 2*x2 + u2 + u3
d1x1 = diff(dx1,x1)
d1x2 = diff(dx1,x2)
d2x1 = diff(dx1,x1)
d2x2 = diff(dx1,x2)
A = [subs(d1x1, [x1, x2], [1, 1]), subs(d1x2, [x1, x2], [1, 1]);
    subs(d2x1, [x1, x2], [1, 1]), subs(d1x1, [x1, x2], [1, 1])]
B = [1, 0; 0, 1; 0, 1]
k = rank(A)
N = [B; B*A^(k-1) ]
rank(N)
%rank(N) = k so it is reachable
poles = vpa((eig(A)))
%e)
C = [1, 1]
Ob = obsv(A,C)
% Number of unobservable states
unob = length(A)-rank(Ob)






end