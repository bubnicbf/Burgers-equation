# Burgers-equation
solves the steady (time-independent) viscous Burgers equation using a finite difference discretization of the conservative form of the equation, and then applying Newton's method to solve the resulting nonlinear system

##Burgers' equation is a fundamental partial differential equation from fluid mechanics. It occurs in various areas of applied mathematics, such as modeling of gas dynamics and traffic flow.

For a given velocity u(x,t) and viscosity coefficient nu , the general form of Burgers' equation (also known as viscous Burgers' equation) in one space dimension is the dissipative system:

The function u(x) is to be solved for in the equation:

u * du/dx = nu * d^2u/dx^2

for 0 < nu, a <= x <= b.

Problem data includes the endpoints a and b, the Dirichlet boundary values u(a) = alpha, u(b) = beta, and the value of the viscosity nu.

We can discretize the problem by specifying a sequence of n (perhaps equally spaced) points x, and applying standard finite difference approximations to the derivatives in the continuous equation. A piecewise linear discretization of the solution can then be computed by bsv().

When alpha and beta have opposite sign, the solution must cross the x-axis (at least once). The location x0 of this crossing is of interest, and can be computed by bsv_crossing().

The crossing location may be quite susceptible to the values of alpha and beta.

The conservative form of the equation is

1/2 * d(u^2)/dx = nu * d^2u/dx^2

and this is the version we discretize. The residual associated with node i is then

f(i) = 1/2 * ( u(i+1)^2 - u(i-1)^2 / ( 2 * dx ) - nu * ( u(i-1) - 2 * u(i) + u(i+1) ) / dx^2

and we can apply Newton's method to seek a solution u for which f is zero.
