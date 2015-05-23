/*
runs all the tests
*/
function test ( )

  fprintf ( 1, '\n' );
  fprintf ( 1, 'BSV_TEST\n' );
  fprintf ( 1, '  MATLAB version.\n' );
  fprintf ( 1, '  Test the Bugers equation.\n' );

  bsv_test01 ( );
  bsv_test02 ( );
  bsv_test03 ( );
  bsv_test04 ( );
  bsv_test05 ( );
  bsv_test06 ( );
  bsv_test07 ( );
  bsv_test08 ( );

  fprintf ( 1, '\n' );
  fprintf ( 1, 'BSV_TEST\n' );
  fprintf ( 1, '  Normal end of execution.\n' );

  fprintf ( 1, '\n' );

  return
end


