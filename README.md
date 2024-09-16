# Robotzii

This project simulates the autonomous navigation of a robot using basic interpolation techniques. The robot moves across a flat, two-dimensional terrain and must discover a path that passes through a given set of points.

The task is to compute the robot's trajectory through these points using two different interpolation methods:

- Vandermonde Matrix Interpolation
-Natural Cubic Splines

We are given a set of n+1 points in a two-dimensional plane: (x0, y0), (x1, y1), (x2, y2), ..., (xn, yn)
where x_i < x_{i+1} for all i = 0, 1, ..., n-1.

The goal is to determine the trajectory that passes through all these points, ensuring a smooth path for the robot. Two interpolation methods will be used to achieve this.

### Interpolation Methods
1. Vandermonde Matrix Interpolation
This method involves creating a Vandermonde matrix based on the given x-coordinates, then solving a system of linear equations to find the polynomial coefficients that fit the y-coordinates.

2. Natural Cubic Splines
In this method, we compute cubic polynomials between each pair of consecutive points (xi, yi) while ensuring that the resulting curve is smooth. A natural spline ensures that the second derivative is zero at the endpoints.
