function JMP = PolarizationController(retardance, tetta, varargin)
% PolarizationController - return jones matrix for polarization controller
% tetta - angle of paddle
% retardance - retardance of paddle (pi/2 for QWP and pi for HWP)
% varargin - pairs of retardance and tetta

if isempty(varargin)
    JMP = SinglePaddleTransformation(retardance, tetta);
else
    JMP = PolarizationController(varargin{:}) * ...
        SinglePaddleTransformation(retardance, tetta);
end
end

