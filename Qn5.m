% Define the time range
t_x = 0:0.01:2; % Time range for x(t) from 0 to 2
t_h = 0:0.01:1; % Time range for h(t) from 0 to 1
t_y = 0:0.01:(2 + 1); % Extended time range for y(t) from 0 to 3 (since convolution extends the 
signal)
% (a) Define x(t) and h(t) as functions
x_t = sin(2 * pi * t_x); % x(t) = sin(2 * pi * t) for 0 <= t <= 2
h_t = t_h; % h(t) = t for 0 <= t <= 1
% (b) Compute the convolution y(t) = x(t) * h(t)
y_t = conv(x_t, h_t, 'full') * 0.01; % Scale by time step (0.01) for accurate result
% (c) Plot x(t), h(t), and y(t)
figure;
% Plot x(t)
subplot(3, 1, 1);
plot(t_x, x_t, 'b', 'LineWidth', 1.5);
title('Input Signal x(t) = sin(2\pit), 0 \leq t \leq 2');
xlabel('t (seconds)');
ylabel('x(t)');
grid on;
% Plot h(t)
subplot(3, 1, 2);
plot(t_h, h_t, 'r', 'LineWidth', 1.5);
title('Impulse Response h(t) = t, 0 \leq t \leq 1');
xlabel('t (seconds)');
ylabel('h(t)');
grid on;
% Plot y(t)
subplot(3, 1, 3);
plot(t_y, y_t, 'g', 'LineWidth', 1.5);
title('Output Signal y(t) = x(t) * h(t)');
xlabel('t (seconds)');
ylabel('y(t)');
grid on;
% Overall title
sgtitle('Convolution of x(t) and h(t)');
