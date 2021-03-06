\name{openblas.set.num.threads}
\alias{openblas.set.num.threads}
\title{Wrapper to set the number of OpenBlas threads from within an R session.}
\usage{
  openblas.set.num.threads(ipt)
}
\arguments{
  \item{ipt}{Integral desired number of threads.}
}
\value{
  Returns \code{ipt}.
}
\description{
  Wrapper to set the number of OpenBlas threads from within an R session, via openblas_set_num_threads(), for implicit parallelization.
  Alters the number of threads employed by OpenBlas for that session and child sessions. Also, if you find you cannot set all threads using "export OPENBLAS_NUM_THREADS=x" from command line, this function might help.
}
\source{
  See Xianyi et. al., OpenBlas site: \code{ \link{http://xianyi.github.com/OpenBLAS/ } }
}
\examples{
## Example 1: changing threads
matr <- matrix(1:50000000,50000,1000)
openblas.set.num.threads(1)
x <- crossprod(matr,matr)
openblas.set.num.threads(2)
y <- crossprod(matr,matr)
}
\author{
  Simon Fuller, C. Beleites
}
