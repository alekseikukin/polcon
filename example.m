% angles of paddles of polarization controller
Q1 = 0 + pi/4;
Q2 = 0;
Q3 = 0 - pi/4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('initial Jones vector')
E = [rand()*exp(1i*pi* rand()); rand()*exp(1i*pi* rand())]
disp('first polarizer')
E = PolarizerLinear(0) * E
disp('rotation of polarization')
E = PolarizationController(...
    pi/2, Q1,...% QWL
    pi, Q2,...  % HWL
    pi/2, Q3... % QWL
    ) * E
disp('second polarizer')
E = PolarizerLinear(pi / 4) * E
E1 =  ReflectionIsotropicSurface(0, 1550, 1, 0.2-16i, 0.5e6, 1) * E
E2 =  TransmittionIsotropicSurface(0, 1550, 1, 0.2-16i, 0.5e6, 1) * E