/*
evaluates a solution to the Burgers equation.
*/

function vu = burgers ( nu, vxn, vx, vtn, vt )


  qn = 8;
/*
   Compute the rule.
*/
  [ qx, qw ] = hermite_ek_compute ( qn );
/*
 Evaluate U(X,T) for later times.
*/
  vu = zeros ( vxn, vtn );

  for vti = 1 : vtn

    if ( vt(vti) == 0.0 )

      vu(1:vxn,vti) = - sin ( pi * vx(1:vxn) );

    else

      for vxi = 1 : vxn

        top = 0.0;
        bot = 0.0;

        for qi = 1 : qn

          c = 2.0 * sqrt ( nu * vt(vti) );

          top = top - qw(qi) * c * sin ( pi * ( vx(vxi) - c * qx(qi) ) ) ...
            * exp ( - cos ( pi * ( vx(vxi) - c * qx(qi)  ) ) ...
            / ( 2.0 * pi * nu ) );

          bot = bot + qw(qi) * c ...
            * exp ( - cos ( pi * ( vx(vxi) - c * qx(qi)  ) ) ...
            / ( 2.0 * pi * nu ) );

          vu(vxi,vti) = top / bot;

        end

      end

    end

  end

  return
end
