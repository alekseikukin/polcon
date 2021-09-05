function JM = LosslessFiber(fi1, fi2, tetta)
% LosslessFiber - retur Jones matrix for lossless fiber transmission
% fi1 - retardance 1
% fi2 - retardance 2
% tetta - angle of polarization
JM = [exp(1i * fi1)* cos(tetta), -exp(-1i * fi2) * sin(tetta);...
    exp(1i * fi2) * sin(tetta), exp(-1i * fi1)* cos(tetta)];
end

