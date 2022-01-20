function sevenptonefour
clf
Ps = tf([-2 2],[2 2 2 ])
%subplot(3,1,1)
p = pole(Ps)
step(Ps)
ylim([0 3])
xlim([0 3])
hold on
Ps1 = tf([-4 2],[2 2 2 ])
%subplot(3,1,2)
step(Ps1)
%ylim([0 3])
%xlim([0 3])
hold on
Ps2 = tf([-6 2],[2 2 2 ])
%ubplot(3,1,3)
step(Ps2)
%ylim([0 3])
%xlim([0 3])
end