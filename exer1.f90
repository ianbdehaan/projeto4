program exer1

    implicit none
    real(8) :: dt, lambda, t
    integer :: N, i, c

    t = 0.0d0
    read(*,*) N, lambda, dt
    open(unit=100, file='decai_out', status="new", action="write")

    do while(t<=10.0d0)

        write(unit=100, fmt=*) t, N

        c = 0
        do i = 1, N, 1
            if (rand() < lambda*dt) then
                c = c + 1
            endif
        end do

        t = t + dt
        N = N - c

    end do

end program exer1
