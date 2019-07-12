#' Fishpals scale functions for use in ggplot2 plots
#'
#' @md
#' @param palette Choose from `fishpals_pals` list
#' @param discrete if FALSE, continuous color palette will be generated
#' @param reverse if TRUE, the direction of the colors is reversed
#' @param ... arguments passed on to `ggplot2::discrete_scale()`
#'
#' @export
#' @examples
#' library(ggplot2)
#' extrafont::loadfonts(quiet=TRUE)
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#'  geom_point(size = 4) +
#'  scale_color_fishpals("genidaqs")

scale_color_fishpals <- function(palette = "CFS", discrete = TRUE, reverse = FALSE, ...) {

  pal <- fishpals(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("color", paste0("fishpals_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' @rdname scale_color_fishpals
#' @export
scale_colour_fishpals <- scale_color_fishpals

#' @rdname scale_color_fishpals
#' @export
#' @examples
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#' geom_bar(stat = "identity") +
#' scale_fill_fishpals()
scale_fill_fishpals <- function(palette = "CFS", discrete = TRUE, reverse = FALSE, ...) {

  pal <- fishpals(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("fill", paste0("fishpals_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}

