%% Revian Syam Arifin - 13621066
% No 8

%% Define the system parameters
M = 1;
C = 11;
C1 = 16.5; % 50% Increase
C2 = 5.5; % 50% Decrease
K = 13;
omega = 1.802775638;
F = 1;

% Define the differential equation
diffeq = @(t, y) [y(2); (F*sin(omega*t) - C*y(2) - K*y(1))/M];
diffeq1 = @(t, y) [y(2); (F*sin(omega*t) - C1*y(2) - K*y(1))/M];
diffeq2 = @(t, y) [y(2); (F*sin(omega*t) - C2*y(2) - K*y(1))/M];

% Define the time span
tspan = [0 30];  % Adjust the end time as needed

% Define the initial conditions
initial_conditions = [0; 0];

% Solve the differential equation
[t, y] = ode45(diffeq, tspan, initial_conditions);
[t1, y1] = ode45(diffeq1, tspan, initial_conditions);
[t2, y2] = ode45(diffeq2, tspan, initial_conditions);
% Extract the position and velocity
x = y(:, 1);
v = y(:, 2);
x1 = y1(:, 1);
v1 = y1(:, 2);
x2 = y2(:, 1);
v2 = y2(:, 2);
% Plot the time response
plot(t, x,'y', 'LineWidth', 1.5);
hold on
plot(t1, x1,'m', 'LineWidth', 1.5);
plot(t2, x2, 'b', 'LineWidth', 1.5);
xlabel('Time');
ylabel('Position');
title('Time Response of the System');
legend('Original C','Increased C','Decreased C')