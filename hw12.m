function hw12
clearvars; close all; clc;
%a
s = tf('s');
P1 = 1/(s^3 + 10*s^2 + 3*s + 10);
C1 = 1000*(s+1)/(s+10);
G1 = P1*C1;
margin(G1)
nyquist(G1)

%b
P2 = 100/((100*s+1)*(s+1));
C2 = s+10;
G2 = P2*C2;
margin(G2)
nyquist(G2)

%Problem 2
t = .01;
J = .41;
e = .1;
kp = (1-e)/e
K = kp;
w = 25;
a = (1-sin(80))/(1+sin(80));
T = 1/(sqrt(a)*w)
P3 = exp(-t*s)/(J*s^2 + s);
C3 = K*((T*a)*s +1)/(a*T*s + 1)
margin(P3*C3)

%relaxing the phase margin requirement would probably help
nyquist(P3*C3);

end