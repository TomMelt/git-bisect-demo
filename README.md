# git bisect demo

## what is `git bisect`?

The repo can be used to practice `git bisect`. According to the `man` page...

> [git bisect] uses a binary search algorithm to find which commit in your project’s history
> introduced a bug. You use it by first telling it a "bad" commit that is known to contain the bug,
> and a "good" commit that is known to be before the bug was introduced. Then git bisect picks a
> commit between those two endpoints and asks you whether the selected commit is "good" or "bad". It
> continues narrowing down the range until it finds the exact commit that introduced the change.

There are two main modes of operation:
* manual
* scripted i.e., `git bisect run`

This tutorial will cover the scripted mode.

In the manual mode the user is responsible for deciding whether or not the code at a given commit is
good or bad i.e., whether it passes or fails some test conditions. Note, I have been deliberately
vague. Manual `git bisect` relies on the users input and does not place any requirement on the form
of test(s). If the output of a given code is extremely complex and perhaps requires visual
comparison to determine validity then manual `git bisect` can be most helpful. However, in scripted
mode `git bisect` requires a test script (or binary). The only requirement is that the test script
returns an exit code of zero for test pass, and non-zero for test failure. Like most situations, it
can sometimes feel like more effort to create a script when you can just _do it manually_. But, I
would strongly advise scripting it, because for complex examples your definition of a test fail/pass
may necessarily need to change. You may need to re-run `git bisect` if the branch in question has
multiple errors.

## Example

This example is relatively simple but I have tried to demonstrate that you can have CI tests or
otherwise (in this case `test.sh`) that pass at every commit, but you can have hidden errors that
are not picked up by your standard test suite.

The repo consist of 2 main files:
* `bisect.f90`
* `tests.sh`

`bisect.f90` is our _main_ code e.g., weather model, super complex simulation code etc. We will
compile it using `gfortran` or another fortran compiler of your choice.

The original version (commit `acb48eb27a8` see below) is a simple driver program that runs a
`subroutine` called `run_model` which does our science. 

Over the following 100+ commits we add some new subroutines and make changes to our model. At
some point a bug is introduced. As we will see though, it is not picked up by the test script
`tests.sh`.

```fortran
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
```

The code takes a single command line argument `N` which is an integer which specifies the amount of
work our model does.

## The problem

If you compile and run the code for different problem sizes, you will see something like the
following

* N = 10

```
$ gfortran bisect.f90
$ ./a.out 10
 running model version 128
           1           2           3           4           5           6           7           8           9          10
 Model run successfully!
```

* N = 100

```
$ ./a.out 100
 running model version 128
           1           2           3           4           5           6           7           8           9          10          11          12          13          14          15          16          17          18          19          20          21          22          23          24          25          26          27          28          29          30          31          32          33          34          35          36          37          38          39          40          41          42          43          44          45          46          47          48          49          50          51          52          53          54          55          56          57          58          59          60          61          62          63          64          65          66          67          68          69          70          71          72          73          74          75          76          77          78          79          80          81          82          83          84          85          86          87          88          89          90          91          92          93          94          95          96          97          98          99         100
 Model run successfully!
```

* N = 1000

