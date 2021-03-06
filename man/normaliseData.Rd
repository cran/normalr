% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normaliseData.R
\name{normaliseData}
\alias{normaliseData}
\title{Apply normalisation on a data frame using specific Lambda value}
\usage{
normaliseData(dat, lambdas)
}
\arguments{
\item{dat}{a data frame containing the variables.}

\item{lambdas}{a numeric vector from the \link[MASS]{boxcox} function}
}
\value{
a data frame
}
\description{
Apply normalisation on a data frame using specific Lambda value
}
\examples{
\dontrun{normaliseData(mtcars, getLambda(mtcars, parallel = FALSE))}
normaliseData(mtcars, getLambda(mtcars, parallel = FALSE))
}
