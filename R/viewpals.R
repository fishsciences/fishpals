#' Quick preview of the core colors in each fish palette from `fishpals()`.
#'
#' @md
#' @param palette The bare/unquoted name or string of the color palette you want
#'        to use from the fishpals_colors list.
#'        Options are `juvsteel` for juvenile steelhead, `adultsteel` for adult
#'        steelhead, and `adultchinook` for adult Chinook salmon.
#'
#' @export
#' @examples
#' viewpals(adultsteel)
#' viewpals("adultsteel")
#' viewpals(juvsteel)
#' viewpals(adultchinook)
viewpals <- function(palette) { # where palette is not in quotes

  if (!missing(palette)) {
    palette <- substitute(palette)
    res <- try(eval(palette, parent.frame()), silent = TRUE)
    if (!inherits(res, "try-error") && inherits(res, "character")) {
      if (length(res) != 1) {
        palette <- as.character(substitute(palette))
      } else {
        palette <- res
      }
    } else if (inherits(palette, "name")) { palette <- as.character(palette) }
  } else {
    palette <- as.character(substitute(palette))
  }

  par(lty=0)
  temp <- c(5,7,6,4,8)
  barplot(temp, col = fishpals(palette), fg = "black", axes = FALSE)

}



