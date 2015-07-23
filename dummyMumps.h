type dummyMumps
  sequence
  integer::nc
  integer::nr
  !REAL*8, POINTER :: diag(:),A(:,:)
  REAL*8:: diag(3),A(3,3)
  INTEGER::ierr
end type dummyMumps