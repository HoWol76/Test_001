program main
    implicit none
    integer :: i
    print *, "Hello World"

    do i = 1, 5
        write(*, '(A, I2, A)') "In iteration ", i, " of the loop."

end program main
