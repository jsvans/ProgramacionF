  Subroutine g(x,y,ans1,ans2)
    Implicit None
    Real (8) :: x,y,ans1,ans2
    ans1 = sin (x*y) + 1
    ans2 = ans1**2
    End Subroutine g
!
Program Mainprogram
  Implicit None
  Real *8 :: Xin = 0.25, Yin = 2.00, Gout1, Gout2
  call g(Xin, Yin, Gout1, Gout2)
  write (*,*) 'La respuesta es:',Gout1, Gout2
End Program Mainprogram
