function JM = PolarizerRC(tetta)
% PolarizerRC - return Jones matrix of Right circular polarizer placed at
% an angle tetta
P = 1 / 2 * [1, 1i; -1i, 1];
R = RotationMatrix(tetta);
JM = R' * P * R; 
end

