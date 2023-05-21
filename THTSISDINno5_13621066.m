%% Revian Syam Arifin - 13621066
% No 5

%% Define the system parameters
M = 1;
C = 11;
K = 13;
omega = 1.802775638;
F = 1;

% Define the differential equation
diffeq = @(t, y) [y(2); (F*sin(omega*t) - C*y(2) - K*y(1))/M];

% Define the time span
tspan = [0 50];  % Adjust the end time as needed

% Define the initial conditions
initial_conditions = [0; 0];

% Solve the differential equation
[t, y] = ode45(diffeq, tspan, initial_conditions);

% Extract the position and velocity
x = y(:, 1);
v = y(:, 2);

% Define the time span
tspan1 = 0:0.01:50;  % Adjust the time span as needed

% Evaluate the expression
x_analytic = -0.04061*cos(1.80277*tspan1) + 0.01996*sin(1.80277*tspan1) + 0.04061*exp(-11*tspan1/2).*cosh(4.15331*tspan1) + 0.04511*exp(-11*tspan1/2).*cosh(4.15331*tspan1);

% Plot the time response
% Plot the time response
plot(t, x, 'r','LineWidth', 1.5);
hold on
plot(tspan1, x_analytic,'b','LineWidth', 1.5);
xlabel('Time');
ylabel('Position');
title('Time Response of the System');
legend("Numerical","Analytical")
grid on;