% Time span and initial conditions for the Plant model
tspan = [0 100];  % Adjust the time span based on when the bursting occurs
y0 = [initial_condition1, initial_condition2, ..., initial_conditionN];  % Your model’s initial conditions

% Solve using ode45
[t_ode45, y_ode45] = ode45(@plant, tspan, y0);

% Solve using ode15s
[t_ode15s, y_ode15s] = ode15s(@plant, tspan, y0);

% Plot the bursting behavior for ode45
figure;
plot(t_ode45, y_ode45(:, 1));  % Assuming the bursting is in y1
title('Bursting Behavior (ode45)');
xlabel('Time');
ylabel('y_1');
saveas(gcf, 'bursting_behavior_ode45.png');  % Save the plot as a PNG file

% Plot the bursting behavior for ode15s
figure;
plot(t_ode15s, y_ode15s(:, 1));  % Assuming the bursting is in y1
title('Bursting Behavior (ode15s)');
xlabel('Time');
ylabel('y_1');
saveas(gcf, 'bursting_behavior_ode15s.png');  % Save the plot as a PNG file
