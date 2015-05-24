/*
computes a Gauss-Hermite quadrature rule
*/
function [ x, w ] = hermite ( n )

/*
   Define the zero-th moment.
*/
  zemu = gamma ( 0.5 );
/*
  Define the Jacobi matrix.
*/
  bj = zeros ( n, 1 );
  for i = 1 : n
    bj(i) = i / 2.0;
  end
  bj(1:n) = sqrt ( bj(1:n) );

  x = zeros ( n, 1 );

  w = zeros ( n, 1 );
  w(1) = sqrt ( zemu );
/*
   Diagonalize the Jacobi matrix.
*/
  [ x, w ] = imtqlx ( n, x, bj, w );

  w(1:n) = w(1:n).^2;

  return
end
