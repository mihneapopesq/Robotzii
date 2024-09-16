function y_interp = P_spline(coef, x, x_interp)
    n = length(x) - 1;  % Determine the number of intervals
    coef = reshape(coef, 4, n);  % Reshape the coefficient matrix
    y_interp = zeros(size(x_interp));  % Initialize the interpolated values
    for j = 1:length(x_interp)  % Iterate over each point to be interpolated
        i = find(x_interp(j) >= x(1:end-1) & x_interp(j) <= x(2:end), 1, 'first');  % Find the interval index for the current point
        h = x_interp(j) - x(i);  % Calculate the distance from the current point to the left interval boundary
        y_interp(j) = coef(1,i) + coef(2,i)*h + coef(3,i)*h^2 + coef(4,i)*h^3;  % Perform cubic spline interpolation using the coefficients
    endfor
end