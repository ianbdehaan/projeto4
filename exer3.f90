program exer3

    implicit none
    integer :: i
    real(8) :: lambda, del_t, T, tempo, N_t

    open(unit=100, file='decai_in', status="old", action="read")
    open(unit=200, file='decai_out', status="new", action="write")

    read(100, *) N_t, lambda, del_t, T

    do i = 1, int(T/del_t), 1

        write(unit=200, fmt=*) tempo, N_t
        N_t = N_t - N_t*lambda*del_t

        tempo = tempo + del_t

    end do

end program exer3
