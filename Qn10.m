% Define time vector and period

T = 2 * pi;

t = linspace(0, T, 1000);

% Define the original half-wave rectified sine wave

x_t = (t <= pi) .* sin(t);

% Plot original signal

figure;

subplot(4,1,1);

plot(t, x_t, 'k', 'LineWidth', 1.5);

title('Original Half-Wave Rectified Sine Wave');

xlabel('Time');
ylabel('x(t)');
grid on;
% Fourier series approximation
terms = [5, 10, 20];
for i = 1:length(terms)
 N = terms(i);
 y_t = ones(size(t)) / pi; % Start with a0 term
 
 for n = 1:N
 b_n = (2 / (pi * (1 - n^2))) * (1 - (-1)^n); % Fourier coefficient b_n
 y_t = y_t + b_n * sin(n * t); % Sum up to N terms
 end
 
 % Plot Fourier approximation
 subplot(4,1,i+1);
 plot(t, y_t, 'r', 'LineWidth', 1.5);
 title(['Fourier Series Approximation with N = ', num2str(N), ' terms']);
 xlabel('Time');
 ylabel(['x_N(t)']);
 grid on;
end
