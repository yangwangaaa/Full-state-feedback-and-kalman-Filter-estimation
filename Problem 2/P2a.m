%% Matrices from the SS representation of system

a = [0 1;-1 -0.7];
b = [0;1];
c = [1 0;0 0];
d = zeros(2,1)

sys = ss(a,b,c,d)

%% For state feedback

Q = eye(2)
R = eye(1)

%% LQR full state feedback

[K,S,e] = lqr(a,b,Q,R)

%% Closed loop system
sys_cl = ss(a-b*K,b,c,d)


