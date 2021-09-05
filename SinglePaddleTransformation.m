function JMP = SinglePaddleTransformation(retardance, tetta)
% SinglePaddleTransformation - return Jones matrix of single paddle of
% polarization controller or retardancy plate (quarter or half wavelength)
% tetta - angle of paddle
% retardance - retardance of paddle (pi/2 for QWP and pi for HWP)
R = RotationMatrix(tetta);
A = RetardanceJM(retardance);
JMP = R' * A * R;
end