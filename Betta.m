function betta_1 = Betta(N0, N1, angle_1, lambda, d)
% Betta - phase variation
% N0 - complex refractive index of first medium
% N1 - complex refractive index of 2nd medium
% angle_1 - angle of incident
% lambda - wavelength
% d - propagation length
% 
% 
if max(size(angle_1)) > 1 % if here is array of angles
    betta_1 = 2 .* pi .* d .* ...
        sqrt((N1 .^ 2) - ((N0 .^ 2) .* (sin(angle_1) .^ 2))) ./ ...
        lambda;
else
    betta_1 = 2 .* pi .* d .* ...
        sqrt((N1 .^ 2) - ((N0 .^ 2) * (sin(angle_1) ^ 2))) ./ ...
        lambda;
end
end

