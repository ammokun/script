      program transrate
        implicit none
    
        integer i
        real heat(1:1555)
        real dum


        open(17,file='energy_coefficient.dat')

        do i=1,1555
            read(17,*) dum,heat(i)
            write(*,*) i,heat(i)
        end do

        close(17)
      end program