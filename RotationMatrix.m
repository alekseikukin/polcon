function  rotation = RotationMatrix(tetta)
% RotationMatrix - rotating vector to angle tetta
rotation = [cos(tetta), sin(tetta);...
    -sin(tetta), cos(tetta)];
end