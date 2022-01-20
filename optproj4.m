function optproj4
clearvars; close all; clc;
%source used: 
% https://www.youtube.com/watch?v=JkHn7KByXHs&ab_channel=Theelectricalengineeringstudent
wo = 100;
l =.5;
G = tf(wo^2, [1 2*wo*l wo^2])
bode(G)
%nyquist(G);

end