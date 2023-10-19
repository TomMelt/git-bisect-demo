program weathermodel
  implicit none

  integer, parameter :: MAX_SIZE = 100
  integer :: answer(MAX_SIZE)
  integer :: num_args, N
  character(len=12) :: arg

  ! read command line argument
  num_args = command_argument_count()
  if (num_args /= 1) then
    print *, 'Error: you need to specify problem size N'
    stop 100
  end if
  call get_command_argument(1, arg)
  read(arg, *) N
  if (N > MAX_SIZE) then
    print *, 'Error: you cannot run with N greater than MAX_SIZE'
    print *, 'N = ',  N
    print *, 'MAX_SIZE = ',  MAX_SIZE
    stop 200
  end if

  ! initialize answer array to zero
  answer = 0

  call run_model(answer, N)

  if ( answer(N) == N ) then
    print *, answer(1:N)
    print *, 'Model run successfully!'
  else
    print *, 'ERROR :: Model run failed!'
    stop 1
  end if

  contains

    subroutine run_model(answer, N)
      implicit none

      integer, intent(inout) :: answer(*)
      integer, intent(in) :: N
      integer :: i

      call sleep(1)

      print *, 'running model version 1'

      do i = 1, N
        answer(i) = i
      end do

    end subroutine run_model

end program weathermodel
