% Define the numerator and denominator of the transfer function
numerator = 7;
denominator = [1, 3, 2];
% Create the transfer function
sys = tf(numerator, denominator);
% Simulate the impulse response
impulse(sys);
% Add title and labels
title('Impulse Response of the System');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
