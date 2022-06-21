function [output] = My_atan2(input_y,input_x)
    %My_atan2 implement atan2 function,because there is no atan2 function in the TwinCAT3
    % Input Parameters:
    %     input_y: y value
    %     input_x: x value
    % 
    % Output Parameters:
    %     output: atan2 function result 
    % 
    % Time：2022.1.6
    % Copyright：LiuHaitao
    % email：912656542@qq.com

    %#codegen
    % output = 0;
    if input_x > 0
        output = atan(input_y/input_x);
        
    elseif ((input_x < 0) && (input_y >= 0)) 
        output = atan(input_y/input_x) + pi;
        
    elseif ((input_x) < 0 && (input_y < 0))
        output = atan(input_y/input_x) - pi;
        
    elseif ((input_x == 0) && (input_y > 0))
        output = pi/2;
        
    elseif ((input_x == 0) && (input_y < 0)) 
        output = -pi/2;
        
    elseif ((input_x == 0) && (input_y == 0)) 
        output = "error";   
    end

end
