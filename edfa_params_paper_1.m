c = 3*10^(8);

h = 6.626*10^(-34);

wl_p  = 980;

tau_edfa = 10*10^(-3);

r_fiber = 1.2*10^(-6);

A = pi * r_fiber^2;

rho = 6.3*10^(24);% 6.3 Erbium concentration (m^-3)

% Gamma_s = 1; % Signal overlapping integral (dimensionless)
% Gamma_p = 1; % Pump overlapping integral (dimensionless)

ab_p = 3.31;

em_p = 0;% Pump absorption cross-section

BW = 15;

% n1 = 1.455;
% n2 = 1.42;

n1 = 1.46 - 0.035;
n2 = 1.46;

Fiber.Radius = 5e-06;             % Radius [m]                -RECHECK
Fiber.CoreRadius = r_fiber;       % Core Radius [m]           -RECHECK
Fiber.beff = r_fiber;             % Dopant Radius [m]         -RECHECK

%Fiber.NA = 0.28; % Numerical Aperture []     -RECHECK 0.28
Fiber.NA = sqrt(n1^2 - n2^2);
Fiber.nt = rho;               % ion density [m^-3]        -RECHECK
Fiber.tau = 10.5e-3;               % Metastable Lifetime [s]   -RECHECK
Fiber.Aeff = pi*Fiber.beff^2;      % Effective Dopant Area [m^2]
Fiber.zeta = Fiber.Aeff*Fiber.nt/Fiber.tau;%Saturation Parameter [(ms)^-1]


