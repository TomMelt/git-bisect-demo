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

      print *, 'running model version 63'

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


    subroutine newsub36(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub36


    subroutine newsub37(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub37


    subroutine newsub38(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub38


    subroutine newsub39(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub39


    subroutine newsub40(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub40


    subroutine newsub41(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub41


    subroutine newsub42(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub42


    subroutine newsub43(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub43


    subroutine newsub44(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub44


    subroutine newsub45(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub45


    subroutine newsub46(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub46


    subroutine newsub47(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub47


    subroutine newsub48(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub48


    subroutine newsub49(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub49


    subroutine newsub50(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub50


    subroutine newsub51(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub51


    subroutine newsub52(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub52


    subroutine newsub53(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub53


    subroutine newsub54(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub54


    subroutine newsub55(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub55


    subroutine newsub56(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub56


    subroutine newsub57(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub57


    subroutine newsub58(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub58


    subroutine newsub59(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub59


    subroutine newsub60(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub60


    subroutine newsub61(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub61


    subroutine newsub62(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub62


    subroutine newsub63(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub63

end program weathermodel
