theta = 2*pi/3;
u = [sqrt(3)/3,sqrt(3)/3,-sqrt(3)/3]';
v = [1 2 3]';

result = cos(theta)*v + (1-cos(theta))*dot(u,v)*u + sin(theta)*cross(u,v);
