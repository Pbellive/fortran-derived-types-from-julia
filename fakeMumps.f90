subroutine getDiag(mumps_par)
  implicit none
  include 'dummyMumps.h'
  type(dummyMumps),intent(inout) :: mumps_par
  integer::i,nc,nr
  nc = mumps_par%nc
  nr = mumps_par%nr
  if (nc /= nr) then
    mumps_par%ierr = -1
  else 
    mumps_par%ierr = 0
    do i=1,nr
      mumps_par%diag(i) = mumps_par%A(i,i)
    end do
  end if
end subroutine getDiag

