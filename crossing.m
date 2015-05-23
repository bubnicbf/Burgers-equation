/*
determines a point X0 where a discretized solution satisfies U(X0) = 0.
*/
function x0 = crossing ( a, b, n, x, u )

  if ( u(1) == 0.0 )
    x0 = x(1);
    return
  end

  if ( u(n) == 0.0 )
    x0 = x(n);
    return
  end

  if ( r8_sign ( u(1) ) == r8_sign ( u(n) ) )
    fprintf ( 1, '\n' );
    fprintf ( 1, 'BSV_CROSSING - Fatal error!\n' );
    fprintf ( 1, '  We require opposite signs for U(1) and U(N).\n' );
    error ( 'BSV_CROSSING - Fatal error!\n' );
  end
/*
Set the initial change of sign indices.
*/
  i = 1;
  k = n;
/*
Do a binary search for the smallest change of sign interval.
*/
  while ( 1 < k - i )
/*
Try halfway.
*/
    j = floor ( ( i + k ) / 2 );

    if ( u(j) == 0.0 )
      x0 = x(j)
      return
    end

    if ( r8_sign ( u(j) ) == r8_sign ( u(i) ) )
      i = j;
    else
      k = j;
    end

  end
/*
The change of sign interval indices are I and K=I+1.
Now interpolate to get X0.
/*
  x0 = x(i) + u(i) * ( x(i) - x(k) ) / ( u(k) - u(i) );

  return
end
