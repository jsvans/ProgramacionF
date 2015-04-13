! Math.f90 : demostración de algunas funciones de fortran
! -----------------------------------------
Program Math  !Comienza el programa principal
  Complex *8 :: x= 1.0 , y=2 , z=0 !Declara las variabnles x, y , z
  x = sqrt (x) ! función razís cuadrada (square root)
  y= asin (y) ! Llama a la función arcoseno
  z= log (z) ! Función de exponencial
  print * , x, y, z ! Print x,y,z
End Program Math
