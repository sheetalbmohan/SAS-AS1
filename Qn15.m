% Define the transfer function: H(s) = (s + 1) / (s^2 + 4s + 4)

% Numerator and denominator of the transfer function

numerator = [1, 1]; % (s + 1)

denominator = [1, 4, 4]; % (s^2 + 4s + 4)

% Create the transfer function

sys = tf(numerator, denominator);

% (b) Plot the step response of the system

figure;

step(sys); % Plot the step response

title('Step Response of the System');

xlabel('Time (s)');

ylabel('Amplitude');

grid on;

% (c) Generate the Pole-Zero Map

figure;

pzmap(sys); % Plot the pole-zero map

title('Pole-Zero Map');

grid on;
