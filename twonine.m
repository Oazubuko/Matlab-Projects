function twonine
Ps = tf([1],[1 1])
subplot(2,1,1)
step(Ps)
subplot(2,1,2)
impulse(ps)
end