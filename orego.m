function dydt = orego(t, y)
    % Parameters
    s = 77.27;
    w = 0.161;
    q = 8.375e-6;

    % Initialize dydt
    dydt = zeros(3, 1);

    % OREGO model equations
    dydt(1) = s * (y(2) - y(1) * y(2) + y(1) - q * y(1)^2);
    dydt(2) = 1 * (-y(2) - y(1) * y(2) + y(3));
    dydt(3) = w * (y(1) - y(3));
end
