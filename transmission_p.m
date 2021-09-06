function t_p = transmission_p(angle_1, lambda, N0, N1, varargin)
% transmission_p - return p component of transmittion
% N0 - top refrative index
% N1 -  bottom refractive index
% fi -angle of incident
% d - thikness of layer
% varargin d(i-1), Ni

lambda = CheckAndTurn(lambda);
N0 = CheckAndTurn(N0);
N1 = CheckAndTurn(N1);

angle_2 = asin(N0 * sin(angle_1) / N1);
if isempty(varargin)
    t_p = 2 * N0 * cos(angle_1) / (N1* cos(angle_1) + N0 * cos(angle_2));
else
    di = varargin{1};
    betta_1 = Betta(N0, N1, angle_2, lambda, di);
    t_p01 = transmission_p(angle_1,lambda, N0, N1);
    t_p12 = transmission_p(angle_2,lambda, N1,  varargin{2 : end});
    r_p01 = reflection_p(angle_1,lambda, N0, N1);
    r_p12 = reflection_p(angle_2,lambda, N1, varargin{2 : end});
    t_p =...
        (t_p01 *  t_p12 * exp(-1i * betta_1)) /...
        (1 + r_p01 * r_p12 * exp(-2i * betta_1));
end
end

