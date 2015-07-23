immutable mdiag
  d1::Float64
  d2::Float64
  d3::Float64
  mdiag(d::Array{Float64,1}) = new(d[1],d[2],d[3])
end

immutable mA
  m11::Float64
  m21::Float64
  m31::Float64
  m12::Float64
  m22::Float64
  m32::Float64
  m13::Float64
  m23::Float64
  m33::Float64
  mA(A::Array{Float64,2}) = new(A[1,1],A[2,1],A[3,1],A[1,2],A[2,2],
      A[3,2],A[1,3],A[2,3],A[3,3])
end

type mumps_par
  nc::Int64
  nr::Int64
  diag::mdiag
  A::mA
  ierr::Int64
end

A = randn(3,3)
ierr = 0
d = zeros(3)
mp = mumps_par(3,3,mdiag(d),mA(A),ierr)

ccall((:getdiag_,"libfakemumps"),Void,(Ref{mumps_par},),mp)