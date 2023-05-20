% Define the time span
tspan1 = 0:0.01:100;  % Adjust the time span as needed

% Evaluate the expression
x = -0.04061*cos(1.80277*tspan1) + 0.01996*sin(1.80277*tspan1) + 0.04061*exp(-11*tspan1/2).*cosh(4.15331*tspan1) + 0.04511*exp(-11*tspan1/2).*cosh(4.15331*tspan1);

% Plot the time response
plot(tspan1, x);
xlabel('Time');
ylabel('Position');
title('Time Response of the System Using Analyical Solution');