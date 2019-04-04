#' Fishpals ggplot2 themes
#'
#'@description lightweight ggplot2 themes for Cramer Fish Sciences and fish lovers alike
#'
#'\describe{
#'\item{theme_report}{has gridlines}
#'\item{theme_pres}{intended for use in presentations. Larger base_font}
#'\item{theme_pub}{good template for publications}
#'}
#'@export
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
theme_report <- function () {

  theme_minimal(base_size=12, base_family="Helvetica") %+replace%
    theme(
      panel.background  = element_blank(),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      panel.grid.major = element_line("grey75", size = rel(0.5)),
      panel.grid.minor = element_line("grey75",
        size = rel(0.15)),
        axis.line = element_line(size = 0.5),

      complete = TRUE
    )
}

#' @rdname theme_report
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

#' @rdname theme_report
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
