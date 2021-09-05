function JonesMatrix = RetardanceJM(retardance)
%RetardanceJM - return Jones mateix for retardance element
JonesMatrix = [exp(1i * retardance/2), 0;...
    0 ,  exp(-1i * retardance/2)];
end

