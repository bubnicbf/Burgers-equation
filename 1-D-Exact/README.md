#Burgers' equation 1D

MATLAB library which evaluates an exact solution of the time-dependent 1D viscous Burgers equation.

####The form of the Burgers equation considered here is:

        du       du        d^2 u
        -- + u * -- = nu * -----
        dt       dx        dx^2
      
for -1.0 < x < +1.0, and 0.0 < t.
Initial conditions are u(x,0) = - sin(pi*x). Boundary conditions are u(-1,t) = u(+1,t) = 0. The viscosity parameter nu is taken to be 0.01 / pi, although this is not essential.

The authors note an integral representation for the solution u(x,t), and present a better version of the formula that is amenable to approximation using Hermite quadrature.

This program library does little more than evaluate the exact solution at a user-specified set of points, using the quadrature rule. Internally, the order of this quadrature rule is set to 8, but the user can easily modify this value if greater accuracy is desired.
