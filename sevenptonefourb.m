function sevenptonefourb
clf
Ps = tf([2 2],[2 2 2])
p = pole(Ps)
A =[0 1; -1 -1]
B = [.; 1]
K = place(A,B,p)
end