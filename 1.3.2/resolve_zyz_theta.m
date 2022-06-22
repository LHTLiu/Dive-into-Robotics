function [alpha,beta,gamma] = resolve_zyz_theta(T)
    %RESOLVE_ZYZ_THETA 此处显示有关此函数的摘要
    %   此处显示详细说明
    nx=T(1,1);ox=T(1,2);ax=T(1,3);
    ny=T(2,1);oy=T(2,2);ay=T(2,3);
    nz=T(3,1);oz=T(3,2);az=T(3,3);

    beta  = atan2(sqrt(nz*nz+oz*oz),az);
    alpha = atan2(ay,ax);
    gamma = atan2(oz,-nz);
    
end
