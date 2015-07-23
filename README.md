Test example for calling Fortran routines that take derived type input arguments from Julia.

Build the library with gfortran using the command:

gfortran -shared -O2 -fdefault-integer-8 -fPIC -o libfakemumps.so fakeMumps.f90 

then make sure the library can be found at runtime (e.g. by updating LD_LIBRARY_PATH or by running ldconfig).

Should then be able to run fakeMumps.jl successfully.