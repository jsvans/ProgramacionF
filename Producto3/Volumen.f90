! Volumen . f90 : Calculates the area of a circle, sample program
 ! −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
 Program volumen ! Begin main program
  Implicit None ! Declare all variables
   Real *8 :: radius , height , volume , newradius ! Declare Reals
   Real *8 :: PI = 4.0 * atan(1.0) ! Declare , assign Real
  Integer :: model_n = 1 ! Declare , assign Ints
   print * , 'Enter a radius:' ! Talk to user
   read * , radius ! Read into radius
   print * , 'Enter a height:' ! Talk to user
   read * , height ! Pide la altura
   newradius = 3 * radius - height
   volume = 0.333333 * PI * height * newradius 
  print * , 'Program number =' , model_n ! Print program number
  print * , 'Radius =' , radius ! Print radius
  print * , 'height =' , height 
  print * , 'Volume =' , volume ! Print area
 End Program volumen ! End main program code
