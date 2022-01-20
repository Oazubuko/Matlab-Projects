function optproj3
% First define state space system
 A=[0 1 0; 0 0 1; -3 -4 -2];
 B=[0; 0; 1];
 C=[5 1 0];
 [n,d]=ss2tf(A,B,C,D)

end