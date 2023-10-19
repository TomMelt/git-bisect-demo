#!/usr/bin/env sh

gfortran bisect.f90

# we only ever run simulations with N < 100 (MAX_SIZE)

# test 10
# (this is supposed to pass)
./a.out 10
if [[ $? != 0 ]]; then
    exit 1;
fi

# test 100
# (this is supposed to pass)
./a.out 100
if [[ $? != 0 ]]; then
    exit 1;
fi

# test 1000
# (this is supposed to fail and return error code 200)
./a.out 1000
if [[ $? != 200 ]]; then
    exit 1;
fi

# test missing command line argument
# (this is supposed to fail and return error code 100)
./a.out
if [[ $? != 100 ]]; then
    exit 1;
fi
