program exer2

    implicit none
    real(8) :: dt, lambda, t, tm
    integer :: N_0,N, i, c

    t = 0.0d0
    read(*,*) N_0, lambda, dt
    N=N_0

    do while(t<=10.0d0)

        tm = tm + t*lambda*N/N_0*dt
        c = 0
        do i = 1, N, 1
            if (rand() < lambda*dt) then
                c = c + 1
            endif
        end do

        t = t + dt
        N = N - c

    end do
    print*, 1/lambda, tm
end program exer2
