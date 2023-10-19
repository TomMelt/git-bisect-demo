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

      print *, 'running model version 35'

      do i = 1, N
        answer(i) = i
      end do

    end subroutine run_model


    subroutine newsub2(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub2


    subroutine newsub3(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub3


    subroutine newsub4(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub4


    subroutine newsub5(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub5


    subroutine newsub6(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub6


    subroutine newsub7(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub7


    subroutine newsub8(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub8


    subroutine newsub9(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub9


    subroutine newsub10(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub10


    subroutine newsub11(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub11


    subroutine newsub12(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub12


    subroutine newsub13(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub13


    subroutine newsub14(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub14


    subroutine newsub15(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub15


    subroutine newsub16(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub16


    subroutine newsub17(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub17


    subroutine newsub18(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub18


    subroutine newsub19(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub19


    subroutine newsub20(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub20


    subroutine newsub21(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub21


    subroutine newsub22(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub22


    subroutine newsub23(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub23


    subroutine newsub24(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub24


    subroutine newsub25(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub25


    subroutine newsub26(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub26


    subroutine newsub27(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub27


    subroutine newsub28(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub28


    subroutine newsub29(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub29


    subroutine newsub30(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub30


    subroutine newsub31(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub31


    subroutine newsub32(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub32


    subroutine newsub33(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub33


    subroutine newsub34(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub34


    subroutine newsub35(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub35

end program weathermodel
