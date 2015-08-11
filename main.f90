program main
    use mod_greet
    implicit none
    integer :: i
    character(len=20) :: cname
    call get_environment_variable("USER", cname)

    print *, greet(cname)

    do i = 1, 5
        write(*, '(A, I2, A)') "In iteration ", i, " of the loop."
    end do

end program main
