\name{\%>\%}
\alias{\%>\%}
\title{Pipe an object forward as the first argument to a function}
\usage{
. \%>\% f
}
\arguments{
  \item{.}{The object to be piped as the first argument}

  \item{f}{The expression to evaluate with the piped object
  as the first argument.}
}
\description{
The \code{\%>\%} operator pipes the left-hand side foward
and evaluates the call expression on the right-hand side
with the left-hand side object as the first argument.
}
\examples{
\dontrun{
rnorm(100) \%>\% plot

rnorm(100) \%>\% plot(col="red")

rnorm(1000) \%>\% sample(size=100,replace=F) \%>\% hist
}
}

