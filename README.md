## Project: ODE_Project
The OREGO model is often used as a benchmark for testing numerical ODE solvers because of its stiff and non-linear nature. It provides a good test case for assessing the performance of different solvers, especially in handling oscillatory and stiff systems.

•	s = 77.27,

•	w = 0.161,

•	q = 8.375 \times 10^{-6},

•	time interval t \in [0, 360].

 1. orego.m, to represent the right-hand side of the ODE system
 2. Solving the ODE using MATLAB Solvers

Next, solve the system using different solvers with varying tolerances. MATLAB provides several ODE solvers as far as I know:

•	Non-stiff: ode45, ode23, ode113

•	Stiff: ode15s, ode23s, ode23t, ode23tb

 3. Set relative tolerance (rtol) and absolute tolerance (atol) for each solver
    The tolerance values are: rtol = 10^{-(4+m)}, \text{ where } m = 0, 1, 2, 3 \quad \text{and} \quad atol = rtol


## Notes:
mescd (Minimum number of mixed significant correct digits)

scd (Minimum number of significant correct digits)

4. Track and Monitor:
   
  •	Number of steps
  
  •	Accepted steps
  
  •	Function evaluations
  
  •	Jacobian evaluations
  
  •	LU systems solved
  
  •	CPU time (measured by running each solver five times and taking the minimum)


## Conclusion:
solving the OREGO model with 7 solvers, 16 combinations of relative and absolute tolerances, and running each solver 5 times for each tolerance combination


## Results:
The stiff solvers perform better for smaller tolerances, or that the number of steps differs significantly between solvers

# Question 2:
## Plant model and using two solvers to observe the bursting phenomenon
#### Solve the Plant model using ode45 (non-stiff solver) and ode15s (stiff solver) to capture the bursting phenomenon
