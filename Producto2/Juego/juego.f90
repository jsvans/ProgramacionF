PROGRAM juego
     WRITE(*,*)  "Hola! Trataré de adivinar un número. Piensa en un número entre 1 y 10."
call sleep (5)
WRITE(*,*)  "Ahora multiplicalo por 9."
call sleep (5)
WRITE(*,*)  "Si el número tiene 2 dígitos, súmalos entre si: Ej. 36 -> 3+6=9. Si tu número tiene un solo dígito, súmale 0."
call sleep (5)
WRITE(*,*)  "Al numero resultante sumale 4."
call sleep (10)
WRITE(*,*)  "Muy bien. EL resultado es 13 :)"
END PROGRAM
