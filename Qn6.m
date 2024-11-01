% (a) Define the input signal x(t) = sin(2*pi*t) for 0 <= t <= 5 

t = 0:0.01:5; % Time vector with 0.01s step size 

x_t = sin(2*pi*t); % Input signal 

% Define the two impulse responses 

t_h = 0:0.01:10; % Time vector for h(t), large enough to capture convolution effects 

h1_t = exp(-t_h); % h1(t) = e^(-t) 

h2_t = exp(-2*t_h); % h2(t) = e^(-2t) 

% (b) Compute the convolutions y1(t) = x(t) * h1(t) and y2(t) = x(t) * h2(t) 

y1_t = conv(x_t, h1_t, 'same') * 0.01; % Convolution with h1(t) 

y2_t = conv(x_t, h2_t, 'same') * 0.01; % Convolution with h2(t) 

% (b) Plot the output signals y1(t) and y2(t) 

figure;

% Plot for y1(t) 

subplot(3,1,1); 

plot(t, x_t, 'b'); 

title('Input Signal x(t) = sin(2\pi t)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

% Plot for the output with h1(t) 

subplot(3,1,2); 

plot(t, y1_t, 'r'); 

title('Output Signal y_1(t) = x(t) * h_1(t)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

% Plot for the output with h2(t) 

subplot(3,1,3);
plot(t, y2_t, 'k'); 

title('Output Signal y_2(t) = x(t) * h_2(t)'); 

xlabel('Time (s)'); 

ylabel('Amplitude'); 

grid on; 

% (c) Comparison and interpretation 

disp('Interpretation:'); 

disp('h_1(t) = e^(-t) decays slowly, meaning it retains more of the oscillations in the input signal.'); 

disp('h_2(t) = e^(-2t) decays faster, meaning it suppresses oscillations more quickly.'); 

disp('Thus, y_2(t) will have a quicker attenuation of the sinusoidal component compared to y_1(t).');
