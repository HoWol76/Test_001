module mod_greet
    implicit none
contains
    subroutine greet(cname)
        implicit none
        character(len=*), intent(in) :: cname
        write(*, '(3A)') "Hello ", trim(cname), "!"
    end subroutine greet
end module mod_greet

