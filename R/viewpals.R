#' Quick preview of the core colors in each fish palette from `fishpals()`.
#'
#' @md
#' @param name The unquoted name of the color palette you want to use from the fishpals_colors list.
#'        Options are `juvsteel` for juvenile steelhead, `adultsteel` for adult
#'        steelhead, and `adultchinook` for adult Chinook salmon.
#'
#' @export
#' @examples
#' viewpals(adultsteel)
#' viewpals(juvsteel)
#' viewpals(adultchinook)

viewpals <- function(palette) { # where palette is not in quotes
  par(lty=0)
  temp <- c(5,7,6,4,8)
  barplot(temp, col = palette, fg = "black", axes = FALSE)
}