```
$ ./a.out 1000
 running model version 128
malloc(): corrupted top size

Program received signal SIGABRT: Process abort signal.

Backtrace for this error:
#0  0x7f2165c21960 in ???
#1  0x7f2165c20ac5 in ???
#2  0x7f2165a1851f in ???
        at ./signal/../sysdeps/unix/sysv/linux/x86_64/libc_sigaction.c:0
#3  0x7f2165a6c9fc in __pthread_kill_implementation
        at ./nptl/pthread_kill.c:44
#4  0x7f2165a6c9fc in __pthread_kill_internal
        at ./nptl/pthread_kill.c:78
#5  0x7f2165a6c9fc in __GI___pthread_kill
        at ./nptl/pthread_kill.c:89
#6  0x7f2165a18475 in __GI_raise
        at ../sysdeps/posix/raise.c:26
#7  0x7f21659fe7f2 in __GI_abort
        at ./stdlib/abort.c:79
#8  0x7f2165a5f675 in __libc_message
        at ../sysdeps/posix/libc_fatal.c:155
#9  0x7f2165a76cfb in malloc_printerr
        at ./malloc/malloc.c:5664
#10  0x7f2165a7a6f1 in _int_malloc
        at ./malloc/malloc.c:4373
#11  0x7f2165a7ab89 in _int_realloc
        at ./malloc/malloc.c:4878
#12  0x7f2165a7b908 in __GI___libc_realloc
        at ./malloc/malloc.c:3485
#13  0x7f2165c20e58 in ???
#14  0x7f2165e84535 in ???
#15  0x7f2165e75389 in ???
#16  0x7f2165e7f2db in ???
#17  0x7f2165e8335b in ???
#18  0x7f2165e842e5 in ???
#19  0x7f2165e75a78 in ???
#20  0x558ab319b5cf in ???
#21  0x558ab319b81d in ???
#22  0x7f21659ffd8f in __libc_start_call_main
        at ../sysdeps/nptl/libc_start_call_main.h:58
#23  0x7f21659ffe3f in __libc_start_main_impl
        at ../csu/libc-start.c:392
#24  0x558ab319b184 in ???
#25  0xffffffffffffffff in ???
Aborted (core dumped)
```

However, if you run `tests.sh` the tests all pass. Now checkout the first commit and see if the code
still works for the same inputs as above.

You will find that it does. Now rather than searching every other commit individually, try and write
a `git bisect` test script called e.g., `bisect-test.sh` that is capable of testing the code for
larger problem sizes.

## running the tests

To run the tests you either need to change the permission of `tests.sh` to execute

```
chmod 755 tests.sh
```

Or you can run it with

```
bash tests.sh
```

## Hints
* In the early version of the code, `bisect.f90` raises an error code `stop 100` when the input size
  is too large. However in the latest version we get a memory error.
* You will need to write a test that is capable of dealing with these two scenarios (i.e.,
  deliberate failure `stop 100` and accidental failure)
* In `bash` `$?` is a special variable that contains the exit code of the previous command - maybe
  you can use this in your `bisect-test.sh` script

**NOTE:** your test script needs to have execute permissions otherwise the `git bisect run` command won't work properly. Either
change the permission of you bash script or use something like `git bisect run bash bisect-test.sh`.

You can find more information in the `man` pages (`man git bisect`) but here is a summary of the
useful commands:

1. `git checkout main` - make sure you are on the most up-to-date commit
1. `git bisect start` - start git bisect
1. `git bisect bad` - mark the current commit as bad (because it has the memory error)
1. `git bisect good acb48eb27a8` - mark first commit as good (because it handles large inputs
   correctly)
1. `git bisect run bisect-test.sh` - create your own script to test the exit code and return 0 for
   pass and non-zero for a failure.

<details><summary>example bisect script</summary>
<p>

```bash
#!/usr/bin/env bash

# remove old binary
rm -f a.out

# compile code
gfortran bisect.f90

# run program for N = 1000
./a.out 1000

# check if the exit status is 200 (will return 0 if true, 1 if false)
(( $? == 200 ))
```

</p>
</details> 

## Summary

`git bisect run` will leave you at the oldest bad commit i.e., the first commit at which the code
fails (according to your test script - `bisect-test.sh`). You can then do a `git diff HEAD~1` to
compare with the commit before the bug was introduced. This massively reduces the amount of code you
need to search through to identify the bug. **Note** that `git bisect` doesn't actually find the bug
for you, it find the first commit where it was introduced. This is still extremely helpful and if
you follow good software engineering practices (commit early and often) then your commits will be
small and there will be minimal changes to compare.
