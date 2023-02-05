clc
clear all

% Input parameters
d = 0.1; % bore diameter (mm)
D = 0.1; % outer diameter (mm)
r = 0.1; % radius of curvature (mm)
B = 0.05; % width (mm)
C = -0.05; % dynamic load capacity (kN)

% Calculation of tapered roller bearing capacity
F = 0.9*C; % allowable radial load (kN)
L = 0.9*C*1000*r/(D-d); % allowable axial load (N)

% Calculation of normal loads
n = 100; % number of points
theta = linspace(0, 2*pi, n);
x = d/2*cos(theta);
y = (D/2-d/2)*sin(theta);
normal_load = F*x/r;

% Plotting
figure
plot(theta, normal_load)
title('Distribution of normal loads in the IR of the rollers')
xlabel ('Normal load (kN)')
ylabel('Angle (rad)')
