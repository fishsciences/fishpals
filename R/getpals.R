#' Function prints the names of all the available palettes in fishpals
#'
#' @md
#' @return The names of the fishpals palettes
#'
#' @export
#' @examples
#' getpals()

getpals <- function() {

  sort(names(fishpals:::fishpals_pals))
}
