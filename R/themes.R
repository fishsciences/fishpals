#' Fishpals ggplot2 themes
#'
#'@description lightweight ggplot2 themes for Cramer Fish Sciences and fish lovers alike
#'
#'\describe{
#'\item{theme_foundation}{Code modified from [jrnold's theme_foundation](https://github.com/jrnold/ggthemes/blob/master/R/theme-foundation.R); designed to be a foundation from which the other themes are built, and not meant to be used directly.}
#'\item{theme_report}{has gridlines}
#'\item{theme_pres}{intended for use in presentations. Dark theme, larger base_font}
#'\item{theme_pub}{good template for publications}
#'}
#'
#'@export
#'@importFrom ggplot2 theme_grey
#'@examples
#' library(ggplot2)
#'
#' extrafont::loadfonts(quiet=TRUE)
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#'   geom_point(size = 4) +
#'   scale_color_fishpals("genidaqs") +
#'   theme_report()
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
#'  geom_point(size = 4, alpha = .6) +
#'  scale_color_fishpals(discrete = FALSE, palette = "genidaqs") +
#'  theme_pub()
#'
theme_foundationfp <- function(base_size = 11, base_family = "Geneva") {
  thm <- theme_grey(base_size = base_size, base_family = base_family)
  for (i in names(thm)) {
    if ("colour" %in% names(thm[[i]])) {
      thm[[i]]["colour"] <- list(NULL)
    }
    if ("fill" %in% names(thm[[i]])) {
      thm[[i]]["fill"] <- list(NULL)
    }
  }
  thm + theme(line = element_line(colour = "black"),
              rect = element_rect(fill = "transparent", colour = NA),
              text = element_text(colour = "black"),
              panel.background = element_rect(color = NA),
              legend.background = element_rect(colour = NA),
              )
}

#' @export
#'
theme_report <- function(border = TRUE) {

  ret <- theme_foundationfp() %+replace%
    theme(
      panel.border = element_rect(colour = "gray25", size = rel(1.20)),
      plot.margin = margin(7.5, 7.5, 7.5, 7.5),
      legend.background = element_rect(fill = "transparent",
                                       colour = NA),
      legend.key = element_rect(fill = "transparent",
                                colour = NA),
      panel.grid.major = element_line("grey75",
                                      size = rel(0.4)),
      panel.grid.minor = element_line("grey75",
                                      size = rel(0.15)),
      panel.spacing.x = unit(5, "lines"),
      strip.text = element_text(size = 10,
                                face = "bold",
                                margin = margin(t = 7.5, r = 0, b = 5.5, l = 0)),
      strip.background = element_rect(fill = "gray95",
                                      color = "transparent",
                                      size = rel(0.75)),
      axis.text = element_text(size = 13),
      axis.title = element_text(size = 14),

      complete = TRUE )

  if(border == FALSE) {
    ret <- ret + theme(panel.border = element_rect(colour = NA),
                       axis.ticks = element_blank())
  }
  ret
}

#' @rdname theme_pres
#' @export
theme_pres <- function () {

  theme_minimal(base_size=14, base_family="Helvetica") %+replace%
    theme(
      panel.background  = element_blank(),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      axis.title.y = element_text(vjust = 1.05, angle = 90),
      axis.title.x = element_text(hjust = 0.975),
      plot.margin = unit(c(0.75, 0.75, 0.5, 0.75), "cm"),
     panel.grid.major = element_line("grey55", size = rel(0.25)),
      panel.grid.minor = element_line("grey60",size = rel(0.05)),
      complete = TRUE
    )
}

#' @rdname theme_pub
#' @export
theme_pub <- function () {

  theme_minimal(base_size=10.5, base_family="Helvetica") %+replace%
    theme(
      panel.background  = element_blank(),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank() ,
      axis.line = element_line(size = rel(0.7)),

      complete = TRUE
    )
}
