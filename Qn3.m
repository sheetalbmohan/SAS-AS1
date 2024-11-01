% Define the time range
t = -1:0.01:10; % Extend beyond the square wave to see the full system response
% (a) Define the square wave input x(t)
x = @(t) (t >= 0 & t < 5); % Square wave from t = 0 to t = 5
% Define the impulse response h(t)
h = @(t) (t >= 0) .* exp(-2 * t); % h(t) = e^(-2t) for t >= 0
% Evaluate x(t) and h(t) over the time range
x_t = x(t);
h_t = h(t);
% (b) Perform the convolution of x(t) with h(t)
y_t = conv(x_t, h_t, 'same') * 0.01; % Scaling by time step (0.01) for accuracy
% Adjust the time axis for y(t) to match t
t_conv = t;
% (c) Plot the input signal x(t), impulse response h(t), and output signal y(t)
figure;
% Plot x(t)
subplot(3, 1, 1);
plot(t, x_t, 'b', 'LineWidth', 1.5);
title('Input Signal x(t) - Square Wave');
xlabel('t');
ylabel('x(t)');
grid on;
% Plot h(t)
subplot(3, 1, 2);
plot(t, h_t, 'r', 'LineWidth', 1.5);
title('Impulse Response h(t) = e^{-2t}');
xlabel('t');
ylabel('h(t)');
grid on;
% Plot y(t)
subplot(3, 1, 3);
plot(t_conv, y_t, 'g', 'LineWidth', 1.5);
title('Output Signal y(t) = x(t) * h(t)');
xlabel('t');
ylabel('y(t)');
grid on;
% Overall title
sgtitle('System Response to Square Wave Input');
