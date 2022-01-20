function wLplot

L =linspace(0,100,1000);

lambda = 632.8*10^-9;
w0 = 4.49;
wL = w0*((L*lambda/(3.14*w0)).^2).^.5;
plot(L,wL);
end