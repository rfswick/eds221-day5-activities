#' Storm Runoff Prediction Function
#'
#' @param IA A number that indicates the fraction of the watershed that is considered impervious. It is unitless.
#' @param A A number that indicates the watershed area in acres that you are making the runoff prediction for.
#'
#' @return A number that indicates the predicted storm runoff amount in cubic feet.
#' @export
#'
#' @examples
#' predict_runoff(3, 5000)
predict_runoff <- function(IA, A) {
  Rv = 0.05 + 0.9 * IA
  V = 3630 * Rv * A
  return(V)
}
