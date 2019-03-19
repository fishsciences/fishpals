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
#'ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#'    geom_point(size = 4) +
#'    scale_color_cfs("genidaqs") +
#'     theme_report()
#'
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
#'     geom_point(size = 4, alpha = .6) +
#'     scale_color_cfs(discrete = FALSE, palette = "genidaqs") +
#'   theme_pub()

theme_report <- function () {

  theme_minimal(base_size=12, base_family="Avenir") %+replace%
    theme(
      panel.background  = element_blank(),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      panel.grid.major = element_line("grey75", size = rel(0.5)),
      panel.grid.minor = element_line("grey75",
        size = rel(0.15)),

      complete = TRUE
    )
}

theme_pres <- function () {

  theme_minimal(base_size=14, base_family="Avenir") %+replace%
    theme(
      panel.background  = element_blank(),
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      panel.grid.major = element_line("grey75", size = rel(0.5)),
      panel.grid.minor = element_line("grey75",
        size = rel(0.15)),

      complete = TRUE
    )
}

theme_pub <- function () {

  theme_minimal(base_size=10.5, base_family="Avenir") %+replace%
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