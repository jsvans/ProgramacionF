
Module const
 implicit none  
 real, parameter :: pi = 4.0*atan(1.0) 
  
  real, parameter :: g = 9.81  
  real, parameter :: Dair=1.18
  real,parameter :: coefe=0.47
  real,parameter::delta=0.01
  integer,parameter::pts=300000
end module const

program proyectilR
 Use const
 implicit none
  

real:: Vox, Voy, R
real::tf, xf, yf !entradas sin arrastre
real::tfa, xfa, yfa !entradas con arrastre
real::dift, difx, dify
real::v, a, ym

  integer :: i 

write(*,*) 'Escribe el ángulo incial del lanzamiento (Real)'   
  read *, a 
  write(*,*) 'Escribe la velocidad de lanzamiento en m/s (Real)'   
  read *, v   

    R = a*pi/180.0
    Vox= v*cos(R)
    Voy= v*sin(R)
    tf=0

  call SinF (v, Vox, Voy, R, tf, xf, yf, ym)
  call ConF (v, Vox, Voy, R, tfa, xfa, yfa)
dift=abs(((tf-tfa)/tfa)*100.0)
difx=abs(((xf-xfa)/xfa)*100.0)
dify=abs(((ym-yfa)/yfa)*100.0)
  
 


  write(*,*) '--------------------------------------------------------------'
  write(*,*) ' un objeto se lanza con una velocidad inicial de ',v,'m/s'
  write(*,*) 'con un angulo de ',a,'grados.'
  write(*,*) '--------------------------------------------------------------'
  write(*,*) '#despreciando la fricción del aire#'
  write(*,*) '--------------------------------------------------------------'
  write(*,*) 'su altura maxima sera',ym,'metros'
  write(*,*) 'mientras que su distancia maxima abarcada sera',xf, 'metros'
  write(*,*) 'su tiempo de vuelo sera de',tf,' segundos.'
  write(*,*) '--------------------------------------------------------------'
  write(*,*) '#considerando la fricción del aire#'
  write(*,*) '--------------------------------------------------------------'
  write(*,*) 'su altura maxima sera',yfa,'metros'
  write(*,*) 'mientras que su distancia maxima abarcada sera',xfa, 'metros'
  write(*,*) 'su tiempo de vuelo sera de',tfa,' segundos.'
  write(*,*) 'la diferencia porcentual al tiro ideal será'
  write(*,*) 'en el eje x: ',difx,'%'
  write(*,*) 'en el eje y: ',dify,'%'
  write(*,*) 'del tiempo: ',dift, '%'


end program proyectilR

!-----------------------

subroutine SinF (v, Vox, Voy, R, tf, xf, yf,ym)
use const
implicit none
real, dimension(1:pts)::x,y,t
real:: v, Vox, Voy, R, ym
real:: tf, xf, yf
integer:: i

tf= 0
 open(1, file='sinf.dat')   
   do while (yf>=0)
   tf=tf+.01
     xf = (v*cos(R)*tf)   
     yf = (v*sin(R)*tf-(0.5*g*tf*tf))  

  
write(1,*) xf, yf, tf

end do
close(1)

ym=((v*v*sin(R)*sin(R))/(2*g))
end subroutine SinF
 !-----------------
subroutine ConF (v, Vox, Voy, R, tfa, xfa, yfa)
use const
implicit none
real,dimension (0:pts) :: xcf, ycf, tcf, vxf, vyf, axf, ayf
real:: v, Vox, Voy, R !de entrada
real:: tfa, xfa, yfa !de salida
real:: A, ra, m, D
integer:: i


write (*,*) "Ingrese la masa del objeto en Kg"
read *, m
write (*,*) "Ingrese el radio de la bola"
read*, ra
A= pi*ra*ra
xcf(0) =0
ycf(0) =0
vxf(0) = v*cos(R)
vyf(0) = v*sin(R)
D = (0.5*Dair*A*coefe)
axf(0) = -(D/m)*(sqrt((vxf(0)*vxf(0))+(vyf(0)*vyf(0))))*vxf(0)
ayf(0) = -g-(D/m)*(sqrt((vxf(0)*vxf(0))+(vyf(0)*vyf(0))))*vyf(0)
tcf(0)=0

open (2, file="conf.dat")
write (2,1001) xcf(0), ycf(0)
1001 format (f11.5,f11.5)
 do i = 0, pts,1
  tcf(i+1) = tcf(i)+delta  
 vxf(i+1) = vxf(i)+axf(i)*tcf(i+1)
 vyf(i+1) = vyf(i)+ayf(i)*tcf(i+1)
 axf(i+1) =  -(D/m)*(sqrt((vxf(0)*vxf(0))+(vyf(0)*vyf(0))))*vxf(0)
 ayf(i+1) = -g-(D/m)*(sqrt((vxf(0)*vxf(0))+(vyf(0)*vyf(0))))*vyf(0)

     xcf(i+1) = xcf(i)+vxf(i)*tcf(i+1)+(0.5*axf(i)*tcf(i+1)*tcf(i+1))   
     ycf(i+1) = ycf(i)+vyf(i)*tcf(i+1)+(0.5*ayf(i)*tcf(i+1)*tcf(i+1))  

write(2,1001) xcf(i+1), ycf(i+1)
     if (ycf(i+1)<=0) then
     exit
     end if
end do
close (2)
xfa = xcf(i)
yfa = MAXVAL(ycf)
tfa = tcf(i)*10.0

end subroutine ConF
