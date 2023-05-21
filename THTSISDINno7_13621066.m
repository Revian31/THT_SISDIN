%% Revian Syam Arifin - 13621066
% No 7

%% Define the system parameters
M = 1;
C = 16.5; % Increased C
K = 13;
omega = 1.802775638;
F = 1;

% Define the differential equation
diffeq = @(t, y) [y(2); (F*sin(omega*t) - C*y(2) - K*y(1))/M];

% Define the time span
tspan = [0 100];  % Adjust the end time as needed

% Define the initial conditions
initial_conditions = [0; 0];

% Solve the differential equation
[t, y] = ode45(diffeq, tspan, initial_conditions);

% Extract the position and velocity
x = y(:, 1);
v = y(:, 2);

% Plot the time response
plot(t, x);
xlabel('Time');
ylabel('Position');
title('Time Response of the System (Increased C)');
