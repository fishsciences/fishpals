#' Generate color palettes from different fish species.
#'
#' @param name The name of the color palette you want to use from the fishpals_colors list.  Options are `"juvsteel"` for juvenile steelhead, `"adultsteel"` for adult steelhead, and `"adultchinook"` for adult Chinook salmon.
#' @param n The number of colors needed
#' @param type Either discrete or continuous.
#'
#' @examples
#' library(ggplot2)
#' ggplot(iris) +
#' geom_point(aes(x = Sepal.Width, y = Petal.Width, color = factor(Petal.Width)), size = 3) +
#' scale_color_manual(values = fishpal("adultchinook", 22, type = "continuous")) + theme_void()
#'
fishpal <- function (name = c("juvsteel", "adultsteel", "adultchinook"), n, type = c("discrete", "continuous")) {

  type <- match.arg(type)
  pal <- fish_pals[[name]]
  if (is.null(pal))
    stop("Palette not found.")
  if (missing(n)) {
    n <- length(pal)
  }
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }
  out <- switch(type, continuous = colorRampPalette(pal)(n),
                discrete = pal[1:n])
  structure(out, class = "palette", name = name)
}

