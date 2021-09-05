function JM = TransmittionIsotropicSurface(angle_of_inc, lambda, N0, N1, varargin)
% TransmittionIsotropicSurface - return Jones matrix for transmittion
% throught isotropic multilayer surface 
% angle_of_inc - angle of incident lambda  -
% wavelength 
% N0 - complex refractive index of first medium 
% N1 - complex refractive index of second medium 
% varargin - pairs of thiknesses(d(i-1)) and complex refractive index(N(i)),
% for example:
% TransmittionIsotropicSurface(angle_of_inc, lambda, N0, N1, d1, N2, d2, N3)
% here d1 for layer N1, and d2 for N2.
%
%
t_s = transmission_s(angle_of_inc, lambda, N0, N1, varargin{:});
t_p = transmission_p(angle_of_inc, lambda, N0, N1, varargin{:});
JM = [t_p, 0; 0, t_s];
end

