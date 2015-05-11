  
program proyectil 
  implicit none  
  
  real, parameter :: pi = 4.0*atan(1.0) 
  real :: v, a, t, R,ym, xm   
  real, parameter :: g = 9.81  
  real:: x(2000),y(2000)  
  integer :: i 
 
  write(*,*) 'Escribe el ángulo incial del lanzamiento (Real)'   
  read *, a 
  write(*,*) 'Escribe la velocidad de lanzamiento en m/s (Real)'   
  read *, v   

    R = a*pi/180.0   

  
  
  open(1, file='proj.dat')   
  
  do  i=1,2000  
   
     t = (float(i)*0.01)  
     x(i) = v*cos(R)*t   
     y(i) =v*sin(R)-(0.5*g*t*t)   
     
     write(1,*) x(i), y(i)   
   
     if (y(i)<0) exit   
  end do
  close(1)
  t = 2*v*sin(R)*(1/g)
  xm = v*v*sin(2*R)*(1/g)
  ym = v*v*sin(R)*sin(R)*(1/(2*g))
  
  
  write(*,*) '--------------------------------------------------------------'
  write(*,*) ' un objeto se lanza con una velocidad inicial de ',v,'m/s'
  write(*,*) 'con un angulo de ',a,'grados.'
  write(*,*) 'su altura maxima sera',ym,'metros'
  write(*,*) 'mientras que su distancia maxima abarcada sera',xm, 'metros'
  write(*,*) 'su tiempo de vuelo sera de',t,' segundos.'
end program proyectil
