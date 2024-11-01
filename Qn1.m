% Define time range for plotting
t = linspace(-2, 10, 1000);
% Define the trapezoidal signal function using element-wise operations
x = @(t) (t >= 0 & t < 2) .* t + ...
(t >= 2 & t <= 6) .* 2 + ...
(t > 6 & t <= 8) .* (8 - t);
% Calculate each transformation
x_t = x(t); % (a) x(t)
x_t_minus_3 = x(t - 3); % (b) x(t - 3)
x_2t = x(2 * t); % (c) x(2t)
x_half_t = x(0.5 * t); % (d) x(1/2 * t)
x_2t_plus_3 = x(2 * t + 3); % (e) x(2t + 3)
% Plotting each transformation
figure;
% (a) Plot x(t)
subplot(3, 2, 1);
plot(t, x_t);
title('(a) x(t)');
xlabel('t');
ylabel('x(t)');
grid on;
% (b) Plot x(t - 3)
subplot(3, 2, 2);
plot(t, x_t_minus_3);
title('(b) x(t - 3)');
xlabel('t');
ylabel('x(t - 3)');
grid on;
% (c) Plot x(2t)
subplot(3, 2, 3);
plot(t, x_2t);
title('(c) x(2t)');
xlabel('t');
ylabel('x(2t)');
grid on;
% (d) Plot x(1/2 * t)
subplot(3, 2, 4);
plot(t, x_half_t);
title('(d) x(1/2 * t)');
xlabel('t');
ylabel('x(1/2 * t)');
grid on;
% (e) Plot x(2t + 3)
subplot(3, 2, 5);
plot(t, x_2t_plus_3);
title('(e) x(2t + 3)');
xlabel('t');
ylabel('x(2t + 3)');
grid on;
% Adjust layout
sgtitle('Trapezoidal Signal Transformations');
