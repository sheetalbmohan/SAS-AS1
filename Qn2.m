% Define the time vector for both signals 
t = 0:0.01:10; % Adjust the range of time to cover the signals 
% (a) Define the input signal x(t) and the impulse response h(t) 
x_t = @(t) (t >= 0 & t < 3); % Rectangular pulse from 0 to 3 
h_t = @(t) exp(-t) .* (t >= 0); % Exponential decay for t >= 0 
% Plot the input signal x(t) 
figure; 
subplot(3,1,1); 
plot(t, x_t(t), 'LineWidth', 1.5); 
title('Input Signal x(t)'); 
xlabel('Time (t)'); 
ylabel('x(t)'); 
grid on;
% Plot the impulse response h(t) 
subplot(3,1,2); 
plot(t, h_t(t), 'LineWidth', 1.5); 
title('Impulse Response h(t)'); 
xlabel('Time (t)'); 
ylabel('h(t)'); 
grid on; 
% (b) Perform the convolution of x(t) and h(t) 
dt = t(2) - t(1); 
% Time step conv_result = conv(x_t(t), h_t(t), 'same') * dt; % Convolution 
% (c) Plot the output signal y(t) after convolution 
subplot(3,1,3); 
plot(t, conv_result, 'LineWidth', 1.5); 
title('Output Signal y(t) = x(t) * h(t)'); 
xlabel('Time (t)');
ylabel('y(t)'); 
grid on; 
% Adjust layout 
sgtitle('Input Signal, Impulse Response, and Convolution Output');
