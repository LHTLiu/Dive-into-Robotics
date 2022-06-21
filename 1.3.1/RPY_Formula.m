% 推导RPY角的代码，注意不是function函数；是m脚本文件
% 直接运行即可

syms alpha beta gamma T1 T2 T3 RPY

T1 = [cos(alpha) -sin(alpha) 0;sin(alpha) cos(alpha) 0;0 0 1];

T2 = [cos(beta) 0 sin(beta);0 1 0;-sin(beta) 0 cos(beta)];

T3 = [1 0 0;0 cos(gamma) -sin(gamma);0 sin(gamma) cos(gamma)];

RPY = T1*T2*T3;

display(RPY);
