function r_p = reflection_p(fi, lambda, N0, N1, varargin)
% N0 - top refrative index
% N1 -  bottom refractive index
% fi -angle of incident
% d - thikness of layer
% varargin d (i - 1), Ni
lambda = CheckAndTurn(lambda);
N0 = CheckAndTurn(N0);
N1 = CheckAndTurn(N1);
if isempty(varargin)
    N10 = N1 ./ N0;
    A = N10 .^ 2 .* cos(fi);
    B = sqrt(N10 .^ 2 - sin(fi) .^ 2);
    r_p = (A - B) ./ (A + B);
else
    fi_1 = asin(N0 ./ N1 .* sin(fi));
    d = varargin{1};
    %     betta_1 = 2 .* pi .* d .* N1 .* cos(fi_1) ./ lambda;
    %     if max(size(fi)) > 1
    %         betta_1 = 2 .* pi .* d .* ...
    %             sqrt((N1 .^ 2) - ((N0 .^ 2) .* (sin(fi) .^ 2))) ./ ...
    %             lambda;
    %     else
    %         betta_1 = 2 .* pi .* d .* ...
    %             sqrt((N1 .^ 2) - ((N0 .^ 2) * (sin(fi) ^ 2))) ./ ...
    %             lambda;
    %     end
    betta_1 = Betta(N0, N1, fi, lambda, d);
    
    r01p = reflection_p(fi, lambda, N0, N1);
    r12p = reflection_p(fi_1,lambda, N1, varargin{2:end});
    r_p = (r01p + r12p .* exp(-1i .* 2 .* betta_1)) ./...
        (1 + r01p .* r12p .* exp(-1i .* 2 .* betta_1));
end
end


% function A = CheckAndTurn(A)
% if isrow(A)
%     A = permute(A, [2,1]);
% end
% end