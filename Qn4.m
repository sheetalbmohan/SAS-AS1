% Define the parameters
f1 = 1; % Frequency of first sinusoid in Hz
f2 = 10; % Frequency of second sinusoid in Hz
t = 0:0.01:10; % Time vector from 0 to 10 seconds with a sampling step of 0.01 seconds
% (a) Define and plot the input signal x(t)
x_t = sin(2 * pi * f1 * t) + sin(2 * pi * f2 * t); % Input signal x(t)
% Plot x(t)
figure;
subplot(3, 1, 1);
plot(t, x_t, 'b', 'LineWidth', 1.5);
title('Input Signal x(t) = sin(2\pif1t) + sin(2\pif2t)');
xlabel('t (seconds)');
ylabel('x(t)');
grid on;
% (b) Define the impulse response h(t)
h_t = exp(-t); % Impulse response h(t) = e^(-t)
% (c) Perform the convolution of x(t) and h(t) to obtain y(t)
y_t = conv(x_t, h_t, 'same') * 0.01; % Scale by time step (0.01) for accurate result
% Plot h(t)
subplot(3, 1, 2);
plot(t, h_t, 'r', 'LineWidth', 1.5);
title('Impulse Response h(t) = e^{-t}');
xlabel('t (seconds)');
ylabel('h(t)');
grid on;
% (d) Plot the output signal y(t)
subplot(3, 1, 3);
plot(t, y_t, 'g', 'LineWidth', 1.5);
title('Output Signal y(t) = x(t) * h(t)');
xlabel('t (seconds)');
ylabel('y(t)');
grid on;
% Overall title
sgtitle('Low-Pass Filter System Response to Sum of Sinusoids');
