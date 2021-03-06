Program Marea
  implicit none
  real, dimension (7674):: h
  integer::i
  real::Mam1,Mam2,Mam3,Mam4,Mam5
  real::Tmx1,Tmx2,Tmx3,Tmx4,Tmx5
  real::Mim1,Mim2,Mim3,Mim4,Mim5
  real::Tmn1,Tmn2,Tmn3,Tmn4,Tmn5
  real::Mxd1,Mxd2,Mxd3,Mxd4,Mxd5
  real::Tdx1,Tdx2,Tdx3,Tdx4,Tdx5
  real::Mnd1,Mnd2,Mnd3,Mnd4,Mnd5
  Real::Tnd1,Tnd2,Tnd3,Tnd4,Tnd5
  real::Dmx,Dmn,Ddx,Ddn
  real::Pmx1,Pmx2,Pmx3,Pmx4,Pmx5
  real::Pmn1,Pmn2,Pmn3,Pmn4,Pmn5
  real::Pdx1,Pdx2,Pdx3,Pdx4,Pdx5
  real::Pdn1,Pdn2,Pdn3,Pdn4,Pdn5
  real::Pmmax,Pmmin,Pdmax,Pdmin
  


  open(1,file="Mareas.csv")
  open(2,file="Maxmes.dat")
  open(3,file="Minmes.dat")
  open(4,file="Maxdia.dat")
  open(5,file="Mindia.dat")
  do i=1,7674
  read(1,*) h(i)
  end do
  close(1)
!------------------------------------------------
  Mam1=0
  do i=1,1344
     Dmx=Mam1-h(i)
     If(Dmx<0)then
        Mam1=h(i)
        Tmx1=i/48.0
end if
end do

write(2,*) Mam1,Tmx1*48

  Mam2=0
  do i=1345,2689
     Dmx=Mam2-h(i)
     If(Dmx<0)then
        Mam2=h(i)
        Tmx2=i/48.0
end if
end do
write(2,*) Mam2,Tmx2*48

  Mam3=0
  do i=2690,4034
     Dmx=Mam3-h(i)
     If(Dmx<0)then
        Mam3=h(i)
        Tmx3=i/48.0
end if
end do
write(2,*) Mam3,Tmx3*48
  Mam4=0
  do i=4035,5379
     Dmx=Mam4-h(i)
     If(Dmx<0)then
        Mam4=h(i)
        Tmx4=i/48.0
end if
end do
write(2,*) Mam4,Tmx4*48
  Mam5=0
  do i=5380,6724
     Dmx=Mam5-h(i)
     If(Dmx<0)then
        Mam5=h(i)
        Tmx5=i/48.0
end if
end do
write(2,*) Mam5,Tmx5*48

!-------------------------------------------------


  Mim1=0
  do i=1,1344
     Dmn=Mim1-h(i)
     If(Dmn>0)then
        Mim1=h(i)
        Tmn1=i/48.0
end if
end do
write(3,*) Mim1,Tmn1*48

  Mim2=0
  do i=1345,2689
     Dmn=Mim2-h(i)
     If(Dmn>0)then
        Mim2=h(i)
        Tmn2=i/48.0
end if
end do
write(3,*) Mim2,Tmn2*48

  Mim3=0
  do i=2690,4034
     Dmn=Mim3-h(i)
     If(Dmn>0)then
        Mim3=h(i)
        Tmn3=i/48.0
end if
end do
write(3,*) Mim3,Tmn3*48

  Mim4=0
  do i=4035,5379
     Dmn=Mim4-h(i)
     If(Dmn>0)then
        Mim4=h(i)
        Tmn4=i/48.0
end if
end do
write(3,*) Mim4,Tmn4*48

  Mim5=0
  do i=5380,6724
     Dmn=Mim5-h(i)
     If(Dmn>0)then
        Mim5=h(i)
        Tmn5=i/48.0
end if
end do
write(3,*) Mim5,Tmn5*48

!----------------------------------------

Mxd1=0
do i=18,65
Ddx=Mxd1-h(i)
if (Ddx<0)then
Mxd1=h(i)
Tdx1=i*0.5
end if
end do

write(4,*)Mxd1,Tdx1*2

Mxd2=0
do i=66,113
Ddx=Mxd2-h(i)
if (Ddx<0)then
Mxd2=h(i)
Tdx2=i*0.5
end if
end do
write(4,*)Mxd2,Tdx1*2

Mxd3=0
do i=114,161
Ddx=Mxd3-h(i)
if (Ddx<0)then
Mxd3=h(i)
Tdx3=i*0.5
end if
end do
write(4,*)Mxd3,Tdx3*2

Mxd4=0
do i=162,209
Ddx=Mxd4-h(i)
if (Ddx<0)then
Mxd4=h(i)
Tdx4=i*0.5
end if
end do
write(4,*)Mxd4,Tdx4*2

Mxd5=0
do i=210,257
Ddx=Mxd5-h(i)
if (Ddx<0)then
Mxd5=h(i)
Tdx5=i*0.5
end if
end do
write(4,*)Mxd5,Tdx5*2

