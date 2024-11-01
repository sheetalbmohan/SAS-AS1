% MATLAB Code to Simulate the Step Response
% Define the transfer function coefficients
num = [5]; % Numerator coefficients
den = [1 4 8]; % Denominator coefficients
% Create the transfer function
H = tf(num, den);
% Simulate the step response
figure;
step(H);
title('Step Response of the System');
xlabel('Time (s)');
ylabel('Response y(t)');
grid on;
