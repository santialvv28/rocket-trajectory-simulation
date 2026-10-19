% ROCKET TRAJECTORY SIMULATION

clear;
clc;
close all;

% VALUES
g = 9.81;
theta = 45;
v0 = 250;
h0 = 0;

% EQUATIONS
vx0 = v0*cosd(theta);
vy0 = v0*sind(theta);

% FIND "tFlight"

% y = h0 + vy0*t - 0.5*g*t.^2;
% 0 = vy0*t - 0.5*g*t.^2;
% 0.5*g*t.^2 = vy0*t;
% t.^2=2*vy0*t/g;
% t=2*vy0/g;
tFlight = 2*vy0/g;

% CALCULATED t with tFlight 
t = 0:0.1:tFlight;

% TRAJECTORY EQUATIONS
x = vx0*t;
y = h0 + vy0*t - 0.5*g*t.^2;
vy = vy0 - g*t;
v = sqrt(vx0.^2 + vy.^2);

% PLOT
plot(x,y,'r-','LineWidth',2,'Marker','o','MarkerIndices',1:20:length(x))
xlabel('Horizontal Distance (m)')
ylabel('Height (m)')
title('Rocket Trajectory Simulation')
grid on

maxHeight = max(y);
range = max(x);

fprintf('Maximum Height: %.2f m\n', maxHeight)
fprintf('Flight Time: %.2f s\n', tFlight)
fprintf('Range: %.2f m\n', range)

% END