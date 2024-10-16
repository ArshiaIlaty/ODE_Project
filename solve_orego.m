% Initial conditions
y0 = [1; 2; 3];

% Time span
tspan = [0 360];

% Tolerances to be tested
m_values = 0:3;
rtol_values = 10.^(-(4+m_values));
atol_values = rtol_values; % as atol = rtol

% List of solvers to be tested
solvers = {@ode45, @ode23, @ode113, @ode15s, @ode23s, @ode23t, @ode23tb};

% Preallocate result table
results = [];

for solver_idx = 1:length(solvers)
    solver_name = func2str(solvers{solver_idx});
    
    for m = m_values
        % Define tolerances
        rtol = 10^-(4+m);
        atol = rtol;

        % Set options for the solver
        options = odeset('RelTol', rtol, 'AbsTol', atol);

        % Solve the system using the current solver
        tic;
        for i = 1:5  % Run five times to take the minimum time
            [t, y] = solvers{solver_idx}(@orego, tspan, y0, options);
        end
        cpu_time = toc / 5;  % Average CPU time
        
        % Assuming `ytrue` is known or can be computed (you need a way to find ytrue):
        % You need to compute mescd, scd, steps, accept, #f, #Jac, #LU
        % For now, placeholders:
        mescd = NaN;  % Replace with calculation
        scd = NaN;    % Replace with calculation
        steps = NaN;  % Replace with calculation
        accept = NaN; % Replace with calculation
        func_evals = NaN; % Replace with calculation
        jac_evals = NaN;  % Replace with calculation
        lu_solutions = NaN; % Replace with calculation

        % Append results to the table
        results = [results; {solver_name, rtol, atol, mescd, scd, steps, accept, func_evals, jac_evals, lu_solutions, cpu_time}];
    end
end

% Convert results to table
results_table = cell2table(results, 'VariableNames', {'Solver', 'RelTol', 'AbsTol', 'Mescd', 'Scd', 'Steps', 'Accept', '#f', '#Jac', '#LU', 'CPU Time'});
disp(results_table);
