% Initial conditions
y0 = [1; 2; 3];

% Time span
tspan = [0 360];

% Solve using ode45
[t, y] = ode45(@orego, tspan, y0);

% Save variables t and y to a MAT file
save('orego_output.mat', 't', 'y');

% Combine the time and solution into one matrix
data = [t, y];

% Save the data to a CSV file
csvwrite('orego_output.csv', data);

% Plot results
plot(t, y);
legend('y1', 'y2', 'y3');
title('Solution of OREGO Model using ode45');
xlabel('Time');
ylabel('y values');

% Save the plot as a PNG image file
saveas(gcf, 'orego_plot.png');

% Alternatively, save the plot as a PDF
saveas(gcf, 'orego_plot.pdf');