
#' Apply normalisation on a data frame using specific Lambda value
#'
#' @param dat a data frame containing the variables.
#' @param lambdas a numeric vector from the \link[MASS]{boxcox} function
#'
#' @return a data frame
#' @export
#'
#' @examples
#' \dontrun{normaliseData(mtcars, getLambda(mtcars, parallel = FALSE))}
#' normaliseData(mtcars, getLambda(mtcars, parallel = FALSE))
normaliseData <-
  function(dat, lambdas){
    stopifnot(is.data.frame(dat) | is.numeric(lambdas))

    as.data.frame(apply(rbind(lambdas, dat), 2, function(x) normalise(x[-1], x[1])))
  }
