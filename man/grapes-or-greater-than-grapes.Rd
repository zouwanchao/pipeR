\name{\%|>\%}
\alias{\%|>\%}
\title{Pipe an object by lambda expression}
\usage{
. \%|>\% f
}
\arguments{
  \item{.}{The object to be piped}

  \item{f}{The lambda expression which should always be in
  the form like \(x -> g\(x\)\)}
}
\description{
The operator \code{\%|>\%} pipes the left-hand side to the
symbol defined by the lambda expression on the right-hand
side and evaluates that expression.
}
\examples{
\dontrun{
rnorm(100) \%|>\% (x -> plot(x))

rnorm(100) \%|>\% (x -> plot(x,col="red"))

rnorm(1000) \%|>\% (pop -> sample(pop,length(pop)*0.2,FALSE))

rnorm(1000) \%|>\%
  (pop -> sample(pop,length(pop)*0.2,FALSE)) \%|>\%
  (s -> plot(s,main=sprintf("length: sample: \%d",length(s))))
}
}

