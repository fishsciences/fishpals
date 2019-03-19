#' Generate color palettes from different fish species.
#'
#' @md
#' @param name default is "CFS"; full list is available by calling fishpals::fishpals_pals
#' @param revers logical; if TRUE, order of colors reverses
#'
#' @export
#' @examples
#' fishpals("genidaqs")
#' fishpals("CFS")(10)
#'
fishpals <- function(palette = "CFS", reverse = FALSE, ...) {
  pal <- fishpals_pals[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}


