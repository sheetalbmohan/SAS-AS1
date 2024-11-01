% Define the transfer function H(s) = 10 * (s + 1) / (s^2 + 6s + 10)

numerator = [10, 10]; % Coefficients of the numerator 10(s + 1)

denominator = [1, 6, 10]; % Coefficients of the denominator s^2 + 6s + 10

% Create the transfer function

H = tf(numerator, denominator);

% Plot pole-zero map

pzmap(H);

grid on;

title('Pole-Zero Map');
