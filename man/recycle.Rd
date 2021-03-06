% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helper_functions.R
\name{recycle}
\alias{recycle}
\title{Expands data to a given length through recycling.}
\usage{
recycle(x, .N = NULL)
}
\arguments{
\item{x}{Data to recycle into length \code{N}}

\item{.N}{the length to recycle the data to, typically provided implicitly by
a or fabricate call wrapped around the function call.}
}
\value{
A vector of data padded to length \code{N}
}
\description{
This function is a helper function designed call \code{rep_len} to expand the
length of a data vector, but which can dynamically retrieve N from the
surrounding level call for use in fabricatr.
}
\examples{

fabricate(
  N = 15,
  month = recycle(month.abb)
)
}
