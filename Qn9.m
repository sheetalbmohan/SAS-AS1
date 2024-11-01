% MATLAB script to compute Fourier series of a periodic triangular wave 
% Period T = 2*pi 
T = 2*pi; 
omega0 = 2*pi/T; % Fundamental frequency 
N = 20; % Maximum number of terms to compute in the Fourier series 
t = linspace(0, 2*pi, 1000); % Time vector for plotting % Triangular wave definition 
x_t = @(t) (t/pi).(t>=0 & t<=pi) + (-t/pi + 2).(t>pi & t<=2*pi); % Triangular wave from 0 to 2*pi 
%Initialize Fourier coefficients
a0 = 0; 
an = zeros(1, N); 
bn = zeros(1, N); 
% Compute the Fourier coefficients 
for n = 1:N 
 if mod(n,2) == 1 % Only odd harmonics contribute 
 an(n) = 8 / (pi^2 * n^2); % an coefficient for triangular wave 
 else 
 an(n) = 0; % Even terms are zero 
 end 
 bn(n) = 0; % bn terms are zero for triangular wave (even function) 
end 
 % Plot the original triangular wave 
figure; 
subplot(2, 2, 1); 
plot(t, x_t(t), 'k', 'LineWidth', 1.5); 
title('Original Triangular Wave'); 
xlabel('t'); 
ylabel('x(t)'); 
axis([0 2*pi -1.5 1.5]); 
grid on; 
% Function to compute Fourier series approximation 
fourier_approx = @(t, N) a0/2 + sum(an(1:N)' .* cos((1:N)' * omega0 .* t), 1); 
% Plot Fourier approximations with 5, 10, and 20 terms 
terms_to_plot = [5, 10, 20]; 
for i = 1:length(terms_to_plot) 
 N_terms = terms_to_plot(i); 
 subplot(2, 2, i+1); 
 plot(t, x_t(t), 'k', 'LineWidth', 1.5); % Plot original triangular wave 
 hold on; 
 plot(t, fourier_approx(t, N_terms), 'r--', 'LineWidth', 1.5); % Plot Fourier series approximation 
 title(['Fourier Approximation with ', num2str(N_terms), ' Terms']); 
 xlabel('t');
