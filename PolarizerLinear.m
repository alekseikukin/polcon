function JM = PolarizerLinear(angle)
% Polarizer - return Jones matrix of polarizer placed at an angle
R = RotationMatrix(angle);
P = [1, 0; 0, 0];
JM = R' * P * R;
end

