program weathermodel
  implicit none

  integer, allocatable :: answer(:)
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

  ! allocate answer array so that we can generalize code
  allocate(answer(100))

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

  deallocate(answer)

  contains

    subroutine run_model(answer, N)
      implicit none

      integer, intent(inout) :: answer(*)
      integer, intent(in) :: N
      integer :: i

      call sleep(1)

      print *, 'running model version 106'

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


    subroutine newsub64(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub64


    subroutine newsub65(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub65


    subroutine newsub66(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub66


    subroutine newsub67(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub67


    subroutine newsub68(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub68


    subroutine newsub69(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub69


    subroutine newsub70(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub70


    subroutine newsub71(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub71


    subroutine newsub72(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub72


    subroutine newsub73(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub73


    subroutine newsub74(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub74


    subroutine newsub75(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub75


    subroutine newsub76(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub76


    subroutine newsub77(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub77


    subroutine newsub78(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub78


    subroutine newsub79(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub79


    subroutine newsub80(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub80


    subroutine newsub81(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub81


    subroutine newsub82(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub82


    subroutine newsub83(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub83


    subroutine newsub84(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub84


    subroutine newsub85(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub85


    subroutine newsub86(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub86


    subroutine newsub87(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub87


    subroutine newsub88(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub88


    subroutine newsub89(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub89


    subroutine newsub90(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub90


    subroutine newsub91(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub91


    subroutine newsub92(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub92


    subroutine newsub93(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub93


    subroutine newsub94(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub94


    subroutine newsub95(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub95


    subroutine newsub96(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub96


    subroutine newsub97(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub97


    subroutine newsub98(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub98


    subroutine newsub99(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub99


    subroutine newsub100(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub100


    subroutine newsub102(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub102


    subroutine newsub103(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub103


    subroutine newsub104(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub104


    subroutine newsub105(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub105


    subroutine newsub106(var)
      implicit none

      integer, intent(inout) :: var

      print *, 'does important stuff'

    end subroutine newsub106

end program weathermodel
