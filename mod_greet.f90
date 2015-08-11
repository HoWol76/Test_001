module mod_greet
    implicit none
contains
    function greet(cname)
        implicit none
        character(len=*), intent(in) :: cname
        character(len=len_trim(cname) + len("Hello !")) :: greet
        greet = "Hello " // trim(cname) // "!"
    end function greet
end module mod_greet

