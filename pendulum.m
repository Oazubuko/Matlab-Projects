function pendulum
g = 9.8
g1 = 1.6
g2 = .004
w0 = 0

th0 = .05
A = th0 - (w0 - th0)/(sqrt(-g) - 1)
B = (w0 - th0)/(sqrt(-g) - 1)
t = 0:1000:1;
th = (A+B)*(cos(sqrt(g)*t) + sqrt(-1)*sin(sqrt(g)*t))

th1 = (A+B)*(cos(sqrt(g1)*t) + sqrt(-1)*sin(sqrt(g1)*t))
th2 = (A+B)*(cos(sqrt(g2)*t) + sqrt(-1)*sin(sqrt(g2)*t))
plot(th)
hold on
plot(th1)
hold on 
plot(th2)
end