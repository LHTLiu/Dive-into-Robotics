function [f,theta] = resolve_f_theta(T)
    %resolve_f_theta  resolve the arbitrary axis and theta according to the (homogeneous) rotation matrix
    % Input Parameters:
    %     T: (Homogeneous) rotation matrix
    % 
    % Output Parameters:
    %     f: arbitrary axis (vector)
    %     theta: rotation angle
    % 
    % Time：2022.2.14
    % Copyright：LiuHaitao
    % email：912656542@qq.com
    
    % 赋值，方便计算
    nx = T(1,1); ox=T(1,2); ax=T(1,3);
    ny = T(2,1); oy=T(2,2); ay=T(2,3);
    nz = T(3,1); oz=T(3,2); az=T(3,3);
    % 计算旋转角度
    theta = atan2(sqrt((oz - ay)^2 + (ax - nz)^2 + (ny - ox)^2), (nx + oy + az - 1));
    % 判断theta = 0 或者 theta = 180°
    if (theta == 0 || theta == 180)
        fprintf("error!");
        f = "error!";
    else
        % 计算旋转向量的各个分量
        fx = (oz - ay)/(2*sin(theta));
        fy = (ax - nz)/(2*sin(theta));
        fz = (ny - ox)/(2*sin(theta));
        
        % 得到旋转向量
        f = [fx fy fz]';
    end
end
