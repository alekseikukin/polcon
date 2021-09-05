function fi = RetardanceOfPaddle(a, d, D, N, lambda)
% RetardanceOfPaddle - return retardace of single paddle of polarization
% controller
% Here, 
% 'fi' - is the retardance, 
% 'a' - is a constant (0.133 for silica fiber), 
% 'N' - is the number of loops, 
% 'd' -  is the fiber cladding diameter, 
% 'lambda' - is the  wavelength 
% 'D' -  is the loop diameter. 
% While this equation is for bare fiber, the solution for Ø900 µm jacketed
% fiber will be similar enough that the results for this equation can still
% be used (i.e., the solution will not vary by a complete loop N for Ø900
% µm jacketed fiber).
fi  = 2 * pi ^ 2 * a * N * d ^ 2 / (lambda * D);
end