!--------------------------------------------

 Mnd1=0
do i=18,65
Ddn=Mnd1-h(i)
if(Ddn>0)then
Mnd1=h(i)
Tnd1=i*0.5
end if
end do

write(5,*)Mnd1,Tnd1*2

 Mnd2=0
do i=66,113
Ddn=Mnd2-h(i)
if(Ddn>0)then
Mnd2=h(i)
Tnd2=i*0.5
end if
end do

write(5,*)Mnd2,Tnd2*2

 Mnd3=0
do i=114,161
Ddn=Mnd3-h(i)
if(Ddn>0)then
Mnd3=h(i)
Tnd3=i*0.5
end if
end do

write(5,*)Mnd3,Tnd3*2

 Mnd4=0
do i=162,209
Ddn=Mnd4-h(i)
if(Ddn>0)then
Mnd4=h(i)
Tnd4=i*0.5
end if
end do

write(5,*)Mnd4,Tnd4*2

 Mnd5=0
do i=210,257
Ddn=Mnd5-h(i)
if(Ddn>0)then
Mnd5=h(i)
Tnd5=i*0.5
end if
end do

write(5,*)Mnd5,Tnd5*2
!----------------------------------------

Pmx1=Tmx1
Pmx2=Tmx2-Tmx1
Pmx3=Tmx3-Tmx2
Pmx4=Tmx4-Tmx3
Pmx5=Tmx5-Tmx4

Pmn1=Tmn1
Pmn2=Tmn2-Tmn1
Pmn3=Tmn3-Tmn2
Pmn4=Tmn4-Tmn3
Pmn5=Tmn5-Tmn4

Pdx1=Tdx1
Pdx2=Tdx2-Tdx1
Pdx3=Tdx3-Tdx2
Pdx4=Tdx4-Tdx3
Pdx5=Tdx5-Tdx4

Pdn1=Tnd1
Pdn2=Tnd2-Tnd1
Pdn3=Tnd3-Tnd2
Pdn4=Tnd4-Tnd3
Pdn5=Tnd5-Tnd4

Pmmax=(Pmx1+Pmx2+Pmx3+Pmx4+Pmx5)/5.0
Pmmin=(Pmn1+Pmn2+Pmn3+Pmn4+Pmn5)/5.0
Pdmax=(Pdx1+Pdx2+Pdx3+Pdx4+Pdx5)/5.0
Pdmin=(Pdn1+Pdn2+Pdn3+Pdn4+Pdn5)/5.0



write (*,*) 'Las mareas Máximas mensuales fueron:'
write(*,*) 'Primer mes: ',Mam1, 'm sobre el nivel del mar en el día: ',Tmx1
write(*,*) 'Segundo mes: ',Mam2,'msobre el nivel del mar el día: ',Tmx2
write(*,*) 'Tercer mes: ',Mam3, 'm sobre el nivel del mar en el día: ',Tmx3
write(*,*) 'Cuarto mes: ',Mam4, 'm sobre el nivel del mar en el día: ',Tmx4
write(*,*) 'Quinto mes: ',Mam5, 'm sobre el nivel del mar en el día: ',Tmx5
write(*,*) '================================================================'
write(*,*) 'Las mareas mínimas mensuales fueron'
write(*,*) 'Primer mes: ',Mim1, 'm sobre el nivel del mar en el día: ',Tmn1
write(*,*) 'Segundo mes: ',Mim2,'msobre el nivel del mar el día: ',Tmn2
write(*,*) 'Tercer mes: ',Mim3, 'm sobre el nivel del mar en el día: ',Tmn3
write(*,*) 'Cuarto mes: ',Mim4, 'm sobre el nivel del mar en el día: ',Tmn4
write(*,*) 'Quinto mes: ',Mim5, 'm sobre el nivel del mar en el día: ',Tmn5
write(*,*) '==============================================================='
write(*,*) 'Las mareas máximas diarias fueron:'
write(*,*) 'Primer día: ',Mxd1
write(*,*) 'Segundo día: ',Mxd2
write(*,*) 'Tercer día: ',Mxd3
write(*,*) 'Cuarto día: ',Mxd4
write(*,*) 'Quinto día: ',Mxd4
write(*,*) '==============================================================='
write(*,*) 'Las mareas mínimas diarias fueron:'
write(*,*) 'Primer día: ',Mnd1
write(*,*) 'Segundo día: ',Mnd2
write(*,*) 'Tercer día: ',Mnd3
write(*,*) 'Cuarto día: ',Mnd4
write(*,*) 'Quinto día: ',Mnd4
write(*,*) '==============================================================='
write(*,*) 'El periodo mensual de la marea máxima es de ',Pmmax,' días'
write(*,*) 'El periodo mensual de la marea mínima es de ',Pmmin,' días'

write(*,*) 'El periodo diario  de la marea máxima es de ',Pdmax, 'hrs'
write(*,*) 'El periodo diario  de la marea mínima es de ',Pdmin, 'hrs'
end program Marea